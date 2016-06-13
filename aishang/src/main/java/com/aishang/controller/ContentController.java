package com.aishang.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbAboutus;
import com.aishang.pojo.TbActivity;
import com.aishang.pojo.TbAd;
import com.aishang.pojo.TbCompany;
import com.aishang.pojo.TbCourse;
import com.aishang.pojo.TbCustomer;
import com.aishang.pojo.TbMap;
import com.aishang.pojo.TbSchoollife;
import com.aishang.pojo.TbSchoolpic;
import com.aishang.pojo.TbStudent;
import com.aishang.pojo.TbTeacher;
import com.aishang.service.AboutusService;
import com.aishang.service.ActivityService;
import com.aishang.service.AdService;
import com.aishang.service.CompanyService;
import com.aishang.service.CourseService;
import com.aishang.service.CustomerService;
import com.aishang.service.MapService;
import com.aishang.service.SchoollifeService;
import com.aishang.service.SchoolpicService;
import com.aishang.service.StudentService;
import com.aishang.service.TeacherService;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/content")
public class ContentController {
	@Autowired
	private AboutusService aboutusService;
	@Autowired
	private SchoollifeService schoollifeService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private AdService adService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private ActivityService activityService;
	@Autowired
	private SchoolpicService schoolpicService;
	@Autowired
	private MapService mapService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("customer/save")
	@ResponseBody
	public Result saveCustomer(TbCustomer tbCustomer){
    	Result result = customerService.saveCustomer(tbCustomer);
		return result;
		
	}
	
	@RequestMapping("/aboutus")
	@ResponseBody
	public List<TbAboutus> getAbout(){
		return aboutusService.getAboutus();
	}
	
	@RequestMapping("/company")
	@ResponseBody
	public List<TbCompany> getCompany(){
		return companyService.getCompanyList();
	}
	
	@RequestMapping("/map")
	@ResponseBody
	public List<TbMap> getMap(){
		return mapService.getMap();
	}
	
	@RequestMapping("/teacher")
	@ResponseBody
	public List<TbTeacher> getTeacher(){
		return teacherService.getTeacherList();
	}
	
	@RequestMapping("/ad")
	@ResponseBody
	public List<TbAd> getAd(){
		return adService.getAdList();
	}
	
	@RequestMapping("/student")
	@ResponseBody
	public List<TbStudent> getStudent(){
		return studentService.getStudentList();
	}
	
	@RequestMapping("/getcourses")
	@ResponseBody
	public List<TbCourse> getCourse(){
		return courseService.getCourseList();
	}
	
	@RequestMapping("/getschoolpic")
	@ResponseBody
	public List<TbSchoolpic> getSchoolPic(){
		return schoolpicService.getSchoolPicList();
	}
	
	@RequestMapping("/getactivity")
	@ResponseBody
	public List<TbActivity> getActivity(){
		return activityService.getActivityList();
	}
	
	@RequestMapping("/schoollife")
	@ResponseBody
	public List<TbSchoollife> getSchoollife(){
		return schoollifeService.getSchoollifeList();
	}
	
	@RequestMapping("/getschoollifebyid")
	@ResponseBody
	public TbSchoollife getSchoollifeById(Long id){
		return schoollifeService.getSchoollifeById(id);
	}
	@RequestMapping("/getactivitybyid")
	@ResponseBody
	public TbActivity getActivityById(Long id){
		return activityService.getActivityById(id);
	}
	
	@RequestMapping("/getstudentbyid")
	@ResponseBody
	public TbStudent getStudentById(Long id){
		return studentService.getStudentById(id);
	}
	
	@RequestMapping("/getcompanybyid")
	@ResponseBody
	public TbCompany getCompanyById(Long id){
		return companyService.getCompanyById(id);
	}
	
	@RequestMapping("/getcoursebyid")
	@ResponseBody
	public TbCourse getCourseById(Long id){
		return courseService.getCourseById(id);
	}

}
