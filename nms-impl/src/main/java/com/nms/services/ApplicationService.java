package com.nms.services;

import com.nms.entities.User;
import com.nms.models.*;
import com.nms.repositories.*;
import com.nms.security.AuthenticatedUser;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ApplicationService {
    @Autowired
    ApplicationRepository repository;
    @Autowired
    ModelMapper mapper;

    @Autowired
    AuthenticatedUser user;

    @Autowired
    ApprovalStageRepository approvalStageRepository;

    @Autowired
    StageOneRepository stageOneRepository;

    @Autowired
    StageTwoRepository stageTwoRepository;

    @Autowired
    StageThreeRepository stageThreeRepository;

    @Autowired
    StageFourRepository stageFourRepository;
    @Autowired
    UsersService usersService;

    public Application getApplicationById(String applicationId) {
        Optional<com.nms.entities.Application> byId = repository.findById(applicationId);
        if (byId.isPresent()) {
            com.nms.entities.Application application = byId.get();
            return deconstructEntity(application);
        }
        return null;

    }

    public List<Application> getApplications() {
        List<Application> returnResponse = new ArrayList<>();
        repository.findAll().forEach(application -> {
            returnResponse.add(deconstructEntity(application));
        });
        return returnResponse;
    }


    public Application updateApplicationById(String applicationId, ApplicationDto body) {
        Optional<com.nms.entities.Application> byId = repository.findById(applicationId);
        if (byId.isPresent()) {
            com.nms.entities.Application st4 = byId.get();
            com.nms.entities.Application map = mapper.map(body, com.nms.entities.Application.class);

            Integer approvalStageId = body.getApprovalStageId();
            if (approvalStageId != null && approvalStageId > 0) {
                Optional<com.nms.entities.ApprovalStages> f = approvalStageRepository.findById(approvalStageId.longValue());
                if (f.isPresent()) map.setApprovalStage(f.get());
            }

            Integer stageOneId = body.getStageOneId();
            if (stageOneId != null && stageOneId > 0) {
                Optional<com.nms.entities.StageOne> f = stageOneRepository.findById(stageOneId);
                if (f.isPresent()) map.setStageOne(f.get());
            }
            Integer stagetwo = body.getStageTwoId();
            if (stagetwo != null && stagetwo > 0) {
                Optional<com.nms.entities.StageTwo> f = stageTwoRepository.findById(stagetwo);
                if (f.isPresent()) map.setStageTwo(f.get());
            }
            Integer stagethree = body.getStageThreeId();
            if (stagethree != null && stagethree > 0) {
                Optional<com.nms.entities.StageThree> f = stageThreeRepository.findById(stagethree);
                if (f.isPresent()) map.setStageThree(f.get());
            }

            Integer stage4 = body.getStageFourId();
            if (stage4 != null && stage4 > 0) {
                Optional<com.nms.entities.StageFour> f = stageFourRepository.findById(stage4);
                if (f.isPresent()) map.setStageFour(f.get());
            }
            return deconstructEntity(repository.save(map));
        }
        return null;
    }


    public Application addApplication(ApplicationDto body) {
        String applicationId = UUID.randomUUID().toString();
        com.nms.entities.Application application = mapper.map(body, com.nms.entities.Application.class);
        User userByUserId = usersService.getUserByUserId(body.getUserId());
        application.setUserId(userByUserId);
        application.setApplicationId(applicationId);
        application.setApprovalStage(null);
        application.setFinalised(false);
        application.setCreatedBy(user.getUser());
        application.setUpdatedBy(null);
        application.setStageFour(null);
        application.setStageThree(null);
        application.setStageTwo(null);
        application.setStageOne(null);
        com.nms.entities.Application save = repository.save(application);
        return save != null ? mapper.map(save, Application.class) : null;
    }

    public boolean deleteApplicationById(String applicationId) {
        repository.deleteById(applicationId);
        return true;
    }

    private Application deconstructEntity(com.nms.entities.Application application) {
        Application map = mapper.map(application, Application.class);
        map.setApprovalStage(application.getApprovalStage() == null ? null : mapper.map(application.getApprovalStage(), ApprovalStage.class));
        map.setStageFour(application.getStageFour() == null ? null : mapper.map(application.getStageFour(), StageFour.class));
        map.setStageOne(application.getStageOne() == null ? null : mapper.map(application.getStageOne(), StageOne.class));
        map.setStageThree(application.getStageThree() == null ? null : mapper.map(application.getStageThree(), StageThree.class));
        map.setStageTwo(application.getStageTwo() == null ? null : mapper.map(application.getStageTwo(), StageTwo.class));
        map.setCreatedBy(application.getCreatedBy() == null ? null : application.getCreatedBy().getAppUserId());
        map.setUpdatedBy(application.getUpdatedBy() == null ? null : application.getUpdatedBy().getAppUserId());
        return map;
    }
}
