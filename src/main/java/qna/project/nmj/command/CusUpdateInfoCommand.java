package qna.project.nmj.command;


import org.springframework.ui.Model;

import qna.project.nmj.beans.C;
import qna.project.nmj.beans.MemberDTO;
import qna.project.nmj.beans.dao.CustomerDAO;

public class CusUpdateInfoCommand implements Command{

	@Override
	public void execute(Model model) {
		int mb_uid = (Integer)model.getAttribute("mb_uid");
		CustomerDAO dao = C.sqlSession.getMapper(CustomerDAO.class);
		MemberDTO myPage = dao.selectMemberByUid(mb_uid);
		model.addAttribute("myPage", myPage);
	}

}
