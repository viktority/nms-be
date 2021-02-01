package com.nms.services;

import com.nms.entities.SpecificType;
import com.nms.entities.Type;
import com.nms.models.Number;
import com.nms.models.NumberBlock;
import com.nms.models.NumberDto;
import com.nms.repositories.NumberRepository;
import com.nms.repositories.SpecificTypeRepository;
import com.nms.repositories.TypeRepository;
import com.nms.security.AuthenticatedUser;
import com.nms.utils.Status;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NumberService {

    @Autowired
    ModelMapper mapper;

    @Autowired
    TypeRepository typeRepository;

    @Autowired
    SpecificTypeRepository specificTypeRepository;

    @Autowired
    AuthenticatedUser user;
    @Autowired
    NumberRepository numberRepository;

    public Number addNumber(NumberDto body) {
        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        com.nms.entities.Number map = mapper.map(body, com.nms.entities.Number.class);
        Optional<Type> byId = typeRepository.findById(body.getTypeId());
        Optional<SpecificType> byId1 = specificTypeRepository.findById(body.getSpecificTypeId());
        if (!byId.isPresent() || !byId1.isPresent()) {
            return null;
        }
        map.setType(byId.get());
        map.setSpecificType(byId1.get());
        map.setStatus(Status.PENDING.getValue());
        map.setClient(user.getUser());
        map.setCreatedAt(LocalDateTime.now());
        map.setUpdatedAt(LocalDateTime.now());
        map.setSold(false);
        com.nms.entities.Number save = numberRepository.save(map);
        if (save != null) {
            return deconstructNumber(save);
        }

        return null;
    }

    public boolean deleteNumbernById(Long numberId) {
        numberRepository.deleteById(numberId);
        return true;
    }

    public List<Number> getNumbers() {
        List<Number> list = new ArrayList<>();
        numberRepository.findAll().forEach(as -> {
            list.add(deconstructNumber(as));
        });
        return list;
    }

    public Number getNumberById(Long numberId) {
        Optional<com.nms.entities.Number> byName = numberRepository.findById(numberId);
        return byName.map(this::deconstructNumber).orElse(null);
    }

    public Number updateNumberById(Long numberId, NumberDto body) {
        Optional<com.nms.entities.Number> byId = numberRepository.findById(numberId);
        if (byId.isPresent()) {
            com.nms.entities.Number bp = byId.get();
            bp.setUpdatedAt(LocalDateTime.now());
            bp.setEnd(body.getEnd());
            bp.setStart(body.getStart());
            com.nms.entities.Number save = numberRepository.save(bp);
            return deconstructNumber(save);
        }
        return null;
    }

    private Number deconstructNumber(com.nms.entities.Number number) {
        Number map = mapper.map(number, Number.class);
        map.setType(number.getType().getType());
        map.setSpecificType(number.getSpecificType().getSpecificType());
        return map;
    }

    public List<NumberBlock> fetchNumberBlocksBySpecificType(SpecificType specificType){
        Type numberType = specificType.getType();
        List<com.nms.entities.Number> soldNumbers = numberRepository.findBySpecificTypeOrderByStartAsc(specificType);
        Long startDigit = getLimitDigit(specificType.getMinDigit(), "min");
        Long endDigit = getLimitDigit(specificType.getMaxDigit(), "max");
        return generateNumberBlock(soldNumbers,startDigit,endDigit,numberType.getId());
    }

//    public List<NumberBlock> fetchNumberBlocks(int id){
//        Type numberType = typeRepository.findById(id).orElse(null);
//        List<com.nms.entities.Number> soldNumbers = numberRepository.findByTypeOrderByStartAsc(numberType);
//        Long startDigit = getLimitDigit(numberType.getMinDigit(), "min");
//        Long endDigit = getLimitDigit(numberType.getMaxDigit(), "max");
//        List<NumberBlock> numberBlocks = generateNumberBlock(soldNumbers,startDigit,endDigit,numberType.getId());
//        return numberBlocks;
//    }

    public Long getLimitDigit(int digit, String minMax){
        String x = minMax.equals("min")? "1" : "9";
        for (int i = 1; i < digit; i++) {
            x += minMax.equals("min")? 0 : 9;;
        }
        return Long.valueOf(x);
    }

    public List<NumberBlock> generateNumberBlock(List<com.nms.entities.Number> soldNumbers, Long startDigit, Long endDigit, int numberType){
        List<NumberBlock> numberBlocks = new ArrayList<>();
        long currentMin = startDigit;
        for (com.nms.entities.Number n: soldNumbers) {
            if(currentMin < n.getStart()){
                numberBlocks.add(new NumberBlock(currentMin, n.getStart() - 1, numberType));
            }
            currentMin = n.getEnd() + 1;
        }
        // Add endBlock
        if(currentMin < endDigit){
            numberBlocks.add(new NumberBlock(currentMin, endDigit, numberType));
        }
        return numberBlocks;
    }
}
