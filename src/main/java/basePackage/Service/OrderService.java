package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.OrderDAO;
import basePackage.Entity.Order;

@Service
@Transactional
public class OrderService {
	@Autowired
	private OrderDAO orderDAO;

	public void save(Order order) {
		orderDAO.save(order);
	}

	public void update(Order order) {
		orderDAO.update(order);
	}

	public Order findById(int id) {
		return orderDAO.findById(id);
	}

	public void remove(Order order) {
		orderDAO.remove(order);
	}

	public List<Order> findAll() {
		return orderDAO.findAll();
	}
}
