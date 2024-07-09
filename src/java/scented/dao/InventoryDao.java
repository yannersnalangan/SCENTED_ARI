package scented.dao;

import scented.model.InventoryModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class InventoryDao {

    /**
     * Retrieves the list of products from the inventory.
     *
     * @return A list of InventoryModel objects representing the products.
     */
    public ArrayList<InventoryModel> getProductList() {
        ArrayList<InventoryModel> productList = new ArrayList<>();
        String query = "SELECT * FROM inventory";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                InventoryModel product = new InventoryModel();
                product.setProductId(rs.getInt("productID"));
                product.setProductName(rs.getString("productName"));
                product.setProductDescription(rs.getString("productDescription"));
                product.setSize(rs.getString("size"));
                product.setPrice(rs.getDouble("price"));
                product.setQuantity(rs.getInt("quantity"));
                productList.add(product);
            }
        } catch (SQLException e) {
            System.out.println("getProductList Error: " + e);
        }
        return productList;
    }

    /**
     * Retrieves the details of a specific product by its ID.
     *
     * @param productId The ID of the product to retrieve.
     * @return An InventoryModel object representing the product, or null if not found.
     */
    public InventoryModel getProductDetails(int productId) {
        InventoryModel productDetails = null;
        String query = "SELECT * FROM inventory WHERE productID = ?";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    productDetails = new InventoryModel(
                            rs.getInt("productID"),
                            rs.getString("productName"),
                            rs.getString("productDescription"),
                            rs.getString("size"),
                            rs.getDouble("price"),
                            rs.getInt("quantity")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println("getProductDetails Error: " + e);
        }
        return productDetails;
    }

    /**
     * Creates a new product in the inventory.
     *
     * @param product An InventoryModel object representing the product to create.
     * @return true if the product was successfully created, false otherwise.
     */
    public boolean createProduct(InventoryModel product) {
        boolean success = false;
        String query = "INSERT INTO inventory (productID, productName, productDescription, size, price, quantity) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, product.getProductId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getProductDescription());
            ps.setString(4, product.getSize());
            ps.setDouble(5, product.getPrice());
            ps.setInt(6, product.getQuantity());
            int rowAffected = ps.executeUpdate();
            success = rowAffected != 0;
        } catch (SQLException e) {
            System.out.println("createProduct Error: " + e);
        }
        return success;
    }

    /**
     * Updates an existing product in the inventory.
     *
     * @param product An InventoryModel object representing the updated product details.
     * @return true if the product was successfully updated, false otherwise.
     */
    public boolean updateProduct(InventoryModel product) {
        boolean success = false;
        String query = "UPDATE inventory SET productName = ?, productDescription = ?, size = ?, price = ?, quantity = ? WHERE productID = ?";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, product.getProductName());
            ps.setString(2, product.getProductDescription());
            ps.setString(3, product.getSize());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getProductId());
            int rowAffected = ps.executeUpdate();
            success = rowAffected != 0;
        } catch (SQLException e) {
            System.out.println("updateProduct Error: " + e);
        }
        return success;
    }

    /**
     * Deletes a product from the inventory.
     *
     * @param productId The ID of the product to delete.
     * @return true if the product was successfully deleted, false otherwise.
     */
    public boolean deleteProduct(int productId) {
        boolean success = false;
        String query = "DELETE FROM inventory WHERE productID = ?";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            int rowAffected = ps.executeUpdate();
            success = rowAffected != 0;
        } catch (SQLException e) {
            System.out.println("deleteProduct Error: " + e);
        }
        return success;
    }
}
