package com.nms.services;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

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