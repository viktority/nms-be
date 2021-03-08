package com.nms.services;


import com.nms.entities.User;
import com.nms.models.StageThree;
import com.nms.repositories.StageThreeRepository;
import com.nms.repositories.UsersRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StageThreeService {

    @Autowired
    StageThreeRepository repository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    UsersRepository usersRepository;

    public StageThree addStageThree(StageThree body) {
        com.nms.entities.StageThree map = mapper.map(body, com.nms.entities.StageThree.class);
        map.setDocumentCompleted(false);
        map.setUserId(usersRepository.findByAppUserId(body.getUserId()));
        com.nms.entities.StageThree save = repository.save(map);
        return save != null?mapper.map(save,StageThree.class):null;
    }

    public boolean deleteStageThreeById(Long stageThreeId) {
        repository.deleteById(stageThreeId.intValue());
        return true;
    }

    public List<StageThree> getStageThrees() {
        List<StageThree> stage3 = new ArrayList<>();
        Iterable<com.nms.entities.StageThree> all = repository.findAll();
        all.forEach(a -> {
            stage3.add(deconstructStage3(a));
        });
        return stage3;
    }

    public StageThree getStageThreeById(Long stageThreeId) {
        Optional<com.nms.entities.StageThree> byId = repository.findById(stageThreeId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageThree stageFour = byId.get();
            return deconstructStage3(stageFour);
        }
        return null;
    }

    public StageThree updateStageThreeById(Long stageThreeId, StageThree body) {
        Optional<com.nms.entities.StageThree> byId = repository.findById(stageThreeId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageThree st3 = byId.get();
            com.nms.entities.StageThree map = mapper.map(body, com.nms.entities.StageThree.class);
            map.setId(st3.getId());
            return deconstructStage3(repository.save(map));
        }
        return null;
    }


    private StageThree deconstructStage3(com.nms.entities.StageThree a) {
        StageThree map = mapper.map(a, StageThree.class);
        User u = a.getUserId();
        if (u != null)
            map.setUserId(u.getAppUserId());
        return map;
    }
}
