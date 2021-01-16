package com.nms.services;

import com.nms.models.NumberType;
import com.nms.models.NumberTypeDto;
import com.nms.repositories.ApprovalStageRepository;
import com.nms.repositories.NumberTypeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service("nms_numberTypeService")
public class NumbertypeService {

    @Autowired
    ApprovalStageRepository approvalStageRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    NumberTypeRepository numberTypeRepository;

    public NumberType addNumberType(NumberTypeDto body) {
        try {
            List<Integer> approvalStageIds = body.getListOfApprovalStageIds();
            List<com.nms.entities.ApprovalStages> collect = approvalStageIds.stream().map(this::apply).filter(Objects::nonNull).collect(Collectors.toList());
            if (collect.isEmpty()) {
                return null;
            }
            com.nms.entities.NumberType map = mapper.map(body, com.nms.entities.NumberType.class);
            map.setListOfApprovalStages(collect);
            com.nms.entities.NumberType save = numberTypeRepository.save(map);
            return mapper.map(save, NumberType.class);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public boolean deleteNumberTypeById(Integer numberTypeId) {

        try {
            numberTypeRepository.deleteById(numberTypeId.longValue());
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public List<NumberType> getAllNumberTypes() {
        List<NumberType> nmst = new ArrayList<>();
        mapper.getConfiguration().setAmbiguityIgnored(true);
        Iterable<com.nms.entities.NumberType> all = numberTypeRepository.findAll();
        all.forEach(r -> {
            NumberType map = mapper.map(r, NumberType.class);
            nmst.add(map);
        });
        return nmst;
    }

    public NumberType getNumberTypeById(Integer numberTypeId) {
        Optional<com.nms.entities.NumberType> byId = numberTypeRepository.findById(numberTypeId.longValue());
        if (!byId.isPresent()) {
            return null;
        }
        mapper.getConfiguration().setAmbiguityIgnored(true);
        return mapper.map(byId.get(), NumberType.class);
    }

    public NumberType updateNumberTypeById(Integer numberTypeId, NumberTypeDto body) {
        Optional<com.nms.entities.NumberType> byId = numberTypeRepository.findById(numberTypeId.longValue());
        if (!byId.isPresent()) return null;


        List<com.nms.entities.ApprovalStages> approvalStages = body.getListOfApprovalStageIds().stream().map(this::apply).collect(Collectors.toList());

        com.nms.entities.NumberType map = mapper.map(body, com.nms.entities.NumberType.class);
        map.setListOfApprovalStages(approvalStages);
        map.setId(numberTypeId.longValue());
        com.nms.entities.NumberType save = numberTypeRepository.save(map);


        return mapper.map(save, NumberType.class);
    }

    private com.nms.entities.ApprovalStages apply(Integer id) {
        Optional<com.nms.entities.ApprovalStages> byId = approvalStageRepository.findById(id.longValue());
        return byId.orElse(null);
    }
}
