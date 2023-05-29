package com.nhom8.context;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;

public class HashUtil {
   public static String generatePasswordHash(String password)
           throws NoSuchAlgorithmException, InvalidKeySpecException {
      char[] chars = password.toCharArray();
      byte[] salt = getSalt();

      byte[] hash = createHash(chars, salt);

      return toHex(salt) + "." + toHex(hash);
   }

   public static boolean validatePassword(String inputPassword, String hashedPassword)
           throws NoSuchAlgorithmException, InvalidKeySpecException {
      // Get salt and hashed password itself
      String[] elements = hashedPassword.split("\\.");
      byte[] password = fromHex(elements[1]);
      byte[] salt = fromHex(elements[0]);

      // Create hash and check equality
      char[] chars = inputPassword.toCharArray();

      byte[] hash = createHash(chars, salt);

      return checkEquals(password, hash);
      // return Arrays.equals(password, hash);
   }

   private static byte[] createHash(char[] password, byte[] salt)
           throws NoSuchAlgorithmException, InvalidKeySpecException {
      int iterations = 1000;

      PBEKeySpec spec = new PBEKeySpec(password, salt, iterations, 64 * 8);
      SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");

      return skf.generateSecret(spec).getEncoded();
   }

   private static byte[] getSalt() throws NoSuchAlgorithmException {
      SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
      byte[] salt = new byte[16];
      sr.nextBytes(salt);
      return salt;
   }

   private static String toHex(byte[] array) {
      BigInteger bi = new BigInteger(1, array);
      String hex = bi.toString(16);

      int paddingLength = (array.length * 2) - hex.length();
      if (paddingLength > 0) {
         return String.format("%0" + paddingLength + "d", 0) + hex;
      } else {
         return hex;
      }
   }

   private static byte[] fromHex(String hex) {
      byte[] binary = new byte[hex.length() / 2];
      for (int i = 0; i < binary.length; i++) {
         binary[i] = (byte) Integer.parseInt(hex.substring(2 * i, 2 * i + 2), 16);
      }
      return binary;
   }

   private static boolean checkEquals(byte[] a, byte[] b) {
      int diff = a.length ^ b.length;
      for (int i = 0; i < a.length && i < b.length; i++)
         diff |= a[i] ^ b[i];
      return diff == 0;
   }
}
