package vn.edu.iuh.www_doanhoaian_week01.models;

public class Account {
    private String accountId;
    private String fullName;
    private String password;
    private String email;
    private String phone;
    private int status;

    // Constructors
    public Account() {
    }

    public Account(String accountId) {
        this.accountId = accountId;

    }

    public Account(String accountId, String fullName, String password) {
        this.accountId = accountId;
        this.fullName = fullName;
        this.password = password;
    }

    public Account(String accountId, String fullName, String password, String email, String phone, int status) {
        this.accountId = accountId;
        this.fullName = fullName;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.status = status;
    }

    public Account(String fullName, String password, String email, String phone, int status) {
        this.fullName = fullName;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.status = status;
    }

    // Getter and Setter methods
    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Account [accountId=" + accountId + ", fullName=" + fullName + ", password=" + password + ", email="
                + email + ", phone=" + phone + ", status=" + status + "]";
    }
}
