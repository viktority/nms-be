package com.nms.models;

public class LoginResponseModel {
    private String token;
    private String apiKey;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getApiKey() {
        return apiKey;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public LoginResponseModel(String token, String apiKey) {
        this.token = token;
        this.apiKey = apiKey;
    }

    public LoginResponseModel() {
    }
}
