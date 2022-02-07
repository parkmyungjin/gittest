package global.sesoc.web5.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web5.dao.BoardDAO;
import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;
	
	@Controller
	@RequestMapping("board")
	public class BoardController {
		private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

		@Autowired
		BoardDAO dao;
		
		//메인화면에서 "게시판" 클릭하면 게시글 목록이 출력되는 페이지로 이동
		@RequestMapping(value = "list", method = RequestMethod.GET)
		public String list(Model model) {
			ArrayList<Board> list = dao.list();
			model.addAttribute("list", list);
			return "boardjsp/list";
		}
		
		//글쓰기 폼
		@RequestMapping(value="write", method = RequestMethod.GET) 
		public String write() {
			return "boardjsp/writeForm";
		}
		
		//글 저장
		@RequestMapping(value="write", method = RequestMethod.POST)
		public String write(Board board, HttpSession session) {
			String id = (String) session.getAttribute("loginId");
			logger.debug("로그인아이디 {}", id);
			board.setId(id);
			dao.insertBoard(board);
			return "redirect:/";
		}
		
		//글 1개 읽기
		@RequestMapping(value="read", method = RequestMethod.GET)
		public String read(int num, Model model) {
			//DB에서 글 1개를 읽어서 모델에 저장하고 read.jsp로 포워딩
			Board board = dao.selectboard(num);
			model.addAttribute("Board", board);
			return "boardjsp/read";
		}
		
		@RequestMapping(value = "update", method = RequestMethod.GET)
		public String update(int num, Model model) {
			//세션의 아이디를 통해서 DB에서 개인정보를 검색
			Board board = dao.selectNum(num);
			//개인정보를 모델에 저장
			model.addAttribute("Board", board);
			return "boardjsp/updateForm";
		}
		
		/**
		 * 사용자가 입력한 내용을 DB테이블에 반영
		 */
		@RequestMapping(value = "update", method = RequestMethod.POST)
		public String update(Board board, HttpSession session) {
			logger.debug("수정폼에서 전달된 값 {}", board);
			String id = (String)session.getAttribute("loginId");
			board.setId(id);
			dao.update(board);
			return "redirect:/board/list";
		}
		
		// 글 삭제
		@RequestMapping(value="delete" , method = RequestMethod.GET)
		public String delete(Board board, HttpSession session) {
			logger.debug("전달된 param:{}", board);
			String id = (String)session.getAttribute("loginId");
			board.setId(id);
			dao.delete(board);
			return "redirect:/board/list";
		}	
	}
