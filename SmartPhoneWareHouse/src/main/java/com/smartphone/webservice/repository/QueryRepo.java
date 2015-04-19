package com.smartphone.webservice.repository;

/**
 * Query : Contains query strings, define how to get data .
 * 
 * @author Yizhen Chen
 */
public class QueryRepo {
	
	//User Query
	public final String selectAllUser = "from User";
		
	//Note Query
	public final String getNoteContent = "SELECT notecontent FROM note_table WHERE noteid = ";
	public final String getNoteOffset = "SELECT offset FROM note_table WHERE noteid = ";
	
	//Project Query
	public final String getProject = "SELECT * FROM  project WHERE projectname";
	public final String getGrade = "SELECT * FROM project_grade WHERE `projectid`=";
	public final String getGroup = "SELECT * FROM project_group INNER JOIN group_table ON groupid = idgroup WHERE `projectid";
	public final String isProjectDeleted = "SELECT deleted from project where projectname =";
	public final String project_list = "SELECT * FROM project where `part_id`=";
	public final String deleteProj ="";
	public final String RecoverProj="";
	public final String updateproject="";
	
	public final String SearchProductByKeywords="from Product as p where p.name like :key  or p.brand like :key or p.title like :key";

}
