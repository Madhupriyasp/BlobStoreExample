package com.miniproject;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class FileUpload {
	
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long id;

	@Persistent
	private String filename;
	@Persistent
	private String blobkey;
	
	public void setFilename(String newFilename)
	{
	this.filename=newFilename;	
	}

	public void setBlobkey(String newBLobkey)
	{
	this.blobkey=newBLobkey;	
	}

	public String getFilename()
	{
	return filename;	
	}

	public String getBlobkey()
	{
	return blobkey;	
	}



}

