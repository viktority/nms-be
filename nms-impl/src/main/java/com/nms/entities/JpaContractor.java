package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class JpaContractor {
    @Id
    @GeneratedValue
    private String contractorId;
    private boolean existingContractor;
    private int unreadCount;
    private String verificationStatus;
    private String currentMonitoringStatus;
    private boolean currentUserWatchingComplaint;
    private String tradeName;
    private String rcNumber;
    private String tinNumber;
    private Date dateOfRegistration;
    private String nccId;
    private String headOfficeAddressStreet;
    private String companyName;
    private String phoneNumber;
    private String fax;
    private String website;
    private String headOfficeAddressCity;
    private String headOfficeAddressZip;
    private String headOfficeAddressPobox;
    private String headOfficeAddressPmb;
    private String companyContactPhone1;
    private String companyContactPhone2;
    private String companyContactAlternativeEmail;
    private String companyContactEmail;
    private boolean barred;
    private String oldContractorUsername;
    private String certificateNumber;
    private boolean companyEmailVerified;
    private String registrationNumber;
    private String thirdPartyBusinessNumber;
    private Date dateModified;
    private String modifiedBy;
    private Date dateCreated;
    private String createdBy;
    @OneToOne
    private CountryOfRegistration countryOfRegistration;
    @OneToOne
    private ActualCompanyType actualCompanyType;
    private String thirdPartyBusinessName;
    @OneToOne
    private OwnershipType ownershipType;
    @OneToOne
    private CompanyType companyType;
    @OneToOne
    private HeadOfficeAddressState headOfficeAddressState;

    public String getContractorId() {
        return contractorId;
    }

    public void setContractorId(String contractorId) {
        this.contractorId = contractorId;
    }

    public boolean isExistingContractor() {
        return existingContractor;
    }

    public void setExistingContractor(boolean existingContractor) {
        this.existingContractor = existingContractor;
    }

    public int getUnreadCount() {
        return unreadCount;
    }

    public void setUnreadCount(int unreadCount) {
        this.unreadCount = unreadCount;
    }

    public String getVerificationStatus() {
        return verificationStatus;
    }

    public void setVerificationStatus(String verificationStatus) {
        this.verificationStatus = verificationStatus;
    }

    public String getCurrentMonitoringStatus() {
        return currentMonitoringStatus;
    }

    public void setCurrentMonitoringStatus(String currentMonitoringStatus) {
        this.currentMonitoringStatus = currentMonitoringStatus;
    }

    public boolean isCurrentUserWatchingComplaint() {
        return currentUserWatchingComplaint;
    }

    public void setCurrentUserWatchingComplaint(boolean currentUserWatchingComplaint) {
        this.currentUserWatchingComplaint = currentUserWatchingComplaint;
    }

    public String getTradeName() {
        return tradeName;
    }

    public void setTradeName(String tradeName) {
        this.tradeName = tradeName;
    }

    public String getRcNumber() {
        return rcNumber;
    }

    public void setRcNumber(String rcNumber) {
        this.rcNumber = rcNumber;
    }

    public String getTinNumber() {
        return tinNumber;
    }

    public void setTinNumber(String tinNumber) {
        this.tinNumber = tinNumber;
    }

    public Date getDateOfRegistration() {
        return dateOfRegistration;
    }

    public void setDateOfRegistration(Date dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration;
    }

    public String getNccId() {
        return nccId;
    }

    public void setNccId(String nccId) {
        this.nccId = nccId;
    }

    public String getHeadOfficeAddressStreet() {
        return headOfficeAddressStreet;
    }

    public void setHeadOfficeAddressStreet(String headOfficeAddressStreet) {
        this.headOfficeAddressStreet = headOfficeAddressStreet;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getHeadOfficeAddressCity() {
        return headOfficeAddressCity;
    }

    public void setHeadOfficeAddressCity(String headOfficeAddressCity) {
        this.headOfficeAddressCity = headOfficeAddressCity;
    }

    public String getHeadOfficeAddressZip() {
        return headOfficeAddressZip;
    }

    public void setHeadOfficeAddressZip(String headOfficeAddressZip) {
        this.headOfficeAddressZip = headOfficeAddressZip;
    }

    public String getHeadOfficeAddressPobox() {
        return headOfficeAddressPobox;
    }

    public void setHeadOfficeAddressPobox(String headOfficeAddressPobox) {
        this.headOfficeAddressPobox = headOfficeAddressPobox;
    }

    public String getHeadOfficeAddressPmb() {
        return headOfficeAddressPmb;
    }

    public void setHeadOfficeAddressPmb(String headOfficeAddressPmb) {
        this.headOfficeAddressPmb = headOfficeAddressPmb;
    }

    public String getCompanyContactPhone1() {
        return companyContactPhone1;
    }

    public void setCompanyContactPhone1(String companyContactPhone1) {
        this.companyContactPhone1 = companyContactPhone1;
    }

    public String getCompanyContactPhone2() {
        return companyContactPhone2;
    }

    public void setCompanyContactPhone2(String companyContactPhone2) {
        this.companyContactPhone2 = companyContactPhone2;
    }

    public String getCompanyContactAlternativeEmail() {
        return companyContactAlternativeEmail;
    }

    public void setCompanyContactAlternativeEmail(String companyContactAlternativeEmail) {
        this.companyContactAlternativeEmail = companyContactAlternativeEmail;
    }

    public String getCompanyContactEmail() {
        return companyContactEmail;
    }

    public void setCompanyContactEmail(String companyContactEmail) {
        this.companyContactEmail = companyContactEmail;
    }

    public boolean isBarred() {
        return barred;
    }

    public void setBarred(boolean barred) {
        this.barred = barred;
    }

    public String getOldContractorUsername() {
        return oldContractorUsername;
    }

    public void setOldContractorUsername(String oldContractorUsername) {
        this.oldContractorUsername = oldContractorUsername;
    }

    public String getCertificateNumber() {
        return certificateNumber;
    }

    public void setCertificateNumber(String certificateNumber) {
        this.certificateNumber = certificateNumber;
    }

    public boolean isCompanyEmailVerified() {
        return companyEmailVerified;
    }

    public void setCompanyEmailVerified(boolean companyEmailVerified) {
        this.companyEmailVerified = companyEmailVerified;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public String getThirdPartyBusinessNumber() {
        return thirdPartyBusinessNumber;
    }

    public void setThirdPartyBusinessNumber(String thirdPartyBusinessNumber) {
        this.thirdPartyBusinessNumber = thirdPartyBusinessNumber;
    }

    public Date getDateModified() {
        return dateModified;
    }

    public void setDateModified(Date dateModified) {
        this.dateModified = dateModified;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public CountryOfRegistration getCountryOfRegistration() {
        return countryOfRegistration;
    }

    public void setCountryOfRegistration(CountryOfRegistration countryOfRegistration) {
        this.countryOfRegistration = countryOfRegistration;
    }

    public ActualCompanyType getActualCompanyType() {
        return actualCompanyType;
    }

    public void setActualCompanyType(ActualCompanyType actualCompanyType) {
        this.actualCompanyType = actualCompanyType;
    }

    public String getThirdPartyBusinessName() {
        return thirdPartyBusinessName;
    }

    public void setThirdPartyBusinessName(String thirdPartyBusinessName) {
        this.thirdPartyBusinessName = thirdPartyBusinessName;
    }

    public OwnershipType getOwnershipType() {
        return ownershipType;
    }

    public void setOwnershipType(OwnershipType ownershipType) {
        this.ownershipType = ownershipType;
    }

    public CompanyType getCompanyType() {
        return companyType;
    }

    public void setCompanyType(CompanyType companyType) {
        this.companyType = companyType;
    }

    public HeadOfficeAddressState getHeadOfficeAddressState() {
        return headOfficeAddressState;
    }

    public void setHeadOfficeAddressState(HeadOfficeAddressState headOfficeAddressState) {
        this.headOfficeAddressState = headOfficeAddressState;
    }
}
