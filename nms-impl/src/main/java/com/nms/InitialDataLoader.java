package com.nms;


import com.nms.entities.*;
import com.nms.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Configuration
public class InitialDataLoader implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PrivilegeRepository privilegeRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    UsersRepository usersRepository;

    @Autowired
    ApprovalStageRepository approvalStageRepository;

    @Autowired
    TypeRepository typeRepository;

    @Autowired
    SpecificTypeRepository specificTypeRepository;

    @Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {
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


        User superUser = new User();
        superUser.setEmail("super_admin@test.com");
        superUser.setUserId(UUID.randomUUID().toString());
        superUser.setEncryptedPassword(bCryptPasswordEncoder.encode("superAdmin"));
        superUser.setRole(role_super_admin);
        superUser.setEnabled(true);
        superUser.setActive(true);
        usersRepository.save(superUser);

        User admin = new User();
        admin.setEmail("admin@test.com");
        admin.setUserId(UUID.randomUUID().toString());
        admin.setEncryptedPassword(bCryptPasswordEncoder.encode("admin"));
        admin.setRole(role_admin);
        admin.setEnabled(true);
        admin.setActive(true);
        usersRepository.save(admin);

        User client = new User();
        client.setEmail("client@test.com");
        client.setUserId(UUID.randomUUID().toString());
        client.setEncryptedPassword(bCryptPasswordEncoder.encode("client"));
        client.setRole(role_client);
        client.setEnabled(true);
        client.setActive(true);
        usersRepository.save(client);

        ApprovalStages stage = new ApprovalStages("APPROVAL_STAGE_ONE");
        ApprovalStages stage1 = new ApprovalStages("APPROVAL_STAGE_TWO");
        approvalStageRepository.save(stage);
        approvalStageRepository.save(stage1);

        Type shortCode = new Type("ShortCodes");
        Type nationalNumber = new Type("NationalNumber");
        Type iscp = new Type("ISCP");

        Type save = typeRepository.save(shortCode);
        Type save1 = typeRepository.save(nationalNumber);
        Type save2 = typeRepository.save(iscp);

        SpecificType threeDigits = new SpecificType("ThreeDigits", save);
        SpecificType fourDigits = new SpecificType("FourDigits", save);
        SpecificType fiveDigits = new SpecificType("FiveDigits", save);

        specificTypeRepository.save(threeDigits);
        specificTypeRepository.save(fourDigits);
        specificTypeRepository.save(fiveDigits);
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
