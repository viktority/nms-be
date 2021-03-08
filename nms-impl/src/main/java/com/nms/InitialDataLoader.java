package com.nms;


import com.nms.entities.*;
import com.nms.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.transaction.Transactional;
import java.util.*;

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

      //  Role role_super_admin = createRoleIfNotFound("ROLE_SUPER_ADMIN", superAdminPrivileges);
        Role role_admin = createRoleIfNotFound("ROLE_ADMIN", superAdminPrivileges);
        Role role_client = createRoleIfNotFound("ROLE_CLIENT", clientPrivileges);


//        User superUser = new User();
//        superUser.setAppUserEmail("super_admin@test.com");
//        superUser.setAppUserId(UUID.randomUUID().toString());
//        Set r1 = new HashSet();
//        r1.add(role_super_admin);
//        superUser.setRole(r1);
//
//        superUser.setActive(true);
//        usersRepository.save(superUser);

        User admin = new User();
        admin.setAppUserEmail("admin@test.com");
        admin.setAppUserId(UUID.randomUUID().toString());
        Set r2 = new HashSet();
        r2.add(role_admin);
        admin.setRole(r2);
        admin.setActive(true);
        usersRepository.save(admin);

        User client = new User();
        client.setAppUserEmail("client@test.com");
        client.setAppUserId(UUID.randomUUID().toString());
        Set r3 = new HashSet();
        r3.add(role_client);
        client.setRole(r3);
        client.setActive(true);
        usersRepository.save(client);

        ApprovalStages stage = new ApprovalStages("APPROVAL_STAGE_ONE");
        ApprovalStages stage1 = new ApprovalStages("APPROVAL_STAGE_TWO");
        approvalStageRepository.save(stage);
        approvalStageRepository.save(stage1);

        Type shortCode = new Type("ShortCodes", 3, 5);
        Type nationalNumber = new Type("NationalNumber", 10, 10);
        Type iscp = new Type("ISCP", 5, 5);

        Type shortcode = typeRepository.save(shortCode);
        Type national = typeRepository.save(nationalNumber);
        Type isc = typeRepository.save(iscp);

        SpecificType sc1 = new SpecificType("3", shortcode, 3, 3);
        SpecificType sc2 = new SpecificType("4", shortcode, 4, 4);
        SpecificType sc3 = new SpecificType("5", shortcode, 5, 5);
        SpecificType nn1 = new SpecificType("Land", national, 8, 8);
        SpecificType nn2 = new SpecificType("GSM", national, 11, 11);
        SpecificType fiveDigitsISCP = new SpecificType("ISCP", isc, 5, 5);


        specificTypeRepository.save(sc1);
        specificTypeRepository.save(sc2);
        specificTypeRepository.save(sc3);
        specificTypeRepository.save(fiveDigitsISCP);
        specificTypeRepository.save(nn1);
        specificTypeRepository.save(nn2);

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
