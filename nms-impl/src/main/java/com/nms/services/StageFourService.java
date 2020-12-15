package com.nms.services;


import com.nms.entities.User;
import com.nms.repositories.StageFourRepository;
import com.nms.repositories.UsersRepository;
import com.nms.rest.server.models.StageFour;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StageFourService {

    @Autowired
    StageFourRepository repository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    UsersRepository usersRepository;

    public StageFour getStageFourById(Long stageFourId) {
        Optional<com.nms.entities.StageFour> byId = repository.findById(stageFourId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageFour stageFour = byId.get();
            return deconstructStage4(stageFour);
        }
        return null;
    }

    public StageFour updateStageFourById(Long stageFourId, StageFour body) {
        Optional<com.nms.entities.StageFour> byId = repository.findById(stageFourId.intValue());
        if (byId.isPresent()) {
            com.nms.entities.StageFour st4 = byId.get();
            com.nms.entities.StageFour map = mapper.map(body, com.nms.entities.StageFour.class);
            map.setId(st4.getId());
            return deconstructStage4(repository.save(map));
        }
        return null;
    }

    public List<StageFour> getStageFours() {
        List<StageFour> stageFours = new ArrayList<>();
        Iterable<com.nms.entities.StageFour> all = repository.findAll();
        all.forEach(a -> {
            stageFours.add(deconstructStage4(a));
        });
        return stageFours;
    }

    public boolean deleteStageFourById(Long stageFourId) {
        repository.deleteById(stageFourId.intValue());
        return true;
    }

    public StageFour addStageFour(StageFour body) {
        com.nms.entities.StageFour map = mapper.map(body, com.nms.entities.StageFour.class);
        map.setUndertaken(false);
        map.setUserId(usersRepository.findByUserId(body.getUserId()));
        com.nms.entities.StageFour save = repository.save(map);
        return save != null ? mapper.map(save, StageFour.class) : null;
    }

    private StageFour deconstructStage4(com.nms.entities.StageFour a) {
        StageFour map = mapper.map(a, StageFour.class);
        User u = a.getUserId();
        if (u != null)
            map.setUserId(u.getUserId());
        return map;
    }
}
