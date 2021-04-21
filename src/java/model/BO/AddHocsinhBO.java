
package model.BO;

import model.DAO.AddHocsinhDAO;
import model.bean.Hocsinh;

public class AddHocsinhBO {
    AddHocsinhDAO addHocsinhDAO = new AddHocsinhDAO();
    public boolean  addHSBO(Hocsinh hs){
        return addHocsinhDAO.addHSDAO(hs);
    }
}
