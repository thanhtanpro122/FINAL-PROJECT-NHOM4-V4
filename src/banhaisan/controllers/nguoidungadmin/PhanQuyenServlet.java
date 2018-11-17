package banhaisan.controllers.nguoidungadmin;

import banhaisan.models.businessmodels.QuyenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "PhanQuyenServlet", urlPatterns = { "/Admin/PhanQuyen" })
public class PhanQuyenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String ma = request.getParameter("txtMa");
            Map<String, String[]> controlsMap = request.getParameterMap();
            Set s = controlsMap.entrySet();
            Iterator it = s.iterator();
            QuyenService service = new QuyenService();
            while (it.hasNext()) {
                Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it.next();
                String name = entry.getKey();
                if (name.equals("quyen")) {
                    String[] values = entry.getValue();
                    for (String value : values) {
                        if (!value.trim().isEmpty()) {
                            service.ganQuyen(value.trim(), ma.trim());
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Admin/NguoiDungAdmin");
    }

}
