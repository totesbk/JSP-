package com.green.fileUpload;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MultiUploadServlet
 */
@WebServlet("/upload.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public MultiUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();	
		
		String savePath = "Upload";//*
		//업로드 위치
		
		int uploadFileSizeLimit = 5*1024*1024;
		//최대 업로드 파일 크기 => 5mb
		
		String encType = "UTF-8"; //*
	
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		System.out.println("서버 상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(request, //request객체
														  uploadFilePath, //서버상의 실제 디렉토리 위치
														  uploadFileSizeLimit, //최대 업로드 파일 크기
														  encType, //파일 이름 인코딩 방식
														  new DefaultFileRenamePolicy()); //동일 이름의 파일이 존내하면 새로운 이름을 부여함
			String fileName = multi.getFilesystemName("fileUpload");
			//업로드 파일이름 얻기
			if(fileName == null) { //파일 업로드 실패
				System.out.println("파일 업로드 실패");
			}else {
				out.println("<br> 글쓴이 : "+multi.getParameter("name"));
				out.println("<br> 제   목 : "+multi.getParameter("title"));
				out.println("<br> 파일명 : "+fileName);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}

}
