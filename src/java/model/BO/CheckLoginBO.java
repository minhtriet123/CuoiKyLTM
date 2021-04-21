/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.CheckLoginDAO;

/**
 *
 * @author ADMIN
 */
public class CheckLoginBO {
    CheckLoginDAO checkLoginDAO = new CheckLoginDAO();
    public boolean isValidUser(String userName, String password) throws ClassNotFoundException {
        return checkLoginDAO.isExistUser(userName, password);
    }
    
}
