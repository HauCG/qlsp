package org.example.productmanagement.service;

import org.example.productmanagement.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static final Map<Integer, Product> products = new HashMap<>();


    static {
        products.put(1, new Product(1, "iPhone", 999.99, "Latest model", "Apple"));
        products.put(2, new Product(2, "Galaxy", 899.99, "New release", "Samsung"));
        products.put(3, new Product(3, "Pixel", 799.99, "Best camera", "Google"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products.values()) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}
