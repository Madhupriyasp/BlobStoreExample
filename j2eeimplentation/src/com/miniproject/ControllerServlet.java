package com.miniproject;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@Controller
public class ControllerServlet {
	@RequestMapping("/")
	public String homePage(HttpServletRequest req) {

		/*
		 * HttpSession session=req.getSession(false); if(session!=null){ }
		 */
		return "index";
	}

	@RequestMapping(value = "/student_success", method = RequestMethod.GET)
	public String onAfterStudentLogin(ModelMap model) {

		return "StudentLoginSuccess";

	}
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String showaboutUs(ModelMap model) {

		return "AdminPage";

	}
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String showaboutUsPage(ModelMap model) {

		return "about";

	}
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String showcoursePage(ModelMap model) {

		return "contactus";

	}
	@RequestMapping(value = "/alumni", method = RequestMethod.GET)
	public String showContactUsPage(ModelMap model) {

		return "alumni";

	}
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	public String showAlumnige(ModelMap model) {

		return "course";

	}

	
	
	

	@RequestMapping(value = "/staff_success", method = RequestMethod.GET)
	public String onAfterStaffLogin(ModelMap model) {

		return "StaffLoginSuccess";

	}
	
	@RequestMapping(value = "/sample", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String showAdmin(ModelMap model) {

		return "sample";

	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String showUpload(ModelMap model) {

		return "Upload";

	}

	@RequestMapping(value = "/add", method = { RequestMethod.GET,
			RequestMethod.POST })
	// method=RequestMethod.POST)
	public void getInputToRegister(HttpServletRequest req,
			HttpServletResponse res, ModelMap model) throws Exception {

		UserBeanModel userbeanobj = new UserBeanModel();
		userbeanobj.storeData(req, res);

	}
	
	
	@RequestMapping(value = "/create", method = { RequestMethod.GET,
			RequestMethod.POST })
	// method=RequestMethod.POST)
	public String getInputTo(HttpServletRequest req,
			HttpServletResponse res, ModelMap model) throws Exception {
		String day = req.getParameter("day");
		String name = req.getParameter("name");
		String period1 = req.getParameter("period1");
		String period2 = req.getParameter("period2");
		String period3 = req.getParameter("period3");
		String period4 = req.getParameter("period4");
		String period5 = req.getParameter("period5");
		
		Key key = KeyFactory.createKey("User1",name);
		Entity new_en = new Entity("User1", key);
		new_en.setProperty("Day", day);
		//new_en.setProperty("Name", name);
		new_en.setProperty("Period1", period1);

		new_en.setProperty("Period2", period2);

		new_en.setProperty("Period3", period3);

		new_en.setProperty("Period4", period4);

		new_en.setProperty("Period5", period5);

		DatastoreService datastore = DatastoreServiceFactory
				.getDatastoreService();
		datastore.put(new_en);
		
		return "admin";

	}

	@RequestMapping(value = "/you", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getInputToLogin(HttpServletRequest req,
			HttpServletResponse res, ModelMap model) throws Exception,
			IOException {
		UserBeanModel userbeanobj = new UserBeanModel();
		userbeanobj.validateLoginDetails(req, res);

	}

	@RequestMapping(value = "/storefile", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void onAfterGetFile(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		FileOperationModel fileoperation = new FileOperationModel();
		fileoperation.storeFiles(req, res);

	}

	@RequestMapping(value = "/download{branch}", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void servefile(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		String filename = (String) req.getAttribute("branch");
/*		System.out.println(branch);
*/		FileOperationModel fileoperation = new FileOperationModel();
		fileoperation.downloadFile(filename+".ods", req, res);
	}
	


}
