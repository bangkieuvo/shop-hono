package basePackage.Entity;

import javax.persistence.*;

@Entity
@Table(name = "cart_items",
       uniqueConstraints = {@UniqueConstraint(columnNames = {"user_id", "product_id"})})
public class CartItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id", nullable = false)
    private Long userId;

    @Column(name = "quantity", nullable = false)
    private Long quantity;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;



    public CartItem() {
		
	}

	public CartItem(Long userId, Long quantity, Product product) {
		this.userId = userId;
		this.quantity = quantity;
		this.product = product;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
