package com.nms.services;


import com.nms.models.NumberTypeDto;
import com.nms.models.Type;
import com.nms.repositories.ApprovalStageRepository;
import com.nms.repositories.TypeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class TypeService {

    @Autowired
    ApprovalStageRepository approvalStageRepository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    TypeRepository typeRepository;

//    public List<Type> getTypes() {
//        List<Type> list = new ArrayList<>();
//        typeRepository.findAll().forEach(as -> {
//            Type map = mapper.map(as, Type.class);
//            list.add(map);
//        });
//        return list;
//    }

    public Type addType(NumberTypeDto body) {
        try {
            List<Integer> approvalStageIds = body.getListOfApprovalStageIds();
            List<com.nms.entities.ApprovalStages> collect = approvalStageIds.stream().map(this::apply).filter(Objects::nonNull).collect(Collectors.toList());
            if (collect.isEmpty()) {
                return null;
            }
            com.nms.entities.Type map = mapper.map(body, com.nms.entities.Type.class);
            map.setListOfApprovalStages(collect);
            com.nms.entities.Type save = typeRepository.save(map);
            return mapper.map(save, Type.class);
        } catch (Exception ex) {
            return null;
        }
    }

    public boolean deleteTypeById(Integer typeId) {

        try {
            typeRepository.deleteById(typeId);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }


    public List<Type> getAllTypes() {
        List<Type> nmst = new ArrayList<>();
        mapper.getConfiguration().setAmbiguityIgnored(true);
        Iterable<com.nms.entities.Type> all = typeRepository.findAll();
        all.forEach(r -> {
            Type map = mapper.map(r, Type.class);
            nmst.add(map);
        });
        return nmst;
    }

    public Type getTypeById(Integer typeId) {
        Optional<com.nms.entities.Type> byId = typeRepository.findById(typeId);
        if (!byId.isPresent()) {
            return null;
        }
        mapper.getConfiguration().setAmbiguityIgnored(true);
        return mapper.map(byId.get(), Type.class);
    }

    public Type updateTypeById(Integer typeId, NumberTypeDto body) {
        Optional<com.nms.entities.Type> byId = typeRepository.findById(typeId);
        if (!byId.isPresent()) return null;


        List<com.nms.entities.ApprovalStages> approvalStages = body.getListOfApprovalStageIds().stream().map(this::apply).collect(Collectors.toList());

        com.nms.entities.Type map = mapper.map(body, com.nms.entities.Type.class);
        map.setListOfApprovalStages(approvalStages);
        map.setId(typeId);
        com.nms.entities.Type save = typeRepository.save(map);


        return mapper.map(save, Type.class);
    }

    private com.nms.entities.ApprovalStages apply(Integer id) {
        Optional<com.nms.entities.ApprovalStages> byId = approvalStageRepository.findById(id.longValue());
        return byId.orElse(null);
    }
}
