package banhaisan.models.datahandle;

import banhaisan.models.datamodels.NguoiDung;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NguoiDungThongThuongService extends ConnectDatabase implements Business<NguoiDung> {

    @Override
    public ArrayList<NguoiDung> getData() throws SQLException, ClassNotFoundException {
        ArrayList<NguoiDung> nguoiDungs = new ArrayList<>();
        openConnection();

        String sql = "EXEC LayNguoiDungThongThuong";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);

        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            NguoiDung nguoiDung = new NguoiDung();
            nguoiDung.setMaNguoiDung(resultSet.getString(1));
            nguoiDung.setEmail(resultSet.getString(2));
            nguoiDung.setMatKhau(resultSet.getString(3));
            nguoiDung.setHoTen(resultSet.getString(4));
            nguoiDung.setDiaChi(resultSet.getString(5));
            nguoiDung.setSdt(resultSet.getString(6));
            nguoiDung.setGioiTinh(resultSet.getBoolean(7));
            nguoiDung.setNgaySinh(resultSet.getDate(8));
            nguoiDung.setAdmin(resultSet.getBoolean(9));
            nguoiDung.setKichHoat(resultSet.getBoolean(10));

            nguoiDungs.add(nguoiDung);
        }
        closeConnection();
        return nguoiDungs;
    }

    @Override
    public NguoiDung get(Object... keys) throws SQLException, ClassNotFoundException {
        if(keys.length<=0){
            return null;
        }
        openConnection();

        String sql= "EXEC LayMotNguoiDungThongThuong ?";
        PreparedStatement statement= connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, keys[0].toString());

        ResultSet resultSet= statement.executeQuery();
        NguoiDung nguoiDung = null;
        if(resultSet.next()){
            nguoiDung= new NguoiDung();
            nguoiDung.setMaNguoiDung(resultSet.getString(1));
            nguoiDung.setEmail(resultSet.getString(2));
            nguoiDung.setMatKhau(resultSet.getString(3));
            nguoiDung.setHoTen(resultSet.getString(4));
            nguoiDung.setDiaChi(resultSet.getString(5));
            nguoiDung.setSdt(resultSet.getString(6));
            nguoiDung.setGioiTinh(resultSet.getBoolean(7));
            nguoiDung.setNgaySinh(resultSet.getDate(8));
            nguoiDung.setAdmin(resultSet.getBoolean(9));
            nguoiDung.setKichHoat(resultSet.getBoolean(10));
        }
        closeConnection();
        return nguoiDung;

    }

    @Override
    public int add(NguoiDung model) throws SQLException, ClassNotFoundException {
        if (model == null) {
            return 0;
        }
        openConnection();

        String sql = "EXEC ThemNguoiDungThongThuong ?,?,?,?,?,?,?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, model.getEmail());
        statement.setString(2,model.getMatKhau());
        statement.setString(3,model.getHoTen());
        statement.setString(4,model.getDiaChi());
        statement.setString(5,model.getSdt());
        statement.setBoolean(6,model.getGioiTinh());
        statement.setDate(7,model.getNgaySinh());

        int rowAffected = statement.executeUpdate();
        closeConnection();
        return rowAffected;
    }

    @Override
    public int delete(NguoiDung model) throws SQLException, ClassNotFoundException {
        if (model == null) {
            return 0;
        }
        openConnection();

        String sql = "EXEC XoaNguoiDungThongThuong ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, model.getMaNguoiDung());

        int rowAffected = statement.executeUpdate();
        closeConnection();
        return rowAffected;
    }

    @Override
    public int modify(NguoiDung model) throws SQLException, ClassNotFoundException {
        if (model == null) {
            return 0;
        }
        openConnection();

        String sql = "EXEC SuaNguoiDungThongThuong  ?,?,?,?,?,?,?,?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, model.getMaNguoiDung());
        statement.setString(2, model.getEmail());
        statement.setString(3,model.getMatKhau());
        statement.setString(4,model.getHoTen());
        statement.setString(5,model.getDiaChi());
        statement.setString(6,model.getSdt());
        statement.setBoolean(7,model.getGioiTinh());
        statement.setDate(8,model.getNgaySinh());

        int rowAffected = statement.executeUpdate();
        closeConnection();
        return rowAffected;
    }
}
