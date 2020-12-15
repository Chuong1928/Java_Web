package controler;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.sachbo;



/**
 * Servlet implementation class UploadController
 */
@WebServlet("/UploadController")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		  request.setCharacterEncoding("UTF-8");
		    response.setCharacterEncoding("UTF-8");
		    response.setContentType("text/html; charset=UTF-8");
		    String masach="",tensach="",tacgia="",gia="",soluong="",ngaynhap="",maloai="",linkanh="",sotap="";
			DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "files";
		 response.getWriter().println(dirUrl1);
		 
		try {
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
				// xử lý file
				String nameimg = fileItem.getName();
				if (!nameimg.equals("")) {
			           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
					String dirUrl = request.getServletContext().getRealPath("") +  File.separator + "files";
					int vt=dirUrl.indexOf(".metadata");
					dirUrl=dirUrl.substring(0,vt-1)+"\\test1\\WebContent\\image_sach";
					 response.getWriter().println("<hr>"+dirUrl);
					File dir = new File(dirUrl);
					if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
						dir.mkdir();
					}
				           String fileImg = dirUrl + File.separator + nameimg;
				           File file = new File(fileImg);//tạo file
				            try {
				               fileItem.write(file);//lưu file
				              System.out.println("UPLOAD THÀNH CÔNG...!");
				              System.out.println("Đường dẫn lưu file là: "+dirUrl);
				              System.out.println("checkimg"+nameimg);
				              System.out.println("checkimg"+dirUrl);
				              System.out.println("checkimg"+fileImg);
				              System.out.println("checkimg"+file);
				              linkanh="image_sach/"+nameimg;
				              System.out.println("checkimg"+linkanh);
				 } catch (Exception e) {
				    e.printStackTrace();
				}
			}
		 }
			else//Neu la control
			{
				String txtmasach=fileItem.getFieldName();
				if(txtmasach.equals("txtmasach"))
					masach=fileItem.getString("UTF-8");
					//response.getWriter().println("MaSach: "+masach);
				String txttensach=fileItem.getFieldName();
				if(txttensach.equals("txttensach"))
					tensach=fileItem.getString("UTF-8");
					//response.getWriter().println("TenSach: "+tensach);
				String txttacgia=fileItem.getFieldName();
				if(txttacgia.equals("txttacgia"))
					
					tacgia=fileItem.getString("UTF-8");
				//	response.getWriter().println("TacGia: "+tacgia);
				String txtgia=fileItem.getFieldName();
				if(txtgia.equals("txtgia"))
					
					gia=fileItem.getString("UTF-8");
				//	response.getWriter().println("Gia: "+gia);
				String txtsoluong=fileItem.getFieldName();
				if(txtsoluong.equals("txtsoluong"))
					
					soluong=fileItem.getString("UTF-8");
					//response.getWriter().println("Soluong: "+soluong);
				String txttap=fileItem.getFieldName();
				if(txttap.equals("txttap"))
						sotap=fileItem.getString("UTF-8");
						//response.getWriter().println("So Tap: "+sotap);
				String txtngay=fileItem.getFieldName();
				if(txtngay.equals("txtngay"))
					ngaynhap=fileItem.getString("UTF-8");
					//response.getWriter().println("NgayNhap: "+ngaynhap);
				String txtfile=fileItem.getFieldName();
				//if(txtfile.equals("txtfile"))
					//response.getWriter().println("LinkAnh: "+fileItem.getString("UTF-8"));
				String txtloaisach=fileItem.getFieldName();
				if(txtloaisach.equals("txtloaisach"))
					maloai=fileItem.getString("UTF-8");
					response.getWriter().println("Loaisach: "+fileItem.getString("UTF-8"));
				
			}
			}
			//them sach
			sachbo sbo=new sachbo();
			//response.getWriter().println(sbo.ThemSach(masach, tensach, soluong, gia, maloai, sotap, linkanh, ngaynhap, tacgia));
			
			
			  if(sbo.ThemSach(masach, tensach, soluong, gia, maloai, sotap, linkanh,
			  ngaynhap, tacgia)!=0) { response.getWriter().println("Thêm sách thành công");
			  response.sendRedirect("tam");
			 }else { response.getWriter().println("Thêm sách thất bại"); }
			 
			 
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
