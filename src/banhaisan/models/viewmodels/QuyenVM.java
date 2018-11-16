package banhaisan.models.viewmodels;

public class QuyenVM {
    private String idQuyen;
    private String tenQuyen;
    private boolean choPhep;

    public QuyenVM() {
    }

    public QuyenVM(String idQuyen, String tenQuyen, boolean choPhep) {
        this.idQuyen = idQuyen;
        this.tenQuyen = tenQuyen;
        this.choPhep = choPhep;
    }

    public String getIdQuyen() {
        return idQuyen;
    }

    public void setIdQuyen(String idQuyen) {
        this.idQuyen = idQuyen;
    }

    public String getTenQuyen() {
        return tenQuyen;
    }

    public void setTenQuyen(String tenQuyen) {
        this.tenQuyen = tenQuyen;
    }

    public boolean isChoPhep() {
        return choPhep;
    }

    public void setChoPhep(boolean choPhep) {
        this.choPhep = choPhep;
    }
}
