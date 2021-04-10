package ncc;

import java.util.Date;
import java.util.List;


public class NccResponseModel {
    private List<Application> applications;
    private boolean nccVerificationMember;
    private String appUserId;
    private String username;
    private String appUserEmail;
    private String mobileNumber;
    private String userType;
    private Date dateCreated;
    private String firstName;
    private String lastName;
    private String middleName;
    private String createdBy;
    private boolean active;
    private boolean emailVerified;
    private boolean phoneVerified;
    private String image;
    private String tour;
    private OrganizationId organizationId;
    private RoleId roleId;
    private boolean newUser;
    private String token;

    public List<Application> getApplications() {
        return applications;
    }

    public void setApplications(List<Application> applications) {
        this.applications = applications;
    }

    public boolean isNccVerificationMember() {
        return nccVerificationMember;
    }

    public void setNccVerificationMember(boolean nccVerificationMember) {
        this.nccVerificationMember = nccVerificationMember;
    }

    public String getAppUserId() {
        return appUserId;
    }

    public void setAppUserId(String appUserId) {
        this.appUserId = appUserId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAppUserEmail() {
        return appUserEmail;
    }

    public void setAppUserEmail(String appUserEmail) {
        this.appUserEmail = appUserEmail;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public boolean isEmailVerified() {
        return emailVerified;
    }

    public void setEmailVerified(boolean emailVerified) {
        this.emailVerified = emailVerified;
    }

    public boolean isPhoneVerified() {
        return phoneVerified;
    }

    public void setPhoneVerified(boolean phoneVerified) {
        this.phoneVerified = phoneVerified;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTour() {
        return tour;
    }

    public void setTour(String tour) {
        this.tour = tour;
    }

    public OrganizationId getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(OrganizationId organizationId) {
        this.organizationId = organizationId;
    }

    public RoleId getRoleId() {
        return roleId;
    }

    public void setRoleId(RoleId roleId) {
        this.roleId = roleId;
    }

    public boolean isNewUser() {
        return newUser;
    }

    public void setNewUser(boolean newUser) {
        this.newUser = newUser;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}


