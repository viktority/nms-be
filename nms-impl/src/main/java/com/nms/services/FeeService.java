package com.nms.services;

import com.nms.models.Fee;
import com.nms.models.FeeDto;
import com.nms.repositories.FeeRepository;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class FeeService {
    @Autowired
    FeeRepository feeRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public Fee addFee(FeeDto body) {
        com.nms.entities.Fee map = mapper.map(body, com.nms.entities.Fee.class);
        map.setCreatedBy(user.getUser());
        map.setUpdatedBy(user.getUser());
        com.nms.entities.Fee save = feeRepository.save(map);
        return (save != null) ? mapper.map(save, Fee.class) : null;
    }

    public boolean deleteFeeById(Long feeId) {
        feeRepository.deleteById(feeId);
        return true;
    }

    public Fee updateFeeById(Long feeId, FeeDto body) {
        Optional<com.nms.entities.Fee> byId = feeRepository.findById(feeId);
        if (byId.isPresent()) {
            com.nms.entities.Fee bp = byId.get();
            bp.setName(body.getName());
            bp.setAmount(body.getAmount());
            bp.setFrequency(body.getFrequency());
            com.nms.entities.Fee save = feeRepository.save(bp);

            Fee map = mapper.map(save, Fee.class);
            map.setCreatedBy(bp.getCreatedBy() == null ? null : bp.getCreatedBy().getAppUserId());
            map.setUpdatedBy(bp.getUpdatedBy() == null ? null : bp.getUpdatedBy().getAppUserId());
            return map;
        }
        return null;
    }

    public List<Fee> getFees() {
        List<Fee> list = new ArrayList<>();
        feeRepository.findAll().forEach(as -> {
            Fee map = mapper.map(as, Fee.class);
            map.setCreatedBy(as.getCreatedBy() == null ? null : as.getCreatedBy().getAppUserId());
            map.setUpdatedBy(as.getUpdatedBy() == null ? null : as.getUpdatedBy().getAppUserId());
            list.add(map);
        });
        return list;
    }

    public Fee getFeeByName(String feeName) {
        com.nms.entities.Fee byName = feeRepository.findByName(feeName);
        if (byName != null) {
            Fee map = mapper.map(byName, Fee.class);
            map.setCreatedBy(byName.getCreatedBy() == null ? null : byName.getCreatedBy().getAppUserId());
            map.setUpdatedBy(byName.getUpdatedBy() == null ? null : byName.getUpdatedBy().getAppUserId());
            return map;
        }
        return null;
    }
}
