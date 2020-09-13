package servlets;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Usuario;

@WebServlet("/Listar")
public class Listar extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Query q = em.createQuery("Select l from Usuario as l", Usuario.class);
		List<Usuario> usuarios= q.getResultList();
		req.setAttribute("usuarios",usuarios);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	
}
