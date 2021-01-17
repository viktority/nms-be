package com.nms.services;

import com.nms.models.SpecificType;
import com.nms.repositories.SpecificTypeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SpecificTypeService {

    @Autowired
    ModelMapper mapper;

    @Autowired
    SpecificTypeRepository specificTypeRepository;

    public List<SpecificType> getSpecificTypesByTypeId(Integer typeId) {
        List<SpecificType> list = new ArrayList<>();
        specificTypeRepository.findByTypeId(typeId).forEach(as -> {
            SpecificType map = mapper.map(as, SpecificType.class);
            list.add(map);
        });
        return list;
    }
}
