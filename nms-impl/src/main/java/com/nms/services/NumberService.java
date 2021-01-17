package com.nms.services;

import com.nms.entities.SpecificType;
import com.nms.entities.Type;
import com.nms.models.Number;
import com.nms.models.NumberDto;
import com.nms.repositories.NumberRepository;
import com.nms.repositories.SpecificTypeRepository;
import com.nms.repositories.TypeRepository;
import com.nms.security.AuthenticatedUser;
import com.nms.utils.Status;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NumberService {

    @Autowired
    ModelMapper mapper;

    @Autowired
    TypeRepository typeRepository;

    @Autowired
    SpecificTypeRepository specificTypeRepository;

    @Autowired
    AuthenticatedUser user;
    @Autowired
    NumberRepository numberRepository;

    public Number addNumber(NumberDto body) {
        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        com.nms.entities.Number map = mapper.map(body, com.nms.entities.Number.class);
        Optional<Type> byId = typeRepository.findById(body.getTypeId());
        Optional<SpecificType> byId1 = specificTypeRepository.findById(body.getSpecificTypeId());
        if (!byId.isPresent() || !byId1.isPresent()) {
            return null;
        }
        map.setType(byId.get());
        map.setSpecificType(byId1.get());
        map.setStatus(Status.PENDING.getValue());
        map.setClient(user.getUser());
        map.setCreatedAt(LocalDateTime.now());
        map.setUpdatedAt(LocalDateTime.now());
        map.setSold(false);
        com.nms.entities.Number save = numberRepository.save(map);
        if (save != null) {
            return deconstructNumber(save);
        }

        return null;
    }

    public boolean deleteNumbernById(Long numberId) {
        numberRepository.deleteById(numberId);
        return true;
    }

    public List<Number> getNumbers() {
        List<Number> list = new ArrayList<>();
        numberRepository.findAll().forEach(as -> {
            list.add(deconstructNumber(as));
        });
        return list;
    }

    public Number getNumberById(Long numberId) {
        Optional<com.nms.entities.Number> byName = numberRepository.findById(numberId);
        return byName.map(this::deconstructNumber).orElse(null);
    }

    public Number updateNumberById(Long numberId, NumberDto body) {
        Optional<com.nms.entities.Number> byId = numberRepository.findById(numberId);
        if (byId.isPresent()) {
            com.nms.entities.Number bp = byId.get();
            bp.setUpdatedAt(LocalDateTime.now());
            bp.setEnd(body.getEnd());
            bp.setStart(body.getStart());
            com.nms.entities.Number save = numberRepository.save(bp);
            return deconstructNumber(save);
        }
        return null;
    }

    private Number deconstructNumber(com.nms.entities.Number number) {
        Number map = mapper.map(number, Number.class);
        map.setType(number.getType().getType());
        map.setSpecificType(number.getSpecificType().getSpecificType());
        return map;
    }
}
