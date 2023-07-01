package basePackage.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basePackage.DAO.WishListDAO;
import basePackage.Entity.WishList;

@Service
@Transactional
public class WishListService {
	@Autowired
	private WishListDAO wishListDAO;

	public void save(WishList wishList) {
		wishListDAO.save(wishList);
	}

	public void update(WishList wishList) {
		wishListDAO.update(wishList);
	}

	public void delete(long customerID) {
		WishList wishList = wishListDAO.findByCustomerID(customerID);
		if (wishList != null) {
			wishListDAO.delete(wishList);
		}
	}

	public WishList findByCustomerID(long customerID) {
		WishList wishList = wishListDAO.findByCustomerID(customerID);
		wishList.updateListItem();
		return wishList;
	}

	public List<WishList> findAll() {
		List<WishList> list = wishListDAO.findAll();
		for(WishList wishList : list) {
			wishList.updateListItem();
		}
		return list;
	}
}
