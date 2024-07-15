<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (request.getParameter("page").equals("changepassword")) {
        String userid = session.getAttribute("studentid").toString();
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        DbManager dm = new DbManager();
        String query = "update login set password='" + newpassword + "'where userid='" + userid + "'and password='" + oldpassword + "'";
        if (dm.insertUpdateDelete(query) == true) {
            response.sendRedirect("logout.jsp");
        } else {
            out.print("<script>alert('Old password is not submit');window.location.href='changepassword.jsp';</script>");
        }

    } else if (request.getParameter("page").equals("response")) {
        String rollno = session.getAttribute("studentid").toString();
        DbManager dm = new DbManager();
        String query = "select* from student where rollno='" + rollno + "'";
        ResultSet rs =dm.select(query);
        if (rs.next()) {
            rollno = rs.getString("rollno");
            String name = rs.getString("name");
            String program = rs.getString("program");
            String branch = rs.getString("branch");
            String year = rs.getString("year");
            String contactno = rs.getString("contactno");
            String responsetype = request.getParameter("responsetype");
            String subject = request.getParameter("subject");
            String responsetext = request.getParameter("responsetext");
            query = "insert into response(rollno,name,program,branch,year,contactno,responsetype,subject,responsetext,responsedate)values('" + rollno + "','" + name + "','" + program + "','" + branch + "','" + year + "','" + contactno + "','" + responsetype + "','" + subject + "','" + responsetext + "',curdate())";
            if (dm.insertUpdateDelete(query) == true) {
                out.print("<script>alert('Response is submitted');window.location.href='response.jsp';</script>");
            } else {
                out.print("<script>alert('Response is not submitted');window.location.href='response.jsp';</script>");
            }
        }
    }
    else if(request.getParameter("page").equals("postquestion"))
    {
        DbManager dm=new DbManager();
        String userid=session.getAttribute("studentid").toString();
        String query="select* from student where rollno='"+userid+"'";
        ResultSet rs=dm.select(query);
        if(rs.next())
        {
            String askedby=rs.getString("name");
            String question=request.getParameter("question");
            query="insert into question(question,askby,posteddate)values('"+question+"','"+askedby+"',curdate())";
            if(dm.insertUpdateDelete(query)==true)
            {
                out.print("<script>alert('Question is posted');window.location.href='postquestion.jsp';</script>");
            }
            else 
            {
                 out.print("<script>alert('Question is not posted');window.location.href='postquestion.jsp';</script>");
            }
        }
    }
    else if(request.getParameter("page").equals("postanswer"))
    {
        int qid=Integer.parseInt(request.getParameter("qid"));
        String answer=request.getParameter("answer");
        String rollno=session.getAttribute("studentid").toString();
        String query="select* from student where rollno='"+rollno+"'";
        DbManager dm=new DbManager();
        ResultSet rs=dm.select(query);
        if(rs.next())
        {
            String answeredby=rs.getString("name");
            query="insert into answer(answer,answeredby,posteddate,qid)values('"+answer+"','"+answeredby+"',curdate(),'"+qid+"')";
            if(dm.insertUpdateDelete(query)==true)
            {
                out.print("<script>alert('Answer is submitted');window.location.href='postquestion.jsp';</script>");
            }
            else
            {
                 out.print("<script>alert('Answer is not submitted');window.location.href='postquestion.jsp';</script>");
            }
        }
    }
%>