package com.nt.controller;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.entity.DoctorEntity;
import com.nt.service.IDoctorMgmtService;
import com.nt.vo.DoctorVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorController {

    @Autowired
    IDoctorMgmtService service;

    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/addDoctor")
    public String showReportPage(Map<String, Object> map) {
    	List<DoctorVO> list = service.fetchAllData();  // fetch data
        map.put("detail", list);
        return "Report";
    }

    // show form
    @GetMapping("/Regi")
    public String showRegistration(@ModelAttribute("data") DoctorVO vo) {
    	
        return "Registration_page";
    }

    // save data
    @PostMapping("/Regi")
    public String saveDoctor(@ModelAttribute("data") DoctorVO vo,
                             HttpSession sess) {
    	String msg = service.insertAllData(vo); // insert data
    	List<DoctorVO> list = service.fetchAllData();  // fetch data
        sess.setAttribute("detail", list);
        sess.setAttribute("msg", msg);

        return "redirect:addDoctor";  // stay on same page
    }
    
    @GetMapping("/edit")
    public String showEditFormPage(@RequestParam("id") Integer id,
                                  @ModelAttribute("vo") DoctorVO vo) {

        DoctorEntity entity = service.getDoctorById(id);

        if (entity == null) {
            return "redirect:report"; // or error page
        }

        BeanUtils.copyProperties(entity, vo);
        

        return "edit_page";
    }
    
    @PostMapping("/update")
    public String updateForm(RedirectAttributes attr,@ModelAttribute("vo")DoctorVO vo) {
    	String msg = service.updateDoctor(vo);
    	attr.addFlashAttribute("msg2",msg);
    	System.out.println(vo);
    	System.out.println(msg);
    	return "redirect:addDoctor";
    }
    
    @GetMapping("/delete")
    public String deleteDoctor(RedirectAttributes attr,@ModelAttribute("vo")DoctorVO vo) {
    	String delete_msg = service.deleteDoctorById(vo.getId());
    	
    	attr.addFlashAttribute("delete_msg",delete_msg);
    	return "redirect:addDoctor";
    }
}