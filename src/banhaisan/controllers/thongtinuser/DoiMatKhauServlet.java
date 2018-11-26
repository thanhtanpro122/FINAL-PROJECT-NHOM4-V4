package banhaisan.controllers.thongtinuser;

import banhaisan.models.datahandle.DangNhapService;
import banhaisan.models.datahandle.DanhMucService;
import banhaisan.models.datahandle.NguoiDungThongThuongService;
import banhaisan.models.datamodels.DangNhap_KetNoi;
import banhaisan.models.datamodels.DanhMuc;
import banhaisan.models.datamodels.NguoiDung;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "DoiMatKhauServlet",urlPatterns = {"/DoiMatKhau"})

public class DoiMatKhauServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        DangNhap_KetNoi user = (DangNhap_KetNoi) session.getAttribute("currentSessionUser");
        String email = user.getEmail();
        try {
            NguoiDung nguoiDung = new NguoiDung();
            nguoiDung.setEmail(email);
            nguoiDung.setMatKhau(request.getParameter("old_password"));

            String CorrectPW = user.getPassWord().trim().replaceAll("[\uFEFF-\uFFFF]", "");
            String InvalidPW = nguoiDung.getMatKhau().trim().replaceAll("[\uFEFF-\uFFFF]", "");
            if(CorrectPW.equals(InvalidPW)) {
                nguoiDung.setMatKhau(request.getParameter("new_password"));
                NguoiDungThongThuongService.getInstance().DoiMatKhau(nguoiDung);
                request.setAttribute("pwIsValid", true);
                RequestDispatcher rd = request.getRequestDispatcher("/Profile_Password.jsp");
                rd.forward(request,response);
            }
            else{
                request.setAttribute("pwIsValid",false);
                RequestDispatcher rd = request.getRequestDispatcher("/Profile_Password.jsp");
                rd.forward(request,response);
            }
        }catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<DanhMuc> danhMucs = DanhMucService.getInstance().getData();
            request.setAttribute("danhMucs",danhMucs);
        }catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Profile_Password.jsp");
        dispatcher.forward(request,response);
    }
}
