package com.management.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.management.product.entities.Product;
import com.management.product.services.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productServ;
	
	@GetMapping("/")
	public String HomePage()
	{
		return "index.jsp";
	}
	
	@GetMapping("/add")
	public String AddProduct()
	{
		return "AddProduct.jsp";
	}
	
	@PostMapping("/status")
	public String newProduct(Product obj, Model m)
	{
		String status= productServ.addNewProduct(obj);
		if("success".equals(status))
		{
			m.addAttribute("successMsg", "Product Added Successfully!!");
		}
		else {
			m.addAttribute("errorMsg", "Failed To Add Product!!");
		}
		return "ActivityStatus.jsp";
	}
	
	@GetMapping("/productlist")
	public String viewProduct(Model m)
	{
		m.addAttribute("products" ,productServ.getAllProducts());
		return "ViewProducts.jsp";
	}
	
	@GetMapping("/updateproduct")
	public String update() {
	    return "UpdateProduct.jsp";
	}


	
	@PostMapping("/update")
	public String updateProduct(Product obj, Model m)
	{
		String status= productServ.updateProduct(obj);
		if("Updated".equals(status)) {
			m.addAttribute("successMsg", "Updated Successfully");
		}
		else {
			m.addAttribute("errorMsg" , "Failed To Update");	
		}
		return "ActivityStatus.jsp";
	}
	@GetMapping("/delete")
	public String delete() {
		return "DeleteProduct.jsp";
	}
	
	@PostMapping("/deleteproduct")
	public String deleteProduct(int prodid, Model m)
	{
		String status= productServ.deleteProduct(prodid);
		if("success".equals(status)) {
			m.addAttribute("successMsg", "Deleted Successfully");
			
		}
		else {
			m.addAttribute("errorMsg", "Failed to Delete");
			
		}
		return "ActivityStatus.jsp";
	}
	@GetMapping("/lowstock")
	public String lowStock(Model m) {
		List<Product> lowStockList = productServ.getLowStockProduct(5);
		m.addAttribute("lowStockList", lowStockList);
		return "LowStockAlert.jsp";
	}
}
