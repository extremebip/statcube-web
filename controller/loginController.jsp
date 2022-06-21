<%@page import="java.text.SimpleDateFormat" %> 
<%@ include file="./../database/connect.jsp" %>


<%
    String email = request.getParameter("txtEmail");
    String password = request.getParameter("txtPassword");

    int checkemail=0;
    int checkpassword=0;
    int emailvali =0;

    String query = String.format("Select * FROM MsUser");
    ResultSet rs = st.executeQuery(query);

    String role="";
    String namedb="";
    int UserID = -1;
    int AdminID = -1;
    String subsenddate="";

    while(rs.next())
    {
        String emaildb = rs.getString("UserEmail");
        String passworddb= rs.getString("UserPassword");
        if(email.equals(emaildb))
        {
            checkemail=1;
            if(password.equals(passworddb))
            {
                checkpassword=1;
                role = "User";
                namedb = rs.getString("UserName");
                UserID = rs.getInt("UserID");
                subsenddate = rs.getString("UserSubscriptionEndDate");
            }
        }
    }
    String query2 = String.format("Select * FROM MsAdmin");
    ResultSet rs2 = st.executeQuery(query2);

    while(rs2.next())
    {
        String emaildb = rs2.getString("AdminEmail");
        String passworddb= rs2.getString("AdminPassword");
        if(email.equals(emaildb))
        {
            checkemail=1;
            if(password.equals(passworddb))
            {
                checkpassword=1;
                role = "Admin";
                namedb = rs2.getString("AdminName");
                AdminID = rs2.getInt("AdminID");
            }
        }
    }

    int checkat = 0; //@
    int checkdot= 0; //.
    int checkatdot=0;
    int checkatdot2=0;
    //check for @ and . 
    for(int i=0;i<email.length();i++)
    {
            char c = email.charAt(i);
            int temp =email.length()-1;
            char c1 = ' ';
            char c2 = ' ';
            if(i!=0)
            {
                c2 = email.charAt(i-1);
            }
            if(i!=temp)
            {
                c1 = email.charAt(i+1);
            }
            if(c=='@'){checkat++;}  // contain at least 1 @
            if(c=='.'){checkdot++;} // contain at least 1 . 
            if(i!=temp || i!=0)
            {
                if(c=='@' && c1=='.'|| c=='@' && c2=='.')  //side by side @ and .
                {
                    checkatdot++;
                }
            }
            if((i==temp || i==0) && (c=='@' || c=='.')) //cant start/end with @ or .
            {
                checkatdot2++;
            }
    }

    
    if (password.equals(""))
    {
        session.setAttribute("txtPasswordMessage","Password cannot be empty");
        //response.sendRedirect("./../login.jsp");
    }

    if (email.equals("")){
        session.setAttribute("txtEmailMessage","Email cannot be empty");
        //response.sendRedirect("./../login.jsp");
    }
    else if(checkat!=1)
    {
        session.setAttribute("txtEmailMessage","Email must contain 1'@' symbol");
        emailvali++;
    }
    else if(checkdot==0)
    {
        session.setAttribute("txtEmailMessage","Email must contain at least 1 '.' symbol");
        emailvali++;
    }
    else if(checkatdot>0)
    {
        session.setAttribute("txtEmailMessage","'@' and '.' must not be side by side");
        emailvali++;
    }
    else if(checkatdot2>0)
    {
        session.setAttribute("txtEmailMessage","Invalid Email ('@' or '.' at the start/end of the email)");
        emailvali++;
    }

    if(emailvali>0)
    {
        session.setAttribute("inputEmail", email);
        response.sendRedirect("./../login.jsp");
    }
    else if(checkemail==0)
    {
        session.setAttribute("inputEmail", email);
        session.setAttribute("txtEmailMessage","Email is not registered yet");
        response.sendRedirect("./../login.jsp");
    }
    else if(checkemail==1 && checkpassword==0)
    {
        session.setAttribute("inputEmail", email);
        session.setAttribute("txtPasswordMessage","Incorrect Password");
        response.sendRedirect("./../login.jsp");
    }
    else
    {
        if (UserID != -1 ){
            session.setAttribute("UserID", UserID);
        }
        if (AdminID != -1 ){
            session.setAttribute("AdminID", AdminID);
        }
        session.setAttribute("Role",role);
        session.setAttribute("Email",email);
        session.setAttribute("Name",namedb);
        //check subsenddate 
        if(UserID != -1 && subsenddate!=null)
        {
            //out.println(subsenddate);
            java.util.Date dNow = new java.util.Date(); 
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            String currentdate =df.format(dNow);
            //out.println(currentdate);
            String year1="";String year2="";String month1="";String month2="";String day1="";String day2="";
            for(int i=0;i<10;i++)
            {
                if(i==0)
                {
                    String a = Character.toString(subsenddate.charAt(i));
                    String a2 = Character.toString(subsenddate.charAt(i+1));
                    String a3 = Character.toString(subsenddate.charAt(i+2));
                    String a4 = Character.toString(subsenddate.charAt(i+3));
                    String b = Character.toString(currentdate.charAt(i));
                    String b2 = Character.toString(currentdate.charAt(i+1));
                    String b3 = Character.toString(currentdate.charAt(i+2));
                    String b4 = Character.toString(currentdate.charAt(i+3));
                    year1 = a+a2+a3+a4;
                    year2 = b+b2+b3+b4;
                }
                if(i==5)
                {
                    String a = Character.toString(subsenddate.charAt(i));
                    String a2 = Character.toString(subsenddate.charAt(i+1));
                    String b = Character.toString(currentdate.charAt(i));
                    String b2 = Character.toString(currentdate.charAt(i+1));
                    month1=a+a2;
                    month2=b+b2;
                }
                if(i==8)
                {
                    String a = Character.toString(subsenddate.charAt(i));
                    String a2 = Character.toString(subsenddate.charAt(i+1));
                    String b = Character.toString(currentdate.charAt(i));
                    String b2 = Character.toString(currentdate.charAt(i+1));
                    day1=a+a2;
                    day2=b+b2;
                }
            }
            if(Integer.parseInt(year1)<Integer.parseInt(year2))
            {
                String update  = String.format("UPDATE MsUser SET UserSubscriptionEndDate=null WHERE userid = ('%d')",UserID);
                st.executeUpdate(update);
            }
            else if(Integer.parseInt(month1)<Integer.parseInt(month2) && Integer.parseInt(year1)>=Integer.parseInt(year2))
            {
                String update  = String.format("UPDATE MsUser SET UserSubscriptionEndDate=null WHERE userid = ('%d')",UserID);
                st.executeUpdate(update);
            }
            else if(Integer.parseInt(day1)<Integer.parseInt(day2) && Integer.parseInt(month1)>=Integer.parseInt(month2) && Integer.parseInt(year1)>=Integer.parseInt(year2))
            {
                String update  = String.format("UPDATE MsUser SET UserSubscriptionEndDate=null WHERE userid = ('%d')",UserID);
                st.executeUpdate(update);
            }
        }
        else{
            session.setAttribute("Status","false");
        }
        //response.sendRedirect("./../home.jsp");
    }
%>