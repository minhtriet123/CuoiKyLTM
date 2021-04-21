/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.DeleteHocsinhDAO;
import model.bean.Hocsinh;


public class DeleteHocsinhBO {
    DeleteHocsinhDAO deleteHsDAO = new DeleteHocsinhDAO();
    public boolean deleteHocsinh(String idhs){
    return deleteHsDAO.deleteHocSinh(idhs);
            }
}
