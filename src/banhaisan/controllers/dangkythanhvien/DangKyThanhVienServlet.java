package banhaisan.controllers.dangkythanhvien;

import banhaisan.models.datahandle.NguoiDungAdminService;
import banhaisan.models.datahandle.NguoiDungThongThuongService;
import banhaisan.models.datamodels.NguoiDung;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "DangKyThanhVienServlet", urlPatterns = {"/DangKyThanhVien"})
public class DangKyThanhVienServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        NguoiDung nguoiDung= new NguoiDung();
        nguoiDung.setHoTen(request.getParameter("hoten"));
        nguoiDung.setGioiTinh(Boolean.getBoolean(request.getParameter("gioitinh")));
        nguoiDung.setEmail(request.getParameter("email"));
        nguoiDung.setSdt(request.getParameter("sodienthoai"));
        nguoiDung.setDiaChi(request.getParameter("diachi"));
        java.util.Date ngaySinh = null;
        if (request.getParameter("ngaysinh") != null) {
            try {
                ngaySinh = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("ngaysinh"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        nguoiDung.setNgaySinh(new java.sql.Date(ngaySinh.getTime()));
        nguoiDung.setMatKhau(request.getParameter("matkhau"));

        NguoiDungThongThuongService nguoiDungThongThuongs= new NguoiDungThongThuongService();
        NguoiDung nd=null;
        try {
            if(nguoiDungThongThuongs.add(nguoiDung)==1) {
                nguoiDungThongThuongs.add(nguoiDung);
                out.println("<p style='color:green;'>Đăng ký thành công!</p>");
            }
            else {
                out.println("<meta http-equiv='refresh' content='3;URL=/DangKi.jsp'>");//redirects after 3 seconds
                out.println("<p style='color:red;'>Thất bại!</p>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            HttpSession error = request.getSession();
            error.setAttribute("error", e.toString());
            e.printStackTrace();
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/DangKi.jsp");
        dispatcher.forward(request,response);
    }
}
