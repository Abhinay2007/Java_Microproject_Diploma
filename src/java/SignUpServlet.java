/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Sushil
 */
@WebServlet(urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {
    int a=0;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection c;
            Class.forName("com.mysql.cj.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhinay","root","admin");
            String na=request.getParameter("name");
            String em=request.getParameter("email");
            String phno= request.getParameter("number");
            String user =request.getParameter("usname");
            String pass=request.getParameter("pwd");
            String cpass=request.getParameter("cpwd");
            PreparedStatement p =c.prepareStatement("select uname from login where uname=?");
            p.setString(1, user);
            ResultSet rs =p.executeQuery();


            if( pass.equals(cpass) != true)
            {    
                  a=1;
                  getServletContext().setAttribute("a", a);
                  RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
                  rd.forward(request, response);
                 
//               out.println("<script type=\"text/javascript\">\n" +
//                           "    var msg = \"Confirm password not match. Pleace try again!!!!!!!!!!! Go back\";\n" +
//                           "    alert(msg);\n" + "</script>");              
            }
            else if(rs.next()){
                 a=2;
                  getServletContext().setAttribute("a", a);
                  RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
                  rd.forward(request, response);
                
//               out.println("<script type=\"text/javascript\">\n" +
//                           "    var msg = \"Username already register. Pleace get different Username!!!!!!!!!!! Go back\";\n" +
//                           "    alert(msg);\n" + "</script>");  
            }
            else
            {
          
                    
                PreparedStatement ps =c.prepareStatement("insert into abhinay.login values(?,?,?,?,?,?,?,?);");
                ps.setString(1, user);
                ps.setString(2, pass);
                ps.setString(3, na);
                ps.setString(4, phno);
                ps.setString(5, em);
                ps.setInt(6, 0);
                ps.setInt(7, 0);
                ps.setInt(8, 0);
                
                ps.executeUpdate();
                System.out.print("Done");
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);    
            }    
              
           

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
