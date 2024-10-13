package me.salamaya.servletsproject1;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "CalculatorServlet", urlPatterns = {""})
public class CalculatorServlet extends HttpServlet {

    //Handle POST requests sent to the index route
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {

        //Parameters sent in the post request
        String principleAmount = request.getParameter("principleamount");
        String interestPercentage = request.getParameter("interest");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compoundingperiod");

        String error;

        //Validate the input
        //If any of the parameters sent in the post request are empty or don't exist, show the error message
        if (principleAmount == null || principleAmount.isBlank() || interestPercentage == null || interestPercentage.isBlank() ||
                years == null || years.isBlank() || compoundingPeriod == null || compoundingPeriod.isBlank()){

            //Error to show to the user so they can correct their mistakes
            error = "One or more of the input boxes were blank. Try again.";

            request.setAttribute("error", error);
        }else{

            //since the parameters were gotten, do the interest calculation
            double result = Utils.calculateCompoundInterest(Double.parseDouble(principleAmount), (Double.parseDouble(interestPercentage) / 100),
                    Integer.parseInt(years), Integer.parseInt(compoundingPeriod));

            //Send the result as an attribute to be displayed in the JSP
            request.setAttribute("principle", principleAmount);
            request.setAttribute("interest", interestPercentage);
            request.setAttribute("years", years);
            request.setAttribute("compoundingPeriod", compoundingPeriod);
            request.setAttribute("result", result);
        }

        //Forward this to a JSP page
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }

    //Handle GET requests sent to the index route
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {

        //send them to index.jsp
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }
}
