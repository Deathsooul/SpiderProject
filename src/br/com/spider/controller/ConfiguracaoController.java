package br.com.spider.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.spider.dao.CategoriaDao;
import br.com.spider.dao.ItemDao;
import br.com.spider.data.mock.MockData;
import br.com.spider.model.Categoria;
import br.com.spider.model.Item;

/**
 * Servlet implementation class ConfiguracaoController
 */
@WebServlet("/ConfiguracaoController")
public class ConfiguracaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoriaDao categoriaDao;
	private ItemDao itemDao;

	/**
	 * Default constructor.
	 */
	public ConfiguracaoController() {

		categoriaDao = new CategoriaDao();
		itemDao = new ItemDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String forward = "configuracoes.jsp";
		String action = request.getParameter("action");

		try {

			if (action.equals("salvarCategoria")) {
				String nomeCategoria = request.getParameter("nomeCategoria");

				if (nomeCategoria.isEmpty()) {

					request.setAttribute("erroCategoria", "Favor, informe o nome da categoria!");
				} else {

					Categoria categoria = new Categoria();
					categoria.setNome(nomeCategoria);

					boolean rs = categoriaDao.salvarCategoria(categoria);

					if (rs == true) {
						request.setAttribute("sucessoCategoria", "Categoria salva com sucesso.");
					}
				}
			}else if (action.equals("salvarItem")) {
				String nomeItem = request.getParameter("nomeItem");
				Integer idCategoria = Integer.parseInt(request.getParameter("idCategoria"));
				
				if (nomeItem.isEmpty() || idCategoria.intValue() == 0) {
					request.setAttribute("erroItem", "Favor, informe todos os campos do Item!");
				} else {
					
					Categoria categoria = categoriaDao.getCategoriaById(idCategoria);
					
					Item item = new Item();
					item.setCategoria(categoria);
					item.setNomeItem(nomeItem);
					
					boolean rs = itemDao.salvarItem(item);

					if (rs == true) {
						request.setAttribute("sucessoItem", "Item salvo com sucesso.");
					}
				}
			}

		} catch (Exception ex) {

			request.setAttribute("erro", ex.getMessage());
		}

		// Sempre recarregar lista de categorias
		request.setAttribute("categorias", categoriaDao.getAllCategorias());
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
