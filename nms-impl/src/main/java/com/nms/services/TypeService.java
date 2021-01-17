package com.nms.services;


import com.nms.models.Type;
import com.nms.repositories.TypeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TypeService {


    @Autowired
    ModelMapper mapper;

    @Autowired
    TypeRepository typeRepository;

    public List<Type> getTypes() {
        List<Type> list = new ArrayList<>();
        typeRepository.findAll().forEach(as -> {
            Type map = mapper.map(as, Type.class);
            list.add(map);
        });
        return list;
    }
}
