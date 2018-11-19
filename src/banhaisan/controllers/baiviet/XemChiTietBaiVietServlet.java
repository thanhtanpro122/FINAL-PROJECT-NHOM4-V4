package banhaisan.controllers.baiviet;

import banhaisan.models.businessmodels.BaiVietService;
import banhaisan.models.businessmodels.DanhMucService;
import banhaisan.models.datamodels.BaiViet;
import banhaisan.models.datamodels.DanhMuc;
import banhaisan.models.datamodels.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "XemChiTietBaiVietServlet", urlPatterns = {"/Admin/XemCTBaiViet"})
public class XemChiTietBaiVietServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idBaiViet = request.getParameter("idBV");
        if(idBaiViet == null)
        {
            response.setStatus(400);
            return;
        }
        BaiViet bv = null;
        try{
            BaiVietService service = new BaiVietService();
            bv=service.get(idBaiViet);
            ArrayList<DanhMuc> danhMucs = DanhMucService.getInstance().getData();
            request.setAttribute("danhMucs",danhMucs);
        }catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        if(bv==null)
        {
            response.setStatus(400);
            return;
        }

        request.setAttribute("baiViet",bv);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Admin/ChiTietBaiViet.jsp");
        dispatcher.forward(request,response);
    }
}
