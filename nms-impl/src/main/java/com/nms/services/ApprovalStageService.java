package com.nms.services;

import com.nms.models.ApprovalStage;
import com.nms.repositories.ApprovalStageRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ApprovalStageService {


    @Autowired
    ApprovalStageRepository approvalStageRepository;

    public List<ApprovalStage> getapprovalStagees() {
        ModelMapper mapper = new ModelMapper();
        List<ApprovalStage> returnResponse = new ArrayList<>();
        approvalStageRepository.findAll().forEach(approvalStage ->
        {
            ApprovalStage map = mapper.map(approvalStage, ApprovalStage.class);
            returnResponse.add(map);
        });

        return returnResponse;
    }
}
