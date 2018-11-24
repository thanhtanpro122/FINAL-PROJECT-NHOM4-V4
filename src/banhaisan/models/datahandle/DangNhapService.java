package banhaisan.models.businessmodels;

import banhaisan.models.businessmodels.ConnectDatabase;
import banhaisan.models.datamodels.DangNhap_KetNoi;

public class DangNhapService extends ConnectDatabase {
    private DangNhap_KetNoi ketNoi;

    public DangNhapService(DangNhap_KetNoi ketNoi) {
        this.ketNoi = ketNoi;

        IP = ketNoi.getIpAddress();
        serverName= ketNoi.getEmail();
        passWord= ketNoi.getPassWord();

    }
}
