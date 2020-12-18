package com.nms.services;

import com.nms.models.License;
import com.nms.models.LicenseDto;
import com.nms.repositories.LicenseRepository;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class LicenseService {
    @Autowired
    LicenseRepository licenseRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public License addLicense(LicenseDto body) {
        com.nms.entities.License map = mapper.map(body, com.nms.entities.License.class);
        map.setCreatedBy(user.getUser());
        map.setUpdatedBy(user.getUser());
        com.nms.entities.License save = licenseRepository.save(map);
        return (save != null) ? mapper.map(save, License.class) : null;
    }

    public boolean deleteLicenseById(Long licenseId) {
        licenseRepository.deleteById(licenseId);
        return true;
    }

    public License getLicenseByName(String licenseName) {
        com.nms.entities.License byName = licenseRepository.findByName(licenseName);
        if (byName != null) {
            License map = mapper.map(byName, License.class);
            map.setCreatedBy(byName.getCreatedBy() == null ? null : byName.getCreatedBy().getUserId());
            map.setUpdatedBy(byName.getUpdatedBy() == null ? null : byName.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }

    public List<License> getLicenses() {
        List<License> list = new ArrayList<>();
        licenseRepository.findAll().forEach(as -> {
            License map = mapper.map(as, License.class);
            map.setCreatedBy(as.getCreatedBy() == null ? null : as.getCreatedBy().getUserId());
            map.setUpdatedBy(as.getUpdatedBy() == null ? null : as.getUpdatedBy().getUserId());
            list.add(map);
        });
        return list;
    }

    public License updateLicenseById(Long licenseId, LicenseDto body) {
        Optional<com.nms.entities.License> byId = licenseRepository.findById(licenseId);
        if (byId.isPresent()) {
            com.nms.entities.License bp = byId.get();
            bp.setName(body.getName());
            com.nms.entities.License save = licenseRepository.save(bp);

            License map = mapper.map(save, License.class);
            map.setCreatedBy(bp.getCreatedBy() == null ? null : bp.getCreatedBy().getUserId());
            map.setUpdatedBy(bp.getUpdatedBy() == null ? null : bp.getUpdatedBy().getUserId());
            return map;
        }
        return null;
    }
}
