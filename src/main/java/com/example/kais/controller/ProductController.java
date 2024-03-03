package com.example.kais.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductController {
	
	@GetMapping("/")
	public String getHomepage() {
		return "index";
	}
	
	@GetMapping("/products")
	public String getProductsPage() {
		return "products";
	}
	
	@GetMapping("/products/new")
	public String getNewProductPage() {
		return "newproduct";
	}
	
	@PostMapping("/products/new")
	public String createNewProduct() {
		return "redirect:/products";
	}
	
	@GetMapping("/products/{id}")
	public String getProductDetailsPage() {
		return "product";
	}
	
	@PostMapping("/product/{id}")
	public String updateProductDetails() {
		return "redirect:product";
	}

}
