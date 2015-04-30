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

	public final String SearchProductByBrand="from Product as p where p.brand like :key or p.title like :key";
	public final String SearchProductByPriceBigger="from Product as p where price > :key";
	public final String SearchProductByPriceSmall="from Product as p where price < :key";
	public final String SearchProductByPricebetween="from Product as p where price >:skey and price <:bkey";
	public final String SearchProductByColor="from Product as p where p.color=:key ";
	public final String getProductById="from Product as p where p.id=:key";
	
	public final String getOrderByBuyerId="from Order as o where o.buyerId =:key";
	public final String getOrderProductByOrderId="from OrderProduct as o where o.order_id =:key";
	public final String getBankInfoBuyerId="from BankInfo where  buyerId =:key";
	public final String getAddressByBuyerId="from Shipping_Address where  buyerId =:key";
	public final String getAddressById="from Shipping_Address where  id =:key";
	public final String deleteAddress="delete  Shipping_Address where  id =:key";
	
	public final String getShippingCartByBuyerId="from  ShoppingCart where  buyerId =:key";
}
