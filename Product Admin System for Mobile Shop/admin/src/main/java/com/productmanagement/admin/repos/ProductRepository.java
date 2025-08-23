package com.productmanagement.admin.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.productmanagement.admin.entites.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{



	
}
