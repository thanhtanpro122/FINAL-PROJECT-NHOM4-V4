package banhaisan.controllers.nguoidungthongthuong;


import banhaisan.models.businessmodels.NguoiDungAdminService;

import banhaisan.models.businessmodels.NguoiDungThongThuongService;
import banhaisan.models.datamodels.NguoiDung;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "NguoiDungThongThuongServlet", urlPatterns = { "/Admin/NguoiDungThongThuong" })
public class NguoiDungThongThuongServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            NguoiDungThongThuongService service= new NguoiDungThongThuongService();
            ArrayList<NguoiDung> nguoiDungs= service.getData();

            request.setAttribute("nguoiDungs" , nguoiDungs);

        } catch (SQLException | ClassNotFoundException e){

            e.printStackTrace();
        }

        RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Admin/QlyNguoiDungThongThuong.jsp");
        dispatcher.forward(request,response);
    }
}

