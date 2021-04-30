package net.codejava;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.JavaWebApplication.Model.MyDb;

public class PaymentDAO 
{
	MyDb newconn = new MyDb();
    public List<Payment> payments() throws SQLException
    {
        List<Payment> listCategory = new ArrayList<>();
        try (Connection connection = newconn.getCon()) 
        {
            String sql = "SELECT * FROM payments"; 
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) 
            {
                int id = result.getInt("Doc_id");
                String name = result.getString("Aname");
                String dat = result.getString("Datee");
                float fee = result.getFloat("Fees");
                Payment payment = new Payment(id,name,dat,fee);
                     
                listCategory.add(payment);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return listCategory;
    }
    
    
}