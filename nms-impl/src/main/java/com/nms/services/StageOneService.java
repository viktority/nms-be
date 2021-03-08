package com.nms.services;


import com.nms.entities.License;
import com.nms.entities.User;
import com.nms.models.StageOne;
import com.nms.repositories.LicenseRepository;
import com.nms.repositories.StageOneRepository;
import com.nms.repositories.UsersRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StageOneService {

    @Autowired
    StageOneRepository repository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    UsersRepository usersRepository;

    @Autowired
    LicenseRepository licenseRepository;

    public StageOne updateStageOneById(Long stageOneId, StageOne body) {
        Optional<com.nms.entities.StageOne> byId = repository.findById(stageOneId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageOne st3 = byId.get();
            com.nms.entities.StageOne map = mapper.map(body, com.nms.entities.StageOne.class);
            map.setId(st3.getId());
            Integer licenseId = body.getLicenseId();
            if (licenseId != null && licenseId > 0) {
                Optional<License> b1 = licenseRepository.findById(licenseId.longValue());
                if (byId.isPresent()) {
                    map.setLicense(b1.get());
                }
            }

            return deconstructStage1(repository.save(map));
        }
        return null;
    }

    public StageOne getStageOneById(Long stageOneId) {
        Optional<com.nms.entities.StageOne> byId = repository.findById(stageOneId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageOne stageFour = byId.get();
            return deconstructStage1(stageFour);
        }
        return null;
    }

    public List<StageOne> getStageOnes() {
        List<StageOne> stage1 = new ArrayList<>();
        Iterable<com.nms.entities.StageOne> all = repository.findAll();
        all.forEach(a -> {
            stage1.add(deconstructStage1(a));
        });
        return stage1;
    }

    public boolean deleteStageOneById(Long stageOneId) {
        repository.deleteById(stageOneId.intValue());
        return true;
    }

    public StageOne addStageOne(StageOne body) {
        com.nms.entities.StageOne map = mapper.map(body, com.nms.entities.StageOne.class);
        Integer licenseId = body.getLicenseId();
        if (licenseId != null && licenseId > 0) {
            Optional<License> byId = licenseRepository.findById(licenseId.longValue());
            if (byId.isPresent()) {
                map.setLicense(byId.get());
            } else {
                map.setLicense(null);
            }
        }
        map.setUserId(usersRepository.findByAppUserId(body.getUserId()));
        com.nms.entities.StageOne save = repository.save(map);
        return save != null ? mapper.map(save, StageOne.class) : null;
    }


    private StageOne deconstructStage1(com.nms.entities.StageOne a) {
        StageOne map = mapper.map(a, StageOne.class);
        map.setInterconnection(a.getInterconnection());


        if (a.getLicense() != null)
            map.setLicenseId(a.getLicense().getId().intValue());
        if (a.getOtherLicense() != null && !a.getOtherLicense().isEmpty()) {
            List<String> collect = new ArrayList<>(a.getOtherLicense());
            map.setOtherLicense(collect);
        }

        map.setPreviousLicense(a.getPreviousLicense());
        User u = a.getUserId();
        if (u != null)
            map.setUserId(u.getAppUserId());
        return map;
    }
}
