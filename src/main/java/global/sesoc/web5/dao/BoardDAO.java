package global.sesoc.web5.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;

	/**
	 * 게시판 DAO
	 */
	@Repository //최초로 시행될 때 객체를 만들어놓는다.
	public class BoardDAO {
		@Autowired
		SqlSession sqlSession;
		
	/**
	 * 글 저장
	 * @param board 저장할 게시글 정보
	 * @return 저장된 레코드 수
	 */
	public int insertBoard(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insert(board);
		return result;
		
	}

	public ArrayList<Board> list() {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		ArrayList<Board> list = mapper.list();
		return list;
	}

	public Board selectboard(int num) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		mapper.updateHits(num);
		Board result = mapper.select(num);
		return result;
	}

	public Board selectNum(int num) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		Board m = mapper.select(num);
		return m;
	}

	public int update(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.update(board);
		return result;
	}

	public int delete(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = 0;

		result = mapper.delete(board);
		return result;
		
	}

}
