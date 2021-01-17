package com.nms.services;


import com.nms.entities.Department;
import com.nms.entities.Privilege;
import com.nms.entities.Role;
import com.nms.entities.User;
import com.nms.models.ResponseModel;
import com.nms.models.UserDto;
import com.nms.repositories.DepartmentRepository;
import com.nms.repositories.RoleRepository;
import com.nms.repositories.UsersRepository;
import com.nms.utils.Utils;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.toList;


@Service
public class UsersService implements UserDetailsService {

    UsersRepository usersRepository;
    BCryptPasswordEncoder bCryptPasswordEncoder;
    Environment environment;
    RoleRepository roleRepository;
    Utils util;
    DepartmentRepository departmentRepository;

    @Autowired
    public UsersService(UsersRepository usersRepository, BCryptPasswordEncoder bCryptPasswordEncoder,
                        Environment environment, RoleRepository roleRepository, Utils util, DepartmentRepository departmentRepository) {
        this.usersRepository = usersRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.environment = environment;
        this.roleRepository = roleRepository;
        this.util = util;
        this.departmentRepository = departmentRepository;
    }


    public User createUser(UserDto userDetails) {
        // TODO Auto-generated method stub

        if (emailExist(userDetails.getEmail())) {
            throw new EntityExistsException("There is an account with that email adress: " + userDetails.getEmail());
        }
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        User userEntity = modelMapper.map(userDetails, User.class);
        userEntity.setUserId(UUID.randomUUID().toString());
        userEntity.setEncryptedPassword(bCryptPasswordEncoder.encode(userDetails.getPassword()));
        userEntity.setRole(roleRepository.findByName("ROLE_ADMIN"));
        Optional<Department> byId = departmentRepository.findById(userDetails.getDepartmentId());
        Department department = null;
        if (byId.isPresent()) {
            department = byId.get();
        }
        userEntity.setDepartment(department);
        userEntity.setTokenExpired(false);
        userEntity.setEnabled(true);
        Long expTime = Long.parseLong(environment.getProperty("email.verification.token.expiration_time"));
        userEntity.setToken(Utils.generateToken(userEntity.getUserId(), expTime));
        userEntity.setActive(false);
        return usersRepository.save(userEntity);

    }

    private boolean emailExist(String email) {
        User user = usersRepository.findByEmail(email);
        return user != null;
    }


    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User userEntity = usersRepository.findByEmail(username);

        if (userEntity == null)
            throw new UsernameNotFoundException(username);

        return new org.springframework.security.core.userdetails.User(userEntity.getEmail(), userEntity.getEncryptedPassword(), userEntity.isActive(), true, true,
                true, getAuthorities(userEntity.getRole()));
    }

    public User getUserDetailsByEmail(String email) {
        User userEntity = usersRepository.findByEmail(email);

        if (userEntity == null)
            throw new UsernameNotFoundException(email);

        return userEntity;
    }

    public User getUserByUserId(String userId) {

        User userEntity = usersRepository.findByUserId(userId);
        if (userEntity == null)
            return null;

        return userEntity;
    }


    public List<User> getUsers() {

        return (List<User>) usersRepository.findAll();
    }


    public Role getUserRole(String email) {

        User userEntity = usersRepository.findByEmail(email);
        if (userEntity == null)
            throw new UsernameNotFoundException("User not found");

        return userEntity.getRole();
    }


    public ResponseEntity<ResponseModel> activateProfile(String token) {
        User profile = usersRepository.findByToken(token);
        ResponseModel rm = new ResponseModel();
        rm.setStatusId("Account Activation");
        rm.setDescription("Account doesn't exist!");
        if (profile != null) {

            boolean hasTokenExpired = Utils.hasTokenExpired(token);
            if (!hasTokenExpired) {

                profile.setActive(true);
                profile.setToken(null);
                usersRepository.save(profile);
                rm.setStatusId("Activated");
                return ResponseEntity.status(HttpStatus.OK).body(rm);

            } else {
                Long expTime = Long.parseLong(environment.getProperty("email.verification.token.expiration_time"));
                String newToken = Utils.generateToken(profile.getUserId(), expTime);
                profile.setToken(newToken);
                usersRepository.save(profile);
                return activateProfile(newToken);
            }

        } else {
            return ResponseEntity.status(HttpStatus.NOT_ACCEPTABLE).body(rm);
        }
    }


    public Collection<? extends GrantedAuthority> getAuthorities(Role roles) {

        return getGrantedAuthorities(getPrivileges(roles));
    }

    private List<String> getPrivileges(Role roles) {
        return roles.getPrivileges().stream().map(Privilege::getName).collect(Collectors.toList());
    }

    private List<GrantedAuthority> getGrantedAuthorities(List<String> privileges) {
        return privileges.stream().map(SimpleGrantedAuthority::new)
                .collect(toList());
    }


}
