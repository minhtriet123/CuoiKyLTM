/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.DAO.SearchHocsinhDAO;
import model.bean.Hocsinh;


public class SearchHocsinhBO {
    SearchHocsinhDAO searchHocsinhDAO = new SearchHocsinhDAO();
    public ArrayList<Hocsinh> searchHocsinh(String nameSearch) throws SQLException{
        return searchHocsinhDAO.searchWifeList(nameSearch);
    }
}
