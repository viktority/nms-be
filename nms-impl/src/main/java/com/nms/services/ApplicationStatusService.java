package com.nms.services;


import com.nms.models.ApplicationStatus;
import com.nms.models.ApplicationStatusDto;
import com.nms.repositories.ApplicationStatusRepository;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ApplicationStatusService {
    @Autowired
    ApplicationStatusRepository applicationStatusRepository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public ApplicationStatus addApplicationStatus(ApplicationStatusDto body) {
        com.nms.entities.ApplicationStatus map = mapper.map(body, com.nms.entities.ApplicationStatus.class);
        map.setCreatedBy(user.getUser());
        map.setUpdatedBy(user.getUser());
        com.nms.entities.ApplicationStatus save = applicationStatusRepository.save(map);
        return (save != null) ? mapper.map(save, ApplicationStatus.class) : null;
    }

    public boolean deleteApplicationStatusById(Long applicationStatusId) {
        applicationStatusRepository.deleteById(applicationStatusId);
        return true;

    }

    public ApplicationStatus getApplicationStatusByName(String applicationStatusName) {
        com.nms.entities.ApplicationStatus byName = applicationStatusRepository.findByName(applicationStatusName);
        if (byName != null) {
            ApplicationStatus map = mapper.map(byName, ApplicationStatus.class);
            map.setCreatedBy(byName.getCreatedBy() == null ? null : byName.getCreatedBy().getUserId());
            map.setUpdatedBy(byName.getUpdatedBy() == null ? null : byName.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }

    public List<ApplicationStatus> getApplicationStatuses() {
        List<ApplicationStatus> list = new ArrayList<>();
        applicationStatusRepository.findAll().forEach(as -> {
            ApplicationStatus map = mapper.map(as, ApplicationStatus.class);
            map.setCreatedBy(as.getCreatedBy() == null ? null : as.getCreatedBy().getUserId());
            map.setUpdatedBy(as.getUpdatedBy() == null ? null : as.getUpdatedBy().getUserId());
            list.add(map);
        });
        return list;
    }

    public ApplicationStatus updateApplicationStatusById(Long applicationStatusId, ApplicationStatusDto body) {
        Optional<com.nms.entities.ApplicationStatus> byId = applicationStatusRepository.findById(applicationStatusId);
        if (byId.isPresent()) {
            com.nms.entities.ApplicationStatus applicationStatus = byId.get();
            applicationStatus.setName(body.getName());
            com.nms.entities.ApplicationStatus save = applicationStatusRepository.save(applicationStatus);

            ApplicationStatus map = mapper.map(save, ApplicationStatus.class);
            map.setCreatedBy(applicationStatus.getCreatedBy() == null ? null : applicationStatus.getCreatedBy().getUserId());
            map.setUpdatedBy(applicationStatus.getUpdatedBy() == null ? null : applicationStatus.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }
}
