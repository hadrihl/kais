package com.example.kais.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.example.kais.entity.Product;
import com.example.kais.repository.ProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> getAllProducts() {
		List<Product> products = new ArrayList<Product>();
		products = productRepository.findAll();
		
		return products;
	}
	
	public Product getProductById(Long id) {
		return productRepository.findById(id).get();
	}
	
	public Product updateProductDetails(Product product, Long id) {
		Product existedProduct = productRepository.findById(id).get();
		
		if(product == null) {
			return null;
			
		} else {
			existedProduct.setName(product.getName());
			existedProduct.setDescription(product.getDescription());
			existedProduct.setCategory(product.getCategory());
			existedProduct.setPrice(product.getPrice());
			existedProduct.setQuantity(product.getQuantity());
			
			return productRepository.save(existedProduct);
		} 
	}
	
	public Product createNewProduct(Product product) {
		return productRepository.save(product);
	}
	
	public void deleteProduct(Long id) {
		productRepository.deleteById(id);
	}
}
