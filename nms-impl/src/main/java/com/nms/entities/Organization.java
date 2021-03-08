package com.nms.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Entity(name = "nms_organization")
public class Organization implements Serializable {

    private static final long serialVersionUID = -2731425678149216053L;

    @Id
    private String organizationId;
    private boolean existingContractor;
    private int unreadCount;
    private String verificationStatus;
    private String contractorId;
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
    private int certificateNumber;
    private boolean companyEmailVerified;
    private String registrationNumber;
    private String thirdPartyBusinessNumber;

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
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

    public String getContractorId() {
        return contractorId;
    }

    public void setContractorId(String contractorId) {
        this.contractorId = contractorId;
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

    public int getCertificateNumber() {
        return certificateNumber;
    }

    public void setCertificateNumber(int certificateNumber) {
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
}
