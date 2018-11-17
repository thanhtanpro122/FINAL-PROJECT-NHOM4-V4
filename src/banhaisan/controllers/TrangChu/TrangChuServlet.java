package banhaisan.controllers.TrangChu;

import banhaisan.models.businessmodels.DanhMucService;
import banhaisan.models.businessmodels.SanPhamService;
import banhaisan.models.datamodels.DanhMuc;
import banhaisan.models.datamodels.SanPham;

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

@WebServlet(name = "TrangChuServlet",urlPatterns = {"/Index"})
public class TrangChuServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<SanPham> sanPhams = null;
        try {
            sanPhams = SanPhamService.getInstance().getDataCategory();
            ArrayList<DanhMuc> danhMucs = DanhMucService.getInstance().getData();
            request.setAttribute("danhMucs",danhMucs);
            HttpSession session = request.getSession();
//            session.setAttribute("idDanhMuc",);
        }catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        if(sanPhams==null)
        {
            response.setStatus(400);
            return;
        }

        request.setAttribute("sanPhams",sanPhams);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index-Login.jsp");
        dispatcher.forward(request,response);
    }
}
