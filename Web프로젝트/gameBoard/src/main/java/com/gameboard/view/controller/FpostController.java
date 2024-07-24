package com.gameboard.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gameboard.biz.post.Fpost;
import com.gameboard.biz.post.FpostService;

@Controller
public class FpostController {
	@Autowired
	private FpostService f;

	@RequestMapping(value = "getFID.do")
	public String getFID(Model model) {
		model.addAttribute("fID", f.getFID());
		model.addAttribute("fDate", f.getFDate());
		return "insertFpost.jsp";
	}

	@RequestMapping(value = "insertFpost.do")
	public String insertFpost(Fpost vo) {
		f.insertFpost(vo);
		return "redirect:FAQ.do";
	}

	@RequestMapping(value = "FAQ.do")
	public String getFpost(Fpost vo, Model model) {
		List<Fpost> FList = f.getFpostList(vo);
		model.addAttribute("FList", FList);
		return "FAQ.jsp";
	}

	// �˻�
	@RequestMapping(value = "searchFpost.do")
	public String searchFpost(Fpost vo, Model model) {
		List<Fpost> FList = f.searchFpost(vo);
		model.addAttribute("FList", FList);
		return "searchF.jsp";
	}

	// ���� + ����
	@RequestMapping(value = "getFpost.do")
	public String getFpostById(int fID, Model model) {
		// ��ȸ�� ������Ʈ
		f.updateFpostViews(fID);

		Fpost post = f.getFpostById(fID);
		model.addAttribute("post", post);

		// ���� �Խù��� ���� �Խù��� �������� ���� ID�� �������� ��ȸ�Ѵ�.
		Fpost prevPost = f.getPrevFpost(fID); // ���� �Խù� ��ȸ
		Fpost nextPost = f.getNextFpost(fID); // ���� �Խù� ��ȸ

		// ���� �Խù��� ���� �Խù��� ������ ��� �𵨿� �߰��Ѵ�.
		if (prevPost != null) {
			model.addAttribute("prevPost", prevPost);
		}
		if (nextPost != null) {
			model.addAttribute("nextPost", nextPost);
		}

		// �ֽ� ����� �����ͼ� �𵨿� �߰� (��ȸ���� ������Ʈ�� ����)
		List<Fpost> FList = f.getFpostList(null);
		model.addAttribute("FList", FList);

		return "getFpost.jsp"; // �� ������ ������ �� �̸�
	}

	@RequestMapping(value = "deleteFpost.do")
	public String deleteFpost(int fID) {
		f.deleteFpost(fID);
		return "redirect:FAQ.do";
	}

	@RequestMapping(value = "updateFpostForm.do")
	public String updateFpostForm(int fID, Model model) {
		Fpost post = f.getFpostById(fID); // �Խù� ������ ������
		model.addAttribute("post", post); // ���� ������ ����� �Խù� ������ �𵨿� �߰�
		return "updateFpostForm.jsp"; // ���� �� JSP �������� �̵�
	}

	@RequestMapping(value = "updateFpost.do")
	public String updateFpost(Fpost vo) {
		f.updateFpost(vo); // �Խù� ������ ������Ʈ
		return "redirect:getFpost.do?fID=" + vo.getfID();
	}
}
