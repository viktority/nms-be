package com.nms.services;

import com.nms.entities.Type;
import com.nms.models.SpecificType;
import com.nms.repositories.SpecificTypeRepository;
import com.nms.repositories.TypeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class SpecificTypeService {

    @Autowired
    ModelMapper mapper;

    @Autowired
    SpecificTypeRepository specificTypeRepository;

    @Autowired
    TypeRepository typeRepository;

    public List<SpecificType> getSpecificTypesByTypeId(Integer typeId) {
        List<SpecificType> list = new ArrayList<>();
        specificTypeRepository.findByTypeId(typeId).forEach(as -> {
            SpecificType map = mapper.map(as, SpecificType.class);
            list.add(map);
        });
        return list;
    }


    public List<SpecificType> allSpecificType() {
        List<SpecificType> list = new ArrayList<>();
        specificTypeRepository.findAll().forEach(as -> {
            SpecificType map = mapper.map(as, SpecificType.class);
            list.add(map);
        });
        return list;
    }

    public SpecificType addSpecificType(Integer typeId, SpecificType body) {
        Optional<Type> byId = typeRepository.findById(typeId);
        if (byId.isPresent()) {
            com.nms.entities.SpecificType map = mapper.map(body, com.nms.entities.SpecificType.class);
            map.setId(null);
            map.setType(byId.get());
            com.nms.entities.SpecificType save = specificTypeRepository.save(map);
            return mapper.map(save, com.nms.models.SpecificType.class);
        }
        return null;
    }

    public boolean deleteSpecificTypeById(Integer specificTypeId) {

        try {
            specificTypeRepository.deleteById(specificTypeId);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public SpecificType getSpecificTypeById(Integer specificTypeId) {
        Optional<com.nms.entities.SpecificType> byId = specificTypeRepository.findById(specificTypeId);
        if (!byId.isPresent()) {
            return null;
        }
        mapper.getConfiguration().setAmbiguityIgnored(true);
        return mapper.map(byId.get(), com.nms.models.SpecificType.class);
    }

    public SpecificType updateSpecificTypeById(Integer specificTypeId, SpecificType body) {
        Optional<com.nms.entities.SpecificType> byId = specificTypeRepository.findById(specificTypeId);
        if (!byId.isPresent()) return null;

        com.nms.entities.SpecificType map = mapper.map(body, com.nms.entities.SpecificType.class);
        map.setId(specificTypeId);
        com.nms.entities.SpecificType save = specificTypeRepository.save(map);

        return mapper.map(save, com.nms.models.SpecificType.class);
    }
}
