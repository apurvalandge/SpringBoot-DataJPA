package com.management.product.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.management.product.entities.Product;
import com.management.product.repos.ProductRepository;

@Service

public class ProductService {

	@Autowired
	private ProductRepository productRepo;
	
	public long getTotalProducts() {
		return productRepo.getTotalProducts();
	}
	
		public long getTotalBrands() {
		    return productRepo.getTotalBrands();
		}

		public long getLowStockProducts() {
			return productRepo.getLowStockProducts();
		}
		
		public long getOutOfStockProduct() {
			return productRepo.getOutOfStockProducts();
		}
	
		public String addNewProduct(Product obj)
		{
			//String status;
			try {
				productRepo.save(obj);
				return "success";
			}
			catch(Exception e) {
				return "failed";
			}
		}
		
		public List<Product> getAllProducts()
		{
			return productRepo.findAll();
		}
		
		public String updateProduct(Product obj) {
		Optional<Product> existing= productRepo.findByProdid(obj.getProdid()); 
		if(existing.isPresent()) {
			productRepo.save(obj);
			return "Updated";
		}
		else {
			return "Failed";
		}
	}
		
		public String deleteProduct(int prodid) {
		    Optional<Product> obj = productRepo.findById(prodid);  
		    if (obj.isPresent()) {
		        productRepo.delete(obj.get());
		        return "success";
		    } else {
		        return "failed";
		    }
		}
		
		public List<Product> getLowStockProduct (int threshold){
			return productRepo.findByStockquantLessThan(threshold);
		}

}
