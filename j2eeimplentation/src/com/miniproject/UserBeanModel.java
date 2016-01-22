package com.miniproject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;

public class UserBeanModel {
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	static PersistenceManager pm = PMF.get().getPersistenceManager();

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void storeData(HttpServletRequest req, HttpServletResponse res)
			throws Exception, IOException {

		// Get client request and process
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String username = req.getParameter("username");
		String password1 = req.getParameter("password1");
		String password2 = req.getParameter("password2");
		String birthday = req.getParameter("birthday");
		String gender = req.getParameter("gender");
		String role = req.getParameter("role");
		String branch = req.getParameter("branch");
		String semester = req.getParameter("semester");
		String year = req.getParameter("year");

		// Temporary storage in user object

		Users usersData = new Users();
		usersData.setName(name);
		usersData.setEmail(email);
		usersData.setUserName(username);
		usersData.setPassword(password1);
		usersData.setRePassword(password2);
		usersData.setBirthDate(birthday);
		usersData.setGender(gender);
		usersData.setRole(role);
		usersData.setSem(semester);
		usersData.setBranch(branch);
		usersData.setYear(year);

		// store data as persistant storage
		ArrayList em = new ArrayList();
		String queryStr = "SELECT FROM " + Users.class.getName();
		Query q = pm.newQuery(queryStr);
		@SuppressWarnings("all")
		List<Users> users = (List<Users>) q.execute();
		// System.out.println(users + "user data");

		// check list has null sets
		if (!users.isEmpty()) {
			for (Users user : users) {
				String user_username = user.getUserName();
				String user_email = user.getEmail();
				em.add(user_username);
				em.add(user_email);
			}
			
			if (em.equals(username)) {
				req.setAttribute("errorMessage",
						"Username Exist!Use Some other name");
				RequestDispatcher rd = req.getRequestDispatcher("/");
				rd.forward(req, res);
			} else if (em.equals(email)) {
				req.setAttribute("errorMessage", "Email-ID Exist");
				RequestDispatcher rd = req.getRequestDispatcher("/");
				rd.forward(req, res);
			} else {
				usersData.setEmail(email);
				usersData.setUserName(username);
				req.setAttribute("successMessage", "Registered succesfully");
				req.setAttribute("username", username);
				try {
					pm.makePersistent(usersData);
				} finally {
					RequestDispatcher rd = req.getRequestDispatcher("/");
					rd.forward(req, res);
				}
			}
		}
		else
		{
			usersData.setEmail(email);
			usersData.setUserName(username);
			req.setAttribute("successMessage", "Registered succesfully");
			req.setAttribute("username", username);
			try {
				pm.makePersistent(usersData);
			} finally {
				RequestDispatcher rd = req.getRequestDispatcher("/");
				rd.forward(req, res);
			}
		}
	}

	public void validateLoginDetails(HttpServletRequest req,
			HttpServletResponse res) throws Exception, IOException {
		HttpSession session = req.getSession();
		HashMap<String, String> hm = new HashMap<String, String>();

		String username = req.getParameter("username");
		String password = req.getParameter("password1");
		String role = req.getParameter("role");

		// System.out.println(username + password + role);
		List<Users> values = getDetailsOfUser(role);
		List<Users> data = getDetailsOf(role,username);

		if (!values.isEmpty()) {
			for (Users user : values) {
				String user_username = user.getUserName();
				String user_pwd = user.getPassword();

				// System.out.println(user_username + user_pwd);
				hm.put(user_username, user_pwd);
				// System.out.println(hm);
			}
			
			String hm_password = (String) hm.get(username);
			if (hm_password != null) {
				if (hm_password.equals(password)) {
					session.setAttribute("username", username);
					session.setAttribute("password", password);

					if (role.equals("student")) {
						req.setAttribute("username",username);
						RequestDispatcher rd = req
								.getRequestDispatcher("/student_success");
						rd.forward(req, res);

					}
					if (role.equals("staff")) {
						req.setAttribute("username", username);
						RequestDispatcher rd = req
								.getRequestDispatcher("/staff_success");
						rd.forward(req, res);
					}
					if (role.equals("admin")) {
						RequestDispatcher rd = req
								.getRequestDispatcher("/sample");
						rd.forward(req, res);
					}
				} else {
					System.out.println("false");
					req.setAttribute("errorMessage", "password not match");
					session.invalidate();

					RequestDispatcher rd = req.getRequestDispatcher("/");
					rd.forward(req, res);
				}
			} else {
				System.out.println("false");
				req.setAttribute("errorMessage", "Invalid details");
				session.invalidate();

				RequestDispatcher rd = req.getRequestDispatcher("/");
				rd.forward(req, res);
			}

		}
		else
		{
			System.out.println("false");
			req.setAttribute("errorMessage", "Invalid details");
			session.invalidate();

			RequestDispatcher rd = req.getRequestDispatcher("/");
			rd.forward(req, res);
		}
	
	}
	public static List<Users> getDetailsOf(String role,String username) {

		Query q = pm.newQuery(Users.class);
		q.setFilter("role == roleParameter && username == usernameParameter");
		q.declareParameters("String roleParameter,String usernameParameter");
		@SuppressWarnings("unchecked")
		List<Users> results = (List<Users>) q.execute(role,username);
		return results;
	}
	
	
	public static List<Users> getDetailsOfUser(String role) {

		Query q = pm.newQuery(Users.class);
		q.setFilter("role == roleParameter");
		q.declareParameters("String roleParameter");
		@SuppressWarnings("unchecked")
		List<Users> results = (List<Users>) q.execute(role);
		return results;
	}
}
/*
 * public void onAfterRegisterSendMail(String recepientname, String
 * receipientMailID) throws Exception { // TODO Auto-generated method stub
 * 
 * String host = ""; java.util.Properties properties = System.getProperties();
 * properties.setProperty("mail.smtp.host", host); Session session =
 * Session.getDefaultInstance(properties);
 * 
 * String msgBody = "hello there"; try {
 * 
 * 
 * MimeMessage msg = new MimeMessage(session); msg.setFrom(new
 * InternetAddress("spmadhupriya@gmail.com", "Example.com Admin"));
 * msg.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
 * 
 * msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
 * "priyaflycart@gmail.com", "Mr. User"));
 * msg.setSubject("Your Example.com account has been activated");
 * msg.setText(msgBody); Transport.send(msg);
 * System.out.println("Message sent successfully");
 * 
 * } catch (AddressException e) { System.out.println(e); } catch
 * (MessagingException e) { System.out.println(e); }
 * 
 * 
 * }
 */

