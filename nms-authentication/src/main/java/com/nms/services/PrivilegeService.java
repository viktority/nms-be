package com.nms.services;

import com.nms.repositories.PrivilegeRepository;
import com.nms.rest.server.models.Privilege;
import com.nms.rest.server.models.PrivilegeDto;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service("privilegeService")
public class PrivilegeService {

    @Autowired
    PrivilegeRepository privilegeRepository;

    @Autowired
    ModelMapper mapper;


    @Autowired
    AuthenticatedUser user;


    public Privilege addPrivilege(PrivilegeDto body) {
        try {
            com.nms.entities.Privilege map = mapper.map(body, com.nms.entities.Privilege.class);
            com.nms.entities.Privilege save = privilegeRepository.save(map);
            save.setName(body.getName().toUpperCase());
            save.setCreatedBy(user.getUser());
            save.setUpdatedBy(user.getUser());
            return save != null ? mapper.map(save, Privilege.class) : null;
        } catch (Exception ex) {
            return null;
        }
    }

    public boolean deletePrivilegeById(Long privilegeId) {

        try {
            privilegeRepository.deleteById(privilegeId);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public Privilege getPrivilegeByName(String privilegeName) {
        com.nms.entities.Privilege byName = privilegeRepository.findByName(privilegeName);
        if (byName == null) return null;
        mapper.getConfiguration().setAmbiguityIgnored(true);
        return mapper.map(byName, Privilege.class);
    }

    public List<Privilege> getPrivileges() {
        List<Privilege> privileges = new ArrayList<>();
        mapper.getConfiguration().setAmbiguityIgnored(true);
        Iterable<com.nms.entities.Privilege> all = privilegeRepository.findAll();
        all.forEach(r -> {
            Privilege map = mapper.map(r, Privilege.class);
            privileges.add(map);
        });
        return privileges;
    }

    public Privilege updatePrivilegeById(Long privilegeId, PrivilegeDto body) {
        Optional<com.nms.entities.Privilege> byId = privilegeRepository.findById(privilegeId);
        if (!byId.isPresent()) return null;
        com.nms.entities.Privilege privilege = byId.get();
        String name = body.getName();
        privilege.setName(name);
        privilege.setUpdatedBy(user.getUser());
        com.nms.entities.Privilege save = privilegeRepository.save(privilege);
        return mapper.map(save, Privilege.class);
    }
}
