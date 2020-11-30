package com.nms.rest.server.models.helper;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.http.HttpStatus;

import java.util.Arrays;

@JsonFormat(shape = JsonFormat.Shape.OBJECT)
public enum Response {

    OK(HttpStatus.OK.toString(), HttpStatus.OK.getReasonPhrase()),
    DELETED(HttpStatus.OK.toString(), "Deleted"),
    ERROR(HttpStatus.EXPECTATION_FAILED.toString(), "Error Occurred"),
    NOT_FOUND(HttpStatus.NOT_FOUND.toString(), "Not Found"),
    CREATED(HttpStatus.CREATED.toString(), HttpStatus.CREATED.getReasonPhrase());
    private String messageId;
    private String description;

    Response(String messageId, String description) {
        this.messageId = messageId;
        this.description = description;
    }

    public String getMessageId() {
        return messageId;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @JsonCreator
    static Response findValue(@JsonProperty("messageId") String messageId, @JsonProperty("description") String description) {
        return Arrays.stream(Response.values()).filter(pt -> pt.messageId.equals(messageId) && pt.description.equals(description)).findFirst().get();
    }
}
