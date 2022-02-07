package global.sesoc.web5.dao;

import global.sesoc.web5.vo.Member;

//memberMapper.xml과 매핑되는 메소드
public interface MemberMapper {
	//회원가입
	public int insert(Member m);
	//회원1명 조회
	public Member getMember(String id);
	
	public int update(Member member);
}
