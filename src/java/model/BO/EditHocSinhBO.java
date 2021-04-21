/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.EditHocSinhDAO;
import model.bean.Hocsinh;

public class EditHocSinhBO {
    EditHocSinhDAO editHocSinhDAO = new EditHocSinhDAO();
    public boolean editHocSinh(Hocsinh hs){
        return editHocSinhDAO.editHocSinh(hs);
    }
    public Hocsinh getInforHocsinh(String idhs){
        return editHocSinhDAO.getInforEditDAO(idhs);
    }
}
