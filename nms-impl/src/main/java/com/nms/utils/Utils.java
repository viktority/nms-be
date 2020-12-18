package com.nms.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.impl.crypto.MacProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import java.security.Key;
import java.util.Base64;
import java.util.Date;

@Service
public class Utils {

    @Autowired
    Environment env;

    private static final Key secret = MacProvider.generateKey(SignatureAlgorithm.HS256);
    private static final byte[] secretBytes = secret.getEncoded();
    private static final String base64SecretBytes = Base64.getEncoder().encodeToString(secretBytes);

    public static String getTokenSecret() {
        return base64SecretBytes;
    }

    public static boolean hasTokenExpired(String token) {
        try {
            Claims claims = Jwts.parser().setSigningKey(getTokenSecret()).parseClaimsJws(token).getBody();

            Date tokenExpirationDate = claims.getExpiration();
            Date today = new Date();

            return tokenExpirationDate.before(today);
        } catch (Exception ex) {
            ex.printStackTrace();
            return true;
        }
    }

    public static String generateToken(String userId, Long expirationTime) {
        try {
            return Jwts.builder().setSubject(userId)
                    .setExpiration(new Date(System.currentTimeMillis() + expirationTime))
                    .signWith(SignatureAlgorithm.HS512, getTokenSecret()).compact();
        } catch (Exception ex) {
            return null;
        }


    }
}
