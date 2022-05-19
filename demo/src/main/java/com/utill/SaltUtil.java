package com.utill;

import com.prj.dto.Salt;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;

public class SaltUtil {

//    public SaltUtil() {}

    public Salt encrypt (String pw) {
        Salt salt = new Salt();
        try {
            SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
            byte[] bytes = new byte[16];                                                                                 //16바이트 배열의 요소를 난수로 채움
            random.nextBytes(bytes);
            salt.setSalt(new String(Base64.getEncoder().encode(bytes)));                                                 //기본 유형 base64 인코딩체계 Base64.Encoder를 사용하여 인코딩 하는 것 반환 byte로 변환

            MessageDigest md = MessageDigest.getInstance("SHA-256");                                                     //SHA-256 형식으로 암호화
            md.update(salt.getSalt().getBytes());                                                                        //지정된 바이트 데이터를 사용해 Digest 갱신
            md.update(pw.getBytes());
            salt.setEncrypt(String.format("%064x", new BigInteger(1, md.digest())));                              //x 는 16진수 총 64자리의 16진수에서 값이 들어가지 못한 자리는 0으로 채워진다.

        } catch (NoSuchAlgorithmException e) {                                                                           //특정 암호화 알고리즘이 요청되었지만 환경에서 사용할수 없을때 발생

        }
        return salt;
    }

    public String pw (String salt, String inputPw) {
        String encrypt = "";
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(salt.getBytes());
            md.update(inputPw.getBytes());
            encrypt = String.format("%064x", new BigInteger(1, md.digest()));

        }catch (NoSuchAlgorithmException e) {
        }
        return encrypt;
    }

}
