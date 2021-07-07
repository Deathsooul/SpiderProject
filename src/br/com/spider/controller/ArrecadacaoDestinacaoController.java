package br.com.spider.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.spider.dao.ArrecadacaoDao;
import br.com.spider.dao.ContribuinteDao;
import br.com.spider.dao.DestinacaoDao;
import br.com.spider.dao.ItemDao;
import br.com.spider.model.Arrecadacao;
import br.com.spider.model.Destinacao;

/**
 * Servlet implementation class ArrecadacaoDestinacaoController
 */
@WebServlet("/ArrecadacaoDestinacaoController")
public class ArrecadacaoDestinacaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ItemDao itemDao;
    private ContribuinteDao contribuinteDao;
    private ArrecadacaoDao arrecadacaoDao;
    private DestinacaoDao destinacaoDao;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArrecadacaoDestinacaoController() {
        super();
        itemDao = new ItemDao();
        contribuinteDao = new ContribuinteDao();
        arrecadacaoDao = new ArrecadacaoDao();
        destinacaoDao = new DestinacaoDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "arrecadacao-destinacao.jsp";
		String action  = request.getParameter("action");
		
		try {
			
			if(action.equals("salvarArrecadacao")) {
				
				String valorArrecadacao = request.getParameter("valorArrecadacao");
				String idContribuinte = request.getParameter("idContribuinte");
				String mesArrecadacao = request.getParameter("mesArrecadacao");
				
				if (valorArrecadacao.isEmpty() || idContribuinte.isEmpty() || mesArrecadacao.isEmpty()) {
					request.setAttribute("erroArrecadacao", "Favor, preencher todos os campos.");
				} else {
					
					Arrecadacao arrecadacao = new Arrecadacao();
					arrecadacao.setFonte(contribuinteDao.getContribuinteById(Integer.valueOf(idContribuinte)));
					arrecadacao.setValor(Float.valueOf(valorArrecadacao));
					arrecadacao.setMesAno(new Date(mesArrecadacao));
					
					boolean rs = arrecadacaoDao.salvarArrecadacao(arrecadacao);

					if (rs == true) {
						request.setAttribute("sucessoArrecadacao", "Arrecadacao salva com sucesso.");
					}
				}
				
			} else if(action.equals("salvarDestinatario")) {
				
				String valorDestinatario = request.getParameter("valorDestinatario");
				String idItem = request.getParameter("idItem");
				String mesDestinatario = request.getParameter("mesDestinatario");
				
				if (valorDestinatario.isEmpty() || idItem.isEmpty() || mesDestinatario.isEmpty()) {
					request.setAttribute("erroDestinatario", "Favor, preencher todos os campos.");
				} else {
					
					Destinacao destinacao = new Destinacao();
					destinacao.setSaida(itemDao.getItemById(Integer.valueOf(idItem)));
					destinacao.setValor(Float.valueOf(valorDestinatario));
					destinacao.setMesAno(new Date(mesDestinatario));
					
					boolean rs = destinacaoDao.salvarDestinatario(destinacao);

					if (rs == true) {
						request.setAttribute("sucessoDestinatario", "Destinatario salvo com sucesso.");
					}
				}
			}
			
		} catch (Exception ex) {
			
			request.setAttribute("erro", ex.getMessage());
		}
		
		// TODO Auto-generated method stub
		request.setAttribute("itens", itemDao.getAllItens());
		request.setAttribute("contribuintes", contribuinteDao.getAllContribuintes());
		
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
