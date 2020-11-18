package com.nms.config;


import com.nms.entities.Privilege;
import com.nms.entities.Role;
import com.nms.entities.Users;
import com.nms.repositories.PrivilegeRepository;
import com.nms.repositories.RoleRepository;
import com.nms.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Component
public class InitialDataLoader implements ApplicationListener<ContextRefreshedEvent> {

    boolean alreadySetup = false;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PrivilegeRepository privilegeRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    UsersRepository usersRepository;

    @Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {

        if (alreadySetup)
            return;
        Privilege createPrivilege = createPrivilegeIfNotFound("WRITE_PRIVILEGE");
        Privilege readPrivilege = createPrivilegeIfNotFound("READ_PRIVILEGE");
        Privilege updatePrivilege = createPrivilegeIfNotFound("EDIT_PRIVILEGE");
        Privilege deletePrivilege = createPrivilegeIfNotFound("DELETE_PRIVILEGE");

        List<Privilege> superAdminPrivileges = new ArrayList<>();
        superAdminPrivileges.add(createPrivilege);
        superAdminPrivileges.add(readPrivilege);
        superAdminPrivileges.add(updatePrivilege);
        superAdminPrivileges.add(deletePrivilege);


        List<Privilege> adminPrivileges = new ArrayList<>();
        adminPrivileges.add(createPrivilege);
        adminPrivileges.add(readPrivilege);


        List<Privilege> clientPrivileges = new ArrayList<>();
        clientPrivileges.add(readPrivilege);

        Role role_super_admin = createRoleIfNotFound("ROLE_SUPER_ADMIN", superAdminPrivileges);
        Role role_admin = createRoleIfNotFound("ROLE_ADMIN", adminPrivileges);
        Role role_client = createRoleIfNotFound("ROLE_CLIENT", clientPrivileges);


        Users superUser = new Users();
        superUser.setEmail("super_admin@test.com");
        superUser.setUserId(UUID.randomUUID().toString());
        superUser.setEncryptedPassword(bCryptPasswordEncoder.encode("superAdmin"));
        superUser.setRole(role_super_admin);
        superUser.setEnabled(true);
        superUser.setActive(true);
        usersRepository.save(superUser);

        Users admin = new Users();
        admin.setEmail("admin@test.com");
        admin.setUserId(UUID.randomUUID().toString());
        admin.setEncryptedPassword(bCryptPasswordEncoder.encode("admin"));
        admin.setRole(role_admin);
        admin.setEnabled(true);
        admin.setActive(true);
        usersRepository.save(admin);

        Users client = new Users();
        client.setEmail("client@test.com");
        client.setUserId(UUID.randomUUID().toString());
        client.setEncryptedPassword(bCryptPasswordEncoder.encode("client"));
        client.setRole(role_client);
        client.setEnabled(true);
        client.setActive(true);
        usersRepository.save(client);

        alreadySetup = true;
    }

    @Transactional
    private Privilege createPrivilegeIfNotFound(String name) {

        Privilege privilege = privilegeRepository.findByName(name);
        if (privilege == null) {
            privilege = new Privilege(name);
            privilegeRepository.save(privilege);
        }
        return privilege;
    }

    @Transactional
    private Role createRoleIfNotFound(String name, List<Privilege> privileges) {

        Role role = roleRepository.findByName(name);
        if (role == null) {
            role = new Role(name);
            role.setPrivileges(privileges);
            roleRepository.save(role);
        }
        return role;
    }
}
