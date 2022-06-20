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
                namedb = rs.getString("AdminName");
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
        //out.println(email);
        //out.println(role);
        //out.println(password);
        //session.setAttribute("Username",namedb);
        session.setAttribute("Role",role);
        session.setAttribute("Email",email);
        session.setAttribute("Name",namedb);
        response.sendRedirect("./../home.jsp");
    }
%>