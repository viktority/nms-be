package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CountryCode {
    @Id
    @GeneratedValue
    private long id;
    private String countryCode;
    private String countryName;
    private String unRegion;
    private String unSubregion;

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getUnRegion() {
        return unRegion;
    }

    public void setUnRegion(String unRegion) {
        this.unRegion = unRegion;
    }

    public String getUnSubregion() {
        return unSubregion;
    }

    public void setUnSubregion(String unSubregion) {
        this.unSubregion = unSubregion;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
