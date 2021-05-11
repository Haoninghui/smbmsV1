package com.kuang.dao.drug;

import com.kuang.pojo.Drug;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface DrugDao {
    //get the drug
    public List<Drug> getDrugList(Connection connection) throws SQLException;
    //upload sample

}
