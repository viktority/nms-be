package com.nms.rest.server.models;


import com.nms.rest.server.models.helper.Response;

public class ResponseModel {
    private String statusId;
    private String description;

    public String getStatusId() {
        return statusId;
    }

    public void setStatusId(String statusId) {
        this.statusId = statusId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public static ResponseModel getModel(Response response) {
        return new ResponseModel(response.getMessageId(), response.getDescription());
    }

    public ResponseModel() {
    }

    public ResponseModel(String statusId, String description) {
        this.statusId = statusId;
        this.description = description;
    }
}
