package banhaisan.models.datahandle;

import banhaisan.models.datamodels.NghiepVu;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class NghiepVuService extends ConnectDatabase implements Business<NghiepVu> {
    @Override
    public ArrayList<NghiepVu> getData() throws SQLException, ClassNotFoundException {
        openConnection();
        ArrayList<NghiepVu> nghiepVus = new ArrayList<>();
        String sql = "EXEC LayNghiepVu";
        Statement statement = connection.createStatement();
        ResultSet res = statement.executeQuery(sql);
        while (res.next()) {
            NghiepVu nghiepVu = new NghiepVu();
            nghiepVu.setIdNghiepVu(res.getInt(1));
            nghiepVu.setTenNghiepVu(res.getString(2));
            nghiepVu.setMoTa(res.getString(3));
            nghiepVus.add(nghiepVu);
        }
        closeConnection();
        return nghiepVus;
    }

    @Override
    public NghiepVu get(Object... keys) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public int add(NghiepVu model) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public int delete(NghiepVu model) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public int modify(NghiepVu model) throws SQLException, ClassNotFoundException {
        return 0;
    }
}
