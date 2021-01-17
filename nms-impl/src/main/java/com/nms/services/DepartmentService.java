package com.nms.services;

import com.nms.models.Department;
import com.nms.models.DepartmentDto;
import com.nms.repositories.DepartmentRepository;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class DepartmentService {

    @Autowired
    DepartmentRepository departmentRepository;

    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    public Department addDepartment(DepartmentDto body) {
        com.nms.entities.Department map = mapper.map(body, com.nms.entities.Department.class);
        com.nms.entities.Department save = departmentRepository.save(map);
        return (save != null) ? mapper.map(save, Department.class) : null;
    }

    public boolean deleteDepartmentnById(Long departmentId) {
        departmentRepository.deleteById(departmentId);
        return true;
    }

    public List<Department> getDepartments() {
        List<Department> list = new ArrayList<>();
        departmentRepository.findAll().forEach(as -> {
            Department map = mapper.map(as, Department.class);
            list.add(map);
        });
        return list;
    }

    public Department getDepartmentById(Long departmentId) {
        Optional<com.nms.entities.Department> byName = departmentRepository.findById(departmentId);
        return byName.map(department -> mapper.map(department, Department.class)).orElse(null);
    }

    public Department updateDepartmentById(Long departmentId, DepartmentDto body) {
        Optional<com.nms.entities.Department> byId = departmentRepository.findById(departmentId);
        if (byId.isPresent()) {
            com.nms.entities.Department bp = byId.get();
            bp.setTitle(body.getTitle());
            com.nms.entities.Department save = departmentRepository.save(bp);

            return mapper.map(save, Department.class);
        }
        return null;
    }
}
