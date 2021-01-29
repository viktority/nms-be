package com.nms.services;

import com.nms.entities.Number;
import com.nms.models.NumberBlock;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class NumberServiceTest {

    NumberService numberService;

    @Before
    public void setUp() throws Exception {
        numberService = new NumberService();
    }

    @Test
    public void getStartDigit() {
        Assert.assertEquals(Long.valueOf(100), numberService.getLimitDigit(3, "min"));
        Assert.assertEquals(Long.valueOf(1000000), numberService.getLimitDigit(7, "min"));
        Assert.assertEquals(Long.valueOf(999), numberService.getLimitDigit(3, "max"));
        Assert.assertEquals(Long.valueOf(99999), numberService.getLimitDigit(5, "max"));
    }

    @Test
    public void generateNumberBlock() {

    }
}