package com.navesh;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/upload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<FileItem> multifiles = null;
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		try {
			multifiles = sf.parseRequest(request);
		
		for(FileItem item:multifiles) {
				item.write(new File("D:\\Projects\\Java\\Backend\\Maven\\FileUpload",item.getName()));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("File Uploaded");
	}

}
