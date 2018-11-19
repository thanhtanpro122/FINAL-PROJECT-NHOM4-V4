package banhaisan.controllers.baiviet;

import banhaisan.models.businessmodels.BaiVietService;
import banhaisan.models.datamodels.BaiViet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "BaiVietServlet" , urlPatterns = "/Admin/QlyBaiViet")
public class BaiVietServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BaiVietService service= new BaiVietService();
        try {
            ArrayList<BaiViet> baiViets= service.getData();
            request.setAttribute("baiViet", baiViets);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Admin/QlyBaiViet.jsp");
        dispatcher.forward(request,response);


    }
}
