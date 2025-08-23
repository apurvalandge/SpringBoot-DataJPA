package com.management.product.repos;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.management.product.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query("select count(p) from Product p")
    long getTotalProducts();

    @Query("select count(distinct p.brand) from Product p")
    long getTotalBrands();

    @Query("select count(p) from Product p where p.stockquant<5")
    long getLowStockProducts();

    @Query("select count(p) from Product p where p.stockquant=0")
    long getOutOfStockProducts();
    
    Optional<Product> findByProdid(int prodid);
    List<Product> findByStockquantLessThan(int threshold);
    
}
