/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.ResetHocphiDAO;

/**
 *
 * @author ADMIN
 */
public class ResetHocphiBO {
    ResetHocphiDAO rshocphiDAO = new ResetHocphiDAO();
    public boolean ResetHocPhiBO(){
    return rshocphiDAO.ResetHocphi();}
    
}
