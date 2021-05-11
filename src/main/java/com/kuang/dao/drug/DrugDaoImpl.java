package com.kuang.dao.drug;

import com.kuang.dao.BaseDao;
import com.kuang.pojo.Drug;
import com.kuang.pojo.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DrugDaoImpl implements DrugDao{
    @Override
    public List<Drug> getDrugList(Connection connection) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet resultSet = null;
        ArrayList<Drug> drugs = new ArrayList<Drug>();

        if (connection!=null){
            String sql = "select * from drug";
            Object[] params = {};
            resultSet = BaseDao.execute(connection, sql,params, resultSet,pstm );

            while (resultSet.next()){
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String objCls = resultSet.getString("obj_cls");
                String drugUrl = resultSet.getString("drug_url");
                boolean biomarker = resultSet.getBoolean("biomarker");
                Drug drug = new Drug(id, name, biomarker, drugUrl, objCls);
                drugs.add(drug);
            }
            BaseDao.closeResource(null,pstm,resultSet);
        }
        return drugs;
    }
}
