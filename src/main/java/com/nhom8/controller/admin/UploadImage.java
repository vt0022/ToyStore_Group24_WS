package com.nhom8.controller.admin;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhom8.context.CloudinaryUtil;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;


import javax.servlet.http.Part;
import java.util.Map;

public class UploadImage {
    public static Map uploadImage(String imageName, Part file) {
        Cloudinary cloudinary = CloudinaryUtil.getCloudinary();

        try {
            byte[] sourceBytes = IOUtils.toByteArray(file.getInputStream());

            Base64 base64 = new Base64();
            String encodedString = base64.encodeToString(sourceBytes);

            // Upload the image
            Map params1 =
                    ObjectUtils.asMap(
                            "folder",
                            "web/image",
                            "public_id",
                            imageName,
                            "use_filename",
                            true,
                            "unique_filename",
                            false,
                            "overwrite",
                            true);

            Map result = cloudinary.uploader().upload("data:image/png;base64," + encodedString, params1);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}