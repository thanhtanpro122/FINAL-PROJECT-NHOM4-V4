package banhaisan.models.businessmodels;

import banhaisan.models.datamodels.Quyen;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QuyenService extends ConnectDatabase implements Business<Quyen> {
    @Override
    public ArrayList<Quyen> getData() throws SQLException, ClassNotFoundException {
        ArrayList<Quyen> quyens= new ArrayList<>();
        openConnection();

        String sql = "EXEC LayQuyen";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            Quyen quyen= new Quyen();
            quyen.setMaQuyen(resultSet.getString(1));
            quyen.setTenQuyen(resultSet.getString(2));

            quyens.add(quyen);
        }
        closeConnection();
        return quyens;

    }

    @Override
    public Quyen get(Object... keys) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public int add(Quyen model) throws SQLException, ClassNotFoundException {
        if (model == null) {
            return 0;
        }
        openConnection();

        String sql = "EXEC ThemQuyen ?,?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, model.getMaQuyen());
        statement.setString(2, model.getTenQuyen());

        int rowAffected = statement.executeUpdate();
        closeConnection();
        return rowAffected;
    }

    @Override
    public int delete(Quyen model) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public int modify(Quyen model) throws SQLException, ClassNotFoundException {
        return 0;
    }
}
