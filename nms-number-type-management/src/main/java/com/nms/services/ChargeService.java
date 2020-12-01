package com.nms.services;

import com.nms.repositories.ChargeRepository;
import com.nms.rest.server.models.Charge;
import com.nms.rest.server.models.ChargeDto;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ChargeService {
    @Autowired
    ChargeRepository chargeRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public boolean addCharge(ChargeDto body) {
        com.nms.entities.Charge map = mapper.map(body, com.nms.entities.Charge.class);
        map.setCreatedBy(user.getUser());
        map.setUpdatedBy(user.getUser());
        com.nms.entities.Charge save = chargeRepository.save(map);
        return (save != null);
    }

    public boolean deleteChargeById(Long chargeId) {
        chargeRepository.deleteById(chargeId);
        return true;
    }

    public Charge updateChargeById(Long chargeId, ChargeDto body) {
        Optional<com.nms.entities.Charge> byId = chargeRepository.findById(chargeId);
        if (byId.isPresent()) {
            com.nms.entities.Charge bp = byId.get();
            bp.setName(body.getName());
            bp.setValue(body.getValue());
            com.nms.entities.Charge save = chargeRepository.save(bp);

            Charge map = mapper.map(save, Charge.class);
            map.setCreatedBy(bp.getCreatedBy() == null ? null : bp.getCreatedBy().getUserId());
            map.setUpdatedBy(bp.getUpdatedBy() == null ? null : bp.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }

    public List<Charge> getCharges() {
        List<Charge> list = new ArrayList<>();
        chargeRepository.findAll().forEach(as -> {
            Charge map = mapper.map(as, Charge.class);
            map.setCreatedBy(as.getCreatedBy() == null ? null : as.getCreatedBy().getUserId());
            map.setUpdatedBy(as.getUpdatedBy() == null ? null : as.getUpdatedBy().getUserId());
            list.add(map);
        });
        return list;
    }

    public Charge getChargeByName(String chargeName) {
        com.nms.entities.Charge byName = chargeRepository.findByName(chargeName);
        if (byName != null) {
            Charge map = mapper.map(byName, Charge.class);
            map.setCreatedBy(byName.getCreatedBy() == null ? null : byName.getCreatedBy().getUserId());
            map.setUpdatedBy(byName.getUpdatedBy() == null ? null : byName.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }
}
