
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>

        <title>Upload Test</title>
    </head>
        <body>
         <form action="<%= blobstoreService.createUploadUrl("/storefile") %>" method="post" enctype="multipart/form-data">
            <input type="text" name="filename">
            <input type="file" name="upload_file">
            <input type="submit" value="Submit">
        </form>
   
        
    </body>
</html>