package com.miniproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobInfo;
import com.google.appengine.api.blobstore.BlobInfoFactory;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class FileOperationModel {

	public void storeFiles(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		PersistenceManager pm = PMF.get().getPersistenceManager();

		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
		List<BlobKey> blobKeys = blobs.get("upload_file");
		if (blobKeys == null || blobKeys.isEmpty()) {
			res.sendRedirect("/admin");
		} else {
			
			
			for (BlobKey blobKey : blobKeys) {
				BlobInfoFactory blobInfoFactory = new BlobInfoFactory();
				BlobInfo info = blobInfoFactory.loadBlobInfo(blobKey);

			/*	System.out.println("Image FileName : " + info.getFilename());
				System.out.println("Image FileName : "
						+ info.getBlobKey().getKeyString());*/
				
				Query q = pm.newQuery(FileUpload.class);
				q.setFilter("filename == filenameParameter");
				q.declareParameters("String filenameParameter");
				@SuppressWarnings("unchecked")
				List<FileUpload> file_info = (List<FileUpload>) q.execute(info.getFilename());
				
				String filename = info.getFilename();
				
				
				if(!file_info.isEmpty())
				{
				String blobkey = info.getBlobKey().getKeyString();
				Key file_key = KeyFactory.createKey("FileUpload",filename);
				Entity fileupload = new Entity("FileUpload", file_key);
				fileupload.setProperty("filename", filename);
				fileupload.setProperty("blobkey", blobkey);
				DatastoreService datastore = DatastoreServiceFactory
						.getDatastoreService();
				datastore.put(fileupload);
				res.sendRedirect("/admin"); 
				}
				else
				{
					req.setAttribute("errorMessage", "file exist");
					res.sendRedirect("/admin");  

				}
		}
		}		
		
	}

	public void downloadFile(String filename, HttpServletRequest req,
			HttpServletResponse res) throws Exception {

		PersistenceManager pm = PMF.get().getPersistenceManager();
		ArrayList<String> list = new ArrayList<String>();
//		String username = req.getParameter("username");
		Query q = pm.newQuery(FileUpload.class);
		q.setFilter("filename == filenameParameter");
		q.declareParameters("String filenameParameter");
		@SuppressWarnings("unchecked")
		List<FileUpload> file_info = (List<FileUpload>) q.execute(filename);

		if (!file_info.isEmpty()) {
			for (FileUpload file : file_info) {
				list.add(file.getBlobkey().toString());
			}
			res.setContentType("application/vnd.oasis.opendocument.spreadsheet");
			res.setHeader("Content-Disposition",
					"attachment;filename=sample.ods");
			BlobstoreService blobstoreService = BlobstoreServiceFactory
					.getBlobstoreService();
			BlobKey blobKey = new BlobKey((String) list.get(0));
			blobstoreService.serve(blobKey, res);
			req.setAttribute("successMessage", "File downloaded Succesfully");
			RequestDispatcher rd = req.getRequestDispatcher("/");
			rd.forward(req, res);
		} else {
			req.setAttribute("errorMessage", "file doesn't not exist");
			RequestDispatcher rd = req.getRequestDispatcher("/");
			rd.forward(req, res);
		}
	}
	
	
	
	}


	

