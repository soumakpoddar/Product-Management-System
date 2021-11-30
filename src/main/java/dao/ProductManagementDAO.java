package dao;

import java.sql.*;
import java.util.*;
import dbutil.DBUtil;
import pojo.Product;

public class ProductManagementDAO {
	
	
	public static List<Product> getAllProducts()
	{
		List<Product> productList = new ArrayList<Product>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM product");
			while(rs.next())
			{
				Product product = new Product(rs.getString("prod_id"),rs.getString("prod_name"),rs.getString("prod_category"),rs.getInt("prod_price"));
				productList.add(product);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return productList;
	}
	
	
	public static Product getProductById(String productId)
	{
		Product product = null;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM product WHERE prod_id = ?");
			ps.setString(1, productId);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				product = new Product(rs.getString("prod_id"),rs.getString("prod_name"),rs.getString("prod_category"),rs.getInt("prod_price"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return product;
	}
	
	
	public static int addProduct(Product product)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO product VALUES(?,?,?,?)");
			ps.setString(1, product.getProductId());
			ps.setString(2, product.getProductName());
			ps.setString(3, product.getProductCategory());
			ps.setInt(4, product.getProductPrice());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int updateProduct(Product product)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE product SET prod_name=?, prod_category=?, prod_price=? WHERE prod_id=?");
			ps.setString(1, product.getProductName());
			ps.setString(2, product.getProductCategory());
			ps.setInt(3, product.getProductPrice());
			ps.setString(4, product.getProductId());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int deleteProduct(String productId)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM product where prod_id = ?");
			ps.setString(1, productId);
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}
