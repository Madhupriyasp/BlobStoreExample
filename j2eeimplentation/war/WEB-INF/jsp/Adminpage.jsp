
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.miniproject.FileUpload" %>
<%@ page import="com.miniproject.PMF" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="javax.jdo.Query" %>

<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>

<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>


<%@ page import="com.google.appengine.api.datastore.PreparedQuery"%>
<%@ page import="com.google.appengine.api.datastore.PreparedQuery"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
/* PersistenceManager pm = PMF.get().getPersistenceManager();
Query q = pm.newQuery(FileUpload.class);

List<FileUpload> results = null;
results = (List<FileUpload>) q.execute(); */

/* import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate; */

Query query = new Query("Users1");
PreparedQuery pq = datastore.prepare(query);
for (Entity userentity : pq.asIterable()) {
	String username = (String) userentity.getProperty("username");
}

%>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/register.css">
<script type="text/javascript" src="js/register.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


</head>
<body>


	<div id="header">
		<div class="block_header">
			<img src="kcgimages/logo_text.gif" border="0" alt="logo" />
			<div class="container" id="cont">
				<a href="/" class="header-mainmenu"><strong>Home</strong></a> <a
					href="/aboutus" class="header-mainmenu"><strong>About
						Us</strong></a> <a href="/course" class="header-mainmenu"><strong>Course
						offered</strong></a> <a href="/contactus" class="header-mainmenu"><strong>Contacts
						Us</strong></a> <a href="/alumni" class="header-mainmenu"><strong>Alumni</strong></a>
		
		<div class="socialmedia">
				<a href="https://www.facebook.com/KCG.College" target="_blank"> <img
					style="vertical-align: middle" src="kcgimages/fb-icon.png"
					border="0" /></a> &nbsp; <a href="http://Twitter.com/KCGtechnology"
					target="_blank"> <img style="vertical-align: middle"
					src="kcgimages/twitter.png" border="0" /></a> &nbsp; <a
					href="http://in.linkedin.com/pub/kcg-college-chennai/33/596/850"
					target="_blank"> <img style="vertical-align: middle;"
					src="kcgimages/linkedin.png" border="0" /></a> &nbsp;
					</div>
				<div class="right_menu" style="top:-30px;right:-150px">
					<a href="/" data-toggle="modal" class="btn btn-info"
						data-dismiss="modal">Logout</a> 
				</div>

			</div>
			<div class="successMessage" style="color: green;">
				<p>${successMessage}</p>
			</div>
			<div class="error-message" style="color: #ff6565;">
				<p>${errorMessage}</p>
			</div>
		</div>
	</div>



	<div id="nav">
		<p>
			<marquee behavior="alternate" direction="up">
				<img src="kcgimages/imagesprinci.jpg" width="300" height="200"
					alt="Natural" /> <img src="kcgimages/kcgconnect.jpg" width="300"
					height="120" alt="Natural" /> <img src="kcgimages/sports.jpg"
					width="300" height="120" alt="Natural" /> <img
					src="kcgimages/sports1.jpg" width="300" height="120" alt="Natural" />
				<img src="kcgimages/opinion2.jpg" width="300" height="120"
					alt="Natural" /> <img src="kcgimages/opinion1.jpg" width="300"
					height="120" alt="Natural" /> <img src="kcgimages/sports.jpg"
					width="300" height="120" alt="Natural" /> <img
					src="kcgimages/image7.jpg" width="300" height="120" alt="Natural" />

			</marquee>
		</p>

	</div>
	
	
	
	
	<div id="section">
	
	
<form action="/" method="post">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="/sample" 
  style = "height:25px;padding:2px;font-size:12px">Upload File</button><br><br><br>

 </form>
 
<div class="container" style = "left:-16px;width:1000px;height:1000px">

  <!-- Modal -->
  <div class="modal fade" id="upload_btn" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Select File...
</h4>
        </div>
        <div class="modal-body">
         <form action="<%= blobstoreService.createUploadUrl("/storefile") %>" method="post" enctype="multipart/form-data">
            <input type="hidden" name="filename">
            <input type="file" name="upload_file"><br>
            <input type="submit" value="Submit">
        </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
 
  <p>List of file in the server
  </p>                                                                                      
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr class="success">
        <th>#</th>
        <th>FileName</th>
       
      </tr>
    </thead>
    <tbody>
      
   
   
    <%
	if(!results.isEmpty()){
				 for(FileUpload file : results){
						 
		%>
	   
<tr class="success">      
        <td><input type="checkbox" name="file_id" value=""file_id"">
        </td>
        <td><%= file.getFilename() %></td>
      </tr>
     
   <% } } %>
    </tbody>
  </table>
  </div>
</div>
 
 
</div>
		
		
<div id="footer">
</div>




</body>
</html>
