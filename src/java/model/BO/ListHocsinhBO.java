/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.DAO.ListHocsinhDAO;
import model.bean.Hocsinh;

public class ListHocsinhBO {
    ListHocsinhDAO listhsDAO = new ListHocsinhDAO();
    public ArrayList<Hocsinh> getHocsinhList() throws SQLException {
        return listhsDAO.getHocsinhList();
    }
}
