/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package scented.model;

public class InventoryModel {
    
    private int productId;
    private String productName;
    private String productDescription;
    private String size;
    private double price;
    private int quantity;
    
    public InventoryModel() {
        // Set as empty
    }
    
    public InventoryModel (int productId){
        this.productId = productId;
    }
    
    public InventoryModel(int productId, String productName, String productDescription, String size, double price, int quantity) {
        this.productId = productId;
        this.productName = productName;
        this.productDescription = productDescription;
        this.size = size;
        this.price = price;
        this.quantity = quantity;
    }
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
    
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }
    
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}