package com.kuang.servlet.user;

import com.kuang.pojo.Drug;
import com.kuang.service.drug.DrugServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class DrugServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method ="abc";
        method = req.getParameter("method");
        System.out.println(method); //返回的是getDrug
        if (method.equals("getDrug")){
            this.getDrugS(req,resp);
        } else if (method.equals("upload")){
            this.uploadSample(req,resp);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    //get drug list
    public void getDrugS(HttpServletRequest req, HttpServletResponse resp){
        // using service
        DrugServiceImpl drugService = new DrugServiceImpl();
        List<Drug> drugList = null;
        System.out.println("drug servlet is used");
        // get the table
        drugList = drugService.getDrugList();
        req.setAttribute("drugList",drugList);
        // send the result to front-end
        try {
            req.getRequestDispatcher("drug.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //upload samples
    public void uploadSample(HttpServletRequest req, HttpServletResponse resp){

    }
}
