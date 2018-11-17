package banhaisan.controllers.quyen;

import banhaisan.models.businessmodels.NghiepVuService;
import banhaisan.models.businessmodels.QuyenService;
import banhaisan.models.datamodels.Quyen;
import banhaisan.models.viewmodels.QlyQuyen_ShowTable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SuaQuyenServlet" ,urlPatterns = "/Admin/ChinhSuaQuyen")
public class SuaQuyenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        Quyen quyen= new Quyen();
        quyen.setMaQuyen(request.getParameter("txt-ma-quyen"));
        quyen.setTenQuyen(request.getParameter("txt-ten-quyen"));
        quyen.setMaNghiepVu(Integer.parseInt(request.getParameter("nghiep-vu")));

        QuyenService service= new QuyenService();
        try {
            service.modify(quyen);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Admin/QlyQuyen");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idQuyen= request.getParameter("id");
        if(idQuyen == null){
            response.setStatus(400);
            return;
        }
        QuyenService service= new QuyenService();
        Quyen quyen= null;
        try {
            quyen = service.get(idQuyen);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        if(quyen == null){
            response.setStatus(400);
            return;
        }
        request.setAttribute("quyen", quyen);

        NghiepVuService nghiepVuService = new NghiepVuService();
        try {
            request.setAttribute("nghiepVus", nghiepVuService.getData());
            request.setAttribute("nghiepvu", nghiepVuService.get(quyen.getMaNghiepVu()));
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Admin/ChinhSuaQuyen.jsp");
        dispatcher.forward(request, response);

    }
}
