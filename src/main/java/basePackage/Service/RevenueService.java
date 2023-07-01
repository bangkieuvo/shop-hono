package basePackage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import basePackage.DAO.RevenueDAO;
import basePackage.Entity.Product;
import basePackage.Entity.Revenue;

@Service
@Transactional
public class RevenueService {
	@Autowired
	private RevenueDAO dao;

	public void save(Revenue revenue) {
		dao.save(revenue);
	}

	public void update(Revenue revenue) {
		dao.update(revenue);
	}

	public Revenue findByProductID(long productID) {
		return dao.findByProductID(productID);
	}

	public List<Revenue> findAll() {
		return dao.findAll();
	}
}
