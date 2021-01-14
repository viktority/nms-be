package com.nms.services;

import com.nms.entities.Privilege;
import com.nms.entities.User;
import com.nms.models.Role;
import com.nms.models.RoleDto;
import com.nms.repositories.PrivilegeRepository;
import com.nms.repositories.RoleRepository;
import com.nms.repositories.UsersRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service("rolesService")
public class RolesService {

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    PrivilegeRepository privilegeRepository;

    @Autowired
    UsersRepository usersRepository;

    @Autowired
    ModelMapper mapper;

    public Role addRole(RoleDto body) {
        try {
            String name = body.getName();
            List<Integer> privilegeIds = body.getPrivilegeIds();
            List<Privilege> collect = privilegeIds.stream().map(this::apply).collect(Collectors.toList());
            com.nms.entities.Role role = new com.nms.entities.Role(name, collect);

            com.nms.entities.Role save = roleRepository.save(role);
            return save != null ? mapper.map(save, Role.class) : null;

        } catch (Exception ex) {
            return null;
        }
    }

    public boolean deleteRole(Integer roleId) {
        Optional<com.nms.entities.Role> byId = roleRepository.findById(roleId.longValue());
        if (byId.isPresent()) {
            com.nms.entities.Role role = byId.get();

            List<User> users = usersRepository.findByRoleId(role.getId());
            users.forEach(user -> {
                user.setRole(null);
                usersRepository.save(user);
            });
            try {
                roleRepository.delete(role);
                return true;
            } catch (Exception ex) {
                return false;
            }
        }
        return false;
    }

    public Role getRoleByName(String roleName) {
        com.nms.entities.Role byName = roleRepository.findByName(roleName);
        if (byName == null) return null;
        mapper.getConfiguration().setAmbiguityIgnored(true);
        return mapper.map(byName, Role.class);
    }

    public List<Role> getAllRoles() {
        List<Role> roles = new ArrayList<>();
        mapper.getConfiguration().setAmbiguityIgnored(true);
        Iterable<com.nms.entities.Role> all = roleRepository.findAll();
        all.forEach(r -> {
            Role map = mapper.map(r, Role.class);
            roles.add(map);
        });
        return roles;
    }

    public Role updateRoleByRoleId(Integer roleId, RoleDto body) {
        Optional<com.nms.entities.Role> byId = roleRepository.findById(roleId.longValue());
        if (!byId.isPresent()) return null;
        com.nms.entities.Role role = byId.get();

        String name = body.getName();
        List<Integer> privilegeIds = body.getPrivilegeIds();
        List<Privilege> collect = privilegeIds.stream().map(this::apply).collect(Collectors.toList());
        role.setName(name);
        role.setPrivileges(collect);
        com.nms.entities.Role save = roleRepository.save(role);
        return mapper.map(role, Role.class);
    }

    private Privilege apply(Integer id) {
        Optional<Privilege> byId = privilegeRepository.findById(id.longValue());
        if (!byId.isPresent()) {
        }
        return byId.get();
    }
}
