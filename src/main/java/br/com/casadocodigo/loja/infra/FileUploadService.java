package br.com.casadocodigo.loja.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {
	private static String UPLOADED_FOLDER = "/tmp";

	@Autowired
    private HttpServletRequest request;

    public String write(MultipartFile file) {
        try {
            String realPath = request.getServletContext().getRealPath("/"+UPLOADED_FOLDER);
            String path = realPath + "/" + file.getOriginalFilename();
            file.transferTo(new File(path));
            return path;

        } catch (IllegalStateException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
