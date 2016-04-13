package email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import business.User;
import business.Company;
import data.UserDB;
//import data.CompanyDB;

public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "index.jsp";
        
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/register.jsp";    // the "join" page
        } 
        else if (action.equals("signIn")) {
            User user = new User();
            String message;
            String userEmail = request.getParameter("email");
            String password = request.getParameter("password");

            
            user.setEmail(userEmail);
            user.setPassword(password);
               if(UserDB.emailExists(user.getEmail()) && UserDB.passwordExists(user.getPassword())) 
               {
//             HttpSession session = request.getSession();
//            session.setAttribute("email", userEmail);
//           RequestDispatcher rd = request.getRequestDispatcher("/thanksSignIn.jsp");
//            rd.forward(request,response);   
                   Cookie ck=new Cookie("uname",userEmail);//creating cookie object  
                   response.addCookie(ck);//adding cookie in the response  
                   response.setContentType("text/html");
//                   PrintWriter pw = response.getWriter();
//                   pw.println("<B>You are signed in with this email:");
//                   pw.println(userEmail);
//                   pw.println()
//                   pw.close();
                    url = "/index2.jsp";
               }
               else {
//                    message = "";
//                    RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//                    rd.include(request, response);
               }
            }
        else if (action.equals("companyGet")) {
            Company company = new Company();
            
        }
        else if (action.equals("add")) {
            User user = new User();
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // store data in User object
            //User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setPassword(password);

            // validate the parameters
            String message;
            if (UserDB.emailExists(user.getEmail())) {
                message = "This email address already exists.<br>" +
                          "Please enter another email address.";
                url = "/register.jsp";
            }
            else {
                message = "";
                url = "/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        /*
        else if(action.equals("selectCompany")) {
            //Company company = new Company();
            String companyName = request.getParameter("companyName");
            Company selectCompany = CompanyDB.selectCompany(companyName);
        }
        
        else if(action.equals("selectAllComps")) {
            String companyName = request.getParameter("companyName");
            Company selectAllComps = CompanyDB.selectAllComps("companyName");
        }
        */
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
}