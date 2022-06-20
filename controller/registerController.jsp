<%@ include file="./../database/connect.jsp" %>

<%
    String name = request.getParameter("txtName");
    String email = request.getParameter("txtEmail");
    String password = request.getParameter("txtPassword");
    String password2 = request.getParameter("txtConfirmPassword");

    //out.println(name);
    //out.println(email);
    //out.println(password);
    //out.println(password2+);


    
    int checkemail=0;
    int checkname=0;
    int checkpassword=0;
    int checkpassword2=0;

    if(name.equals("")){
        session.setAttribute("txtNameMessage","Name cannot be empty");
        checkname++;
    }
    else if(name.length()<3)
    {
        session.setAttribute("txtNameMessage","Name must be at least 3 characters");
        checkname++;
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
    if(email.equals(""))
    {
        session.setAttribute("txtEmailMessage","Email cannot be empty");
        checkemail++;
    }

    else if(checkat!=1)
    {
        session.setAttribute("txtEmailMessage","Email must contain 1'@' symbol");
        checkemail++;
    }
    else if(checkdot==0)
    {
        session.setAttribute("txtEmailMessage","Email must contain at least 1 '.' symbol");
        checkemail++;
    }
    else if(checkatdot>0)
    {
        session.setAttribute("txtEmailMessage","'@' and '.' must not be side by side");
        checkemail++;
    }
    else if(checkatdot2>0)
    {
        session.setAttribute("txtEmailMessage","Invalid Email ('@' or '.' at the start/end of the email)");
        checkemail++;
    }
    String query = String.format("Select * FROM MsUser");
    ResultSet rs = st.executeQuery(query);
    while(rs.next())
    {
        String emaildb = rs.getString("UserEmail");
        if(email.equals(emaildb))
        {
            //out.println(email);
            session.setAttribute("txtEmailMessage","Sorry, the email is already taken");
            checkemail++;
        }
    }
    String query2= String.format("Select * FROM MsAdmin");
    ResultSet rs2 = st.executeQuery(query2);
    while(rs2.next())
    {
        String emaildb = rs2.getString("AdminEmail");
        if(email.equals(emaildb))
        {
            //out.println(email);
            session.setAttribute("txtEmailMessage","Sorry, the email is taken already");
            checkemail++;
        }
    }

    int checkalphabet = 0; 
    int checknum= 0; 

    for(int i=0;i<password.length();i++)
    {
        char c = password.charAt(i);
        //Letter and Number only
        if(c>='a' && c<='z' || c>='A' && c<='Z')
        {
            checkalphabet++;
        }
        if(c>='0' && c<='9' )
        {
            checknum++;
        }
    }

    if(password.equals(""))
    {
        session.setAttribute("txtPasswordMessage","Password cannot be empty");

        checkpassword++;
    }

    else if(password.length()<6)
    {
        session.setAttribute("txtPasswordMessage","Password must be at least 6 characters");

        checkpassword++;
    }
    else if(checkalphabet==0)
    {
         session.setAttribute("txtPasswordMessage","Password must contain at least 1 alphabet");

        checkpassword++;
    }
    else if(checknum==0)
    {
        session.setAttribute("txtPasswordMessage","Password must contain at least 1 number");

        checkpassword++;
    }

    if(password2.equals(password))
    {
        checkpassword2=0;
    }
    else
    {
        session.setAttribute("txtConfirmPasswordMessage","Confirm Password must match with password");

        checkpassword2++;
    }
    
    //all validation is clear
    if(checkname==0 && checkemail ==0 && checkpassword==0 && checkpassword2==0)
    {
        String insert = String.format
        ("INSERT INTO MsUser (UserName,UserEmail,UserPassword) VALUES ('%s','%s','%s')",name,email,password);
        st.executeUpdate(insert);
        response.sendRedirect("./../login.jsp");
    }
    else
    {
        session.setAttribute("inputUsername", name);
        session.setAttribute("inputEmail", email);
        response.sendRedirect("./../register.jsp");
    }

    


%>