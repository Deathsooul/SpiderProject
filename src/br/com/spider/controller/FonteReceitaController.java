package br.com.spider.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.spider.dao.ContribuinteDao;
import br.com.spider.model.Categoria;
import br.com.spider.model.Contribuinte;
import br.com.spider.model.Item;

/**
 * Servlet implementation class FonteReceitaController
 */
@WebServlet("/FonteReceitaController")
public class FonteReceitaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ContribuinteDao contribuinteDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FonteReceitaController() {
        super();
        contribuinteDao = new ContribuinteDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "fonte-receitas.jsp";
		String action = request.getParameter("action");
		
		try {

			if (action.equals("salvarContribuinte")) {
				String nomeContribuinte = request.getParameter("nomeContribuinte");

				if (nomeContribuinte.isEmpty()) {

					request.setAttribute("erroContribuinte", "Favor, informe o nome do Contribuinte!");
				} else {

					Contribuinte contribuinte = new Contribuinte();
					contribuinte.setNome(nomeContribuinte);

					boolean rs = contribuinteDao.salvarContribuinte(contribuinte);

					if (rs == true) {
						request.setAttribute("sucessoContribuinte", "Contribuinte salvo com sucesso.");
					}
				}
			}

		} catch (Exception ex) {

			request.setAttribute("erro", ex.getLocalizedMessage());
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
