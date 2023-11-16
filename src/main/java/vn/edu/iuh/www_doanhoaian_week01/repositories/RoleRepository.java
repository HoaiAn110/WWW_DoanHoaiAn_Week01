package vn.edu.iuh.www_doanhoaian_week01.repositories;



import vn.edu.iuh.www_doanhoaian_week01.connectDB.ConnectDB;
import vn.edu.iuh.www_doanhoaian_week01.models.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleRepository {
    Connection con;

    public RoleRepository() {
        con = ConnectDB.getInstance().getConnection();
    }

    public List<Role> getAllRole() {
        List<Role> roles = new ArrayList<>();
        try {
            String sql = "SELECT * FROM role";
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Role role = new Role();
                role.setRoleId(rs.getString("role_id"));
                role.setRoleName(rs.getString("role_name"));
                role.setDescription(rs.getString("description"));
                role.setStatus(rs.getInt("status"));
                roles.add(role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }

}
