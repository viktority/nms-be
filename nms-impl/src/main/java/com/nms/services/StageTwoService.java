package com.nms.services;


import com.nms.entities.User;
import com.nms.models.StageTwo;
import com.nms.repositories.StageTwoRepository;
import com.nms.repositories.UsersRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StageTwoService {

    @Autowired
    StageTwoRepository repository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    UsersRepository usersRepository;

    public StageTwo updateStageTwoById(Long stageTwoId, StageTwo body) {
        Optional<com.nms.entities.StageTwo> byId = repository.findById(stageTwoId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageTwo st3 = byId.get();
            com.nms.entities.StageTwo map = mapper.map(body, com.nms.entities.StageTwo.class);
            map.setId(st3.getId());
            return deconstructStage2(repository.save(map));
        }
        return null;
    }

    public StageTwo getStageTwoById(Long stageTwoId) {
        Optional<com.nms.entities.StageTwo> byId = repository.findById(stageTwoId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageTwo stageFour = byId.get();
            return deconstructStage2(stageFour);
        }
        return null;
    }

    public List<StageTwo> getStageTwos() {
        List<StageTwo> stage2 = new ArrayList<>();
        Iterable<com.nms.entities.StageTwo> all = repository.findAll();
        all.forEach(a -> {
            stage2.add(deconstructStage2(a));
        });
        return stage2;
    }

    public StageTwo addStageTwo(StageTwo body) {
        com.nms.entities.StageTwo map = mapper.map(body, com.nms.entities.StageTwo.class);
        map.setDevice(body.getDevice());
        map.setFrequencyCoverage(body.getFrequencyCoverage());
        map.setNumberBlock(body.getNumberBlock());
        map.setUserId(usersRepository.findByAppUserId(body.getUserId()));
        com.nms.entities.StageTwo save = repository.save(map);
        return save != null ? mapper.map(save, StageTwo.class) : null;
    }

    public boolean deleteStageTwoById(Long stageTwoId) {
        repository.deleteById(stageTwoId.intValue());
        return true;
    }

    private StageTwo deconstructStage2(com.nms.entities.StageTwo a) {
        StageTwo map = mapper.map(a, StageTwo.class);
        map.setDevice(a.getDevice());
        map.setFrequencyCoverage(a.getFrequencyCoverage());
        map.setNumberBlock(a.getNumberBlock());
        User u = a.getUserId();
        if (u != null)
            map.setUserId(u.getAppUserId());
        return map;
    }
}
