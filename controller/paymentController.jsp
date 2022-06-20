<%@ include file="./../database/connect.jsp" %>

<%
    String payment = request.getParameter("payment");
    out.println(payment);
    String id = "20";
    

    if(payment.equals("choose")){
        session.setAttribute("errorPayment", "Please Choose the Payment Method");
        response.sendRedirect("../payment.jsp");
    }
    else{
        String insert = String.format("INSERT INTO TrPayment (UserID,PaymentMethod, PaymentDate) VALUES ('%s','%s',CURRENT_TIMESTAMP)",id,payment);
        st.executeUpdate(insert);

        insert = String.format("UPDATE MsUser SET UserSUbscriptionEndDate = (DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 MONTH)) WHERE UserID = '%s'",id);
        st.executeUpdate(insert);

        response.sendRedirect("../profile.jsp");

    }

    con.close();
%>
