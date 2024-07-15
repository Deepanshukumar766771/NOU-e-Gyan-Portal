<%@page import="connect.DbManager"%>
<%
     if (request.getParameter("page").equals("changepassword")) {
        String userid = session.getAttribute("adminid").toString();
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        DbManager dm = new DbManager();
        String query = "update login set password='" + newpassword + "'where userid='" + userid + "'and password='" + oldpassword + "'";
        if (dm.insertUpdateDelete(query) == true) {
            response.sendRedirect("logout.jsp");
        } else {
            out.print("<script>alert('Old password is not submit');window.location.href='changepassword.jsp';</script>");
        }

    }
     else if(request.getParameter("page").equals("adminhome"))
     {
         String newstext=request.getParameter("newstext");
         DbManager dm=new DbManager();
     }
    %>