/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
//import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JurosSimples", urlPatterns = {"/juros-simples"})
public class JurosSimples extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("capital") != null) {
            PrintWriter out = response.getWriter();
            try {
                double capital = Double.parseDouble(request.getParameter("capital"));
                double juros = Double.parseDouble(request.getParameter("juros"));
                double tempo = Double.parseDouble(request.getParameter("tempo"));
                double jurosMes = juros / 100;
                double calculo = capital * jurosMes * tempo;
                double montante = capital + calculo;

                request.setAttribute("calculo", calculo);
                request.setAttribute("montante", montante);

                request.getRequestDispatcher("juros-simples.jsp").forward(request, response);

            } catch (Exception ex) {
                out.println("<h1> Por favor, digite um valor válido</h1>");
                out.println("<a href='/home/juros-simples.jsp'> Tente novamente</a");
            }
        }
    }

}
