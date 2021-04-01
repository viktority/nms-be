package com.nms.services;


import com.nms.entities.Organization;
import com.nms.entities.Privilege;
import com.nms.entities.Role;
import com.nms.entities.User;
import com.nms.models.ncc.NccResponseModel;
import com.nms.repositories.OrganizationRepository;
import com.nms.repositories.RoleRepository;
import com.nms.repositories.UsersRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.toList;


@Service
public class UsersService implements UserDetailsService {

    @Autowired
    UsersRepository usersRepository;
    @Autowired
    OrganizationRepository organizationRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    RoleRepository roleRepository;


    public boolean emailExist(String email) {
        User user = usersRepository.findByAppUserEmail(email);
        return user != null;
    }

    public User findByEmail(String email) {
        return usersRepository.findByAppUserEmail(email);
    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        String password = bCryptPasswordEncoder.encode("password");
        String user = "nms";
        //return new org.springframework.security.core.userdetails.User(username, password, new ArrayList<>());
        User userEntity = usersRepository.findByAppUserEmail(username);

        if (userEntity == null) {
            throw new UsernameNotFoundException(username);
        }

        return new org.springframework.security.core.userdetails.User(username, password, userEntity.isActive(), true, true,
                true, getAuthorities(userEntity.getRole()));
    }

    public User getUserByUserId(String userId) {

        User userEntity = usersRepository.findByAppUserId(userId);
        if (userEntity == null)
            return null;

        return userEntity;
    }

    public List<User> getUsers() {
        return (List<User>) usersRepository.findAll();
    }

    public Collection<? extends GrantedAuthority> getAuthorities(Set<Role> roles) {

        return getGrantedAuthorities(getPrivileges(roles));
    }

    private Set<String> getPrivileges(Set<Role> roles) {
        Set<String> collect = roles.stream().flatMap(r -> r.getPrivileges().stream().map(Privilege::getName)).collect(Collectors.toSet());
        roles.forEach(r -> collect.add(r.getName()));

//        List<String> priveleges = roles.getPrivileges().stream().map(Privilege::getName).collect(Collectors.toList());
//        priveleges.add(roles.getName());
        return collect;
        //return roles.getPrivileges().stream().map(Privilege::getName).collect(Collectors.toList());
    }

    private List<GrantedAuthority> getGrantedAuthorities(Set<String> privileges) {
        return privileges.stream().map(SimpleGrantedAuthority::new)
                .collect(toList());
    }

    public User insertUser(NccResponseModel request) {
        ModelMapper modelMapper = new ModelMapper();
        User user = null;
        boolean exist = emailExist(request.getAppUserEmail());
        if (exist) {
            user = findByEmail(request.getAppUserEmail());
        } else {
            //create new user with information
            Organization organization = null;
            int num = Integer.parseInt(generateRandomNumber(1));
            String string = generateRandomNumber(num);
            String rcNumber = request.getOrganizationId().getOrganizationId() + string;
            Optional<Organization> byRcNumber = organizationRepository.findByRcNumber(rcNumber);
            if (byRcNumber.isPresent()) {
                organization = byRcNumber.get();
            } else {
                Organization map = modelMapper.map(request.getOrganizationId(), Organization.class);
                map.setOrganizationId(UUID.randomUUID().toString());
                organization = organizationRepository.save(map);
            }

            User map = modelMapper.map(request, User.class);
            map.setOrganization(organization);

            Role role_user = roleRepository.findByName("ROLE_CLIENT");
            Set<Role> users = new HashSet<>();
            users.add(role_user);
            map.setRole(users);
            user = usersRepository.save(map);
        }
        return user;
    }

    public User AssignRoleToUser(String userId, Long roleId) {
        User byAppUserId = usersRepository.findByAppUserId(userId);
        Optional<Role> byId = roleRepository.findById(roleId);
        if (byAppUserId != null) {
            if (byId.isPresent()) {
                Role role1 = byId.get();
                Set<Role> role = byAppUserId.getRole();
                boolean b = role.stream().anyMatch(role2 -> role2.getName().equals(role1.getName()));
                if (b) {
                    return byAppUserId;
                }
                role.add(role1);
                byAppUserId.setRole(role);
                return usersRepository.save(byAppUserId);
            }
        }
        return null;
    }

    private String generateRandomNumber(int num) {
        String format = "%0" + num + "d";
        Random random = new Random();
        int number = random.nextInt(999999);
        return String.format(format, number);
    }
}
