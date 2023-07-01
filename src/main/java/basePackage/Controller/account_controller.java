package basePackage.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Entity.Account;
import basePackage.Factory.AccountFactory;
import basePackage.Factory.ItemFactory;
import basePackage.Factory.pathFactory;
import basePackage.Service.AccountService;

@Controller
public class account_controller {
	@Autowired
	private AccountService accountService;
	@Autowired
	private ItemFactory itemFactory;

	private String dir = "entityController/account/";

	@RequestMapping(value = { "account-list" })
	public String account_list(Model model) {
		model.addAttribute("listAccount", accountService.findAll());
		return dir + "account-list";
	}

	@RequestMapping(value = { "account-view/{customerID}" })
	public String account_ID(@PathVariable(name = "customerID") long customerID, Model model) {
		model.addAttribute("account", accountService.findByCustomerID(customerID));
		return dir + "account-view";
	}

	@RequestMapping(value = { "account-edit/{customerID}" })
	public String account_edit(@PathVariable(name = "customerID") long customerID, Model model, HttpServletResponse resp) {
		resp.setCharacterEncoding("UTF-8");
		model.addAttribute("account", accountService.findByCustomerID(customerID));
		return dir + "account-edit";
	}

	@RequestMapping(value = { "updateAccount" })
	public String account_update(@ModelAttribute(name = "account") Account account, Model model) {
		accountService.update(account);
		model.addAttribute("account", account);
		return dir + "account-view";
	}

	@RequestMapping(value = { "account-add" })
	public String account_add(Model model) {
		model.addAttribute("account", new Account());
		return dir + "account-add";
	}

	@RequestMapping(value = { "addAccount" })
	public void addAccount(@ModelAttribute(name = "account") Account account,
			@RequestParam(name = "password") String password, Model model, HttpServletResponse resp)
			throws IOException {
		AccountFactory.register(account.getAccount(), password, password, account.getFirstName(), account.getMiddleName(),
				account.getLastName());
		resp.setHeader("Location", "account-list");
		resp.setStatus(302);
	}

	@RequestMapping(value = { "account-delete/{customerID}" })
	public void account_delete(@PathVariable(name = "customerID") long customerID, Model model,
			HttpServletResponse resp, HttpServletRequest req) throws ServletException, IOException {
		AccountFactory.delete(customerID);
		resp.setHeader("Location", "../account-list");
		resp.setStatus(302);
	}
}
