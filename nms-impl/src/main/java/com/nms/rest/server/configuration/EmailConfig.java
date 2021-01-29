package com.nms.rest.server.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Properties;

@Component
public class EmailConfig {
    @Value("${spring.mail.host}")
    private String host;
    @Value("${spring.mail.port}")
    private String portProxy;
    private int port;
    @Value("${spring.mail.username}")
    private String username;
    @Value("${spring.mail.password}")
    private String password;

    @Value("${spring.mail.properties.debug}")
    private String debugMode;

    @Value("${spring.mail.properties.mail.smtp.starttls.enable}")
    private String starttlsEnable;

    @Value("${spring.mail.properties.mail.smtp.auth}")
    private String auth;

    @Value("${spring.mail.properties.mail.transport.protocol}")
    private String protocol;

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return Integer.parseInt(getPortProxy());
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPortProxy() {
        return portProxy;
    }

    public void setPortProxy(String portProxy) {
        this.portProxy = portProxy;
    }

    public String getDebugMode() {
        return debugMode;
    }

    public void setDebugMode(String debugMode) {
        this.debugMode = debugMode;
    }

    public String getStarttlsEnable() {
        return starttlsEnable;
    }

    public void setStarttlsEnable(String starttlsEnable) {
        this.starttlsEnable = starttlsEnable;
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public String getProtocol() {
        return protocol;
    }

    public void setProtocol(String protocol) {
        this.protocol = protocol;
    }

    public Properties getProperties() {
        Properties props = new Properties();

        props.put("mail.smtp.host", getHost());
        props.put("mail.smtp.port", getPort());
        props.put("mail.smtp.user", getUsername());

        props.put("mail.smtp.auth", getAuth());
        props.put("mail.smtp.starttls.enable", getStarttlsEnable());
        props.put("mail.smtp.debug", getDebugMode());
        props.put("mail.smtp.protocol", getProtocol());

        props.put("mail.smtp.socketFactory.port", getPort());
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
        return props;
    }
}
