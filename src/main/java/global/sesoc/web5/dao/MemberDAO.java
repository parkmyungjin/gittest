package global.sesoc.web5.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web5.vo.Member;

/**
 * 회원 정보 관련 DAO
 */
@Repository
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 회원정보 저장
	 * @param member 가입폼에 입력한 정보
	 * @return 저장한 행 수
	 */
	public int insert(Member member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		int result = mapper.insert(member);
		return result;
	}
	
	/**
	 * 아이디로 회원정보 조회
	 * @param id 조회할 아이디
	 * @return 해당 아이디의 회원정보
	 */
	public Member getMember(String id) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		Member m = mapper.getMember(id);
		return m;
		
	}

	public int update(Member member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		int result = mapper.update(member);
		return result;
	}
}
