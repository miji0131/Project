package com.gameboard.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gameboard.biz.post.Mod;
import com.gameboard.biz.post.ModService;
import com.gameboard.biz.post.Wtpost;

@Controller
public class ModController {
	@Autowired
	private ModService m;

	@RequestMapping(value = "getMID.do")
	public String getMID(Model model) {
		model.addAttribute("mID", m.getMID());
		model.addAttribute("mDate", m.getMDate());
		return "insertMod.jsp";
	}

	@RequestMapping(value = "insertMod.do")
	public String insertMod(Mod vo) {
		m.insertMod(vo);
		return "redirect:Mod.do";
	}

	@RequestMapping(value = "Mod.do")
	public String getModList(Mod vo, Model model) {
		List<Mod> ModList = m.getModList(vo);
		model.addAttribute("ModList", ModList);
		return "mod.jsp";
	}

	@RequestMapping(value = "searchMod.do")
	public String searchMod(Mod vo, Model model) {
		List<Mod> ModList = m.searchMod(vo);
		model.addAttribute("ModList", ModList);
		return "searchMod.jsp";
	}

	// ���� + ����
	@RequestMapping(value = "getMod.do")
	public String getModById(int mID, Model model) {
		// ��ȸ�� ������Ʈ
		m.updateModViews(mID);

		Mod post = m.getModById(mID);
		model.addAttribute("post", post);

		// ���� �Խù��� ���� �Խù��� �������� ���� ID�� �������� ��ȸ�Ѵ�.
		Mod prevPost = m.getPrevMod(mID); // ���� �Խù� ��ȸ
		Mod nextPost = m.getNextMod(mID); // ���� �Խù� ��ȸ

		// ���� �Խù��� ���� �Խù��� ������ ��� �𵨿� �߰��Ѵ�.
		if (prevPost != null) {
			model.addAttribute("prevPost", prevPost);
		}
		if (nextPost != null) {
			model.addAttribute("nextPost", nextPost);
		}

		// �ֽ� ����� �����ͼ� �𵨿� �߰� (��ȸ���� ������Ʈ�� ����)
		List<Mod> ModList = m.getModList(null);
		model.addAttribute("ModList", ModList);
		return "getMod.jsp"; // �� ������ ������ �� �̸�
	}

	@RequestMapping(value = "deleteMod.do")
	public String deleteMod(int mID) {
		m.deleteMod(mID);
		return "redirect:Mod.do";
	}

	@RequestMapping(value = "updateModForm.do")
	public String updateModForm(int mID, Model model) {
		Mod post = m.getModById(mID); // �Խù� ������ ������
		model.addAttribute("post", post); // ���� ������ ����� �Խù� ������ �𵨿� �߰�
		return "updateModForm.jsp"; // ���� �� JSP �������� �̵�
	}

	@RequestMapping(value = "updateMod.do")
	public String updateMod(Mod vo) {
		m.updateMod(vo); // �Խù� ������ ������Ʈ
		return "redirect:getMod.do?mID=" + vo.getmID();
	}
}