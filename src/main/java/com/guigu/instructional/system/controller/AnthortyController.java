package com.guigu.instructional.system.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guigu.instructional.po.AnthortyInfo;
import com.guigu.instructional.system.service.AnthortyService;

@Controller
@RequestMapping("system/anthorty")
public class AnthortyController {
	
	@Resource (name = "anthortyServiceImpl")
	private AnthortyService anthortyService;
	
	//Ȩ�޹����б�	��ʱ����
	@RequestMapping("list.action")
	public String list(AnthortyInfo anthortyInfo,Model model) {
		List<AnthortyInfo> list = anthortyService.getAnthortyInfo(anthortyInfo);
		model.addAttribute("list", list);
		
		return "system/anthorty/anthorty_list";
	}
	
	//Ȩ�޹���չʾ
	@RequestMapping("show.action")
	public String show(Integer anthortyId,Model model) {
		AnthortyInfo anthortyInfo=anthortyService.getAnthortyInfo(anthortyId);
		model.addAttribute("anthortyInfo", anthortyInfo);
		return "system/anthorty/anthorty_show";
	}
	
	//Ȩ�޹�������
	@RequestMapping("add.action")
	public String add(Model model,AnthortyInfo anthortyInfo) {
		boolean result = anthortyService.addAnthorty(anthortyInfo);
		
		if(result) {
			model.addAttribute("info", "���ӳɹ�");
        }else {
            model.addAttribute("info", "����ʧ��");
        }
        return this.list(null, model);
		
	}
	
	//Ȩ�޹��������б�Ԥ����
//	@RequestMapping("load.action")
//	public String load(Integer )
	
	//Ȩ�޹�������	��ʱ����
	@RequestMapping("update.action")
	public String update(Model model,AnthortyInfo anthortyInfo) {
		boolean result=anthortyService.updateAnthorty(anthortyInfo);
		
		if(result) {
            model.addAttribute("info", "�޸ĳɹ�");
        }else {
            model.addAttribute("info", "�޸�ʧ��");
        }
        return this.list(null, model);
		
	}
	
	
	//Ȩ�ޱ���б�	���޸�
	@RequestMapping("anthortychangelist.action")
	public String anthortyChangeList(AnthortyInfo anthortyInfo,Model model) {
		List<AnthortyInfo> list = anthortyService.getAnthortyInfo(anthortyInfo);
		model.addAttribute("list", list);
		return "system/anthorty/anthorty_changelist";
	}
	
//	@RequestMapping("")
	
	//Ȩ�ޱ������	���޸�
	@RequestMapping("changeanthorty")
	public String updateAnthortyChange(AnthortyInfo anthortyInfo,Model model) {
		boolean result=anthortyService.updateAnthorty(anthortyInfo);
		
		if(result) {
            model.addAttribute("info", "�޸ĳɹ�");
        }else {
            model.addAttribute("info", "�޸�ʧ��");
        }
		
		return this.anthortyChangeList(null, model);
		
	}
	
	
}