package org.example.productmanagement.service;

import org.example.productmanagement.model.Product;
import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void save(int id, Product product);
    Product findById(int id);
    void update(int id, Product product);
    void remove(int id);
    List<Product> searchByName(String name);
}
