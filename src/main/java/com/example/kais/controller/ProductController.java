package com.example.kais.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.kais.entity.Product;
import com.example.kais.service.CustomUserDetails;
import com.example.kais.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/")
	public String getHomepage() {
		return "index";
	}
	
	@GetMapping("/products")
	public String getProductsPage(Model model, @AuthenticationPrincipal CustomUserDetails loggedinUser) {
		List<Product> products = productService.getAllProducts();
		model.addAttribute("username", loggedinUser.getUsername());
		model.addAttribute("products", products);
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
	public String getProductDetailsPage(Model model, @PathVariable("id") Long id) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "product";
	}
	
	@PostMapping("/products/{id}")
	public String updateProductDetails() {
		return "redirect:products";
	}

}
