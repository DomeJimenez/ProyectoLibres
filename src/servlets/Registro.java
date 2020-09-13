package servlets;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registro")
public class Registro extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		OutputStream os = resp.getOutputStream();
		resp.setContentType("text/html; charset=ISO-8859-1");
		
		Enumeration <String> nombres = req.getParameterNames();
		
		PrintWriter out = new PrintWriter(os);
		
		out.print("<html>");
		out.print("<body>Buenas noches");
		
		//Forma dinamica
		out.print("<table border=1><tr><th>Nombre</th><th>Valor</th></tr>");
		
		while(nombres.hasMoreElements()){
			String nombre = nombres.nextElement();
			String valor = req.getParameter(nombre);
			out.print("<tr><th>" + nombre + "</th><th>" + valor + "</th></tr>");
		}
		
		out.flush();
		out.close();
		os.close();
	}

}
