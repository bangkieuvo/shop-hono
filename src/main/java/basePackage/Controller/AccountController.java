package basePackage.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.dialect.PostgreSQL81Dialect;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Entity.Account;
import basePackage.Factory.AccountFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Model.Customer;
import basePackage.Model.LoginAccount;

@Controller()
public class AccountController {
	@RequestMapping(value = "login_register", method = RequestMethod.POST)
	public void register(@RequestParam(name = "account") String account,
			@RequestParam(name = "password") String password,
			@RequestParam(name = "passwordAgain") String passwordAgain, HttpServletResponse resp,
			HttpServletRequest req) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		String firstName = req.getParameter("first-name");
		String middleName = req.getParameter("middle-name");
		String lastName = req.getParameter("last-name");
		boolean isRegisterSuccess = AccountFactory.register(account, password, passwordAgain, firstName, middleName,
				lastName);
		PrintWriter writer = resp.getWriter();
		if (isRegisterSuccess) {
			writer.println("<font color='blue'><b>Register successfully!</b></font>");
		} else {
			writer.println("<font color='red'><b>Register fail!</b></font>");
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/login");
		dispatcher.include(req, resp);
	}

	@RequestMapping(value = "editInfo")
	public void editInfo(HttpServletRequest req, HttpServletResponse resp, Model model)
			throws UnsupportedEncodingException {
		Customer customer = CustomerFactory.login(req, resp);
		Account account = AccountFactory.getAccount(customer.getCustomerID());
		req.setCharacterEncoding("UTF-8");
		String firstName = req.getParameter("first-name");
		String middleName = req.getParameter("middle-name");
		String lastName = req.getParameter("last-name");
		account.setFirstName(firstName);
		account.setMiddleName(middleName);
		account.setLastName(lastName);
		AccountFactory.updateAccount(account);
		customer = CustomerFactory.login(req, resp);
		model.addAttribute("customer", customer);
		resp.setHeader("Location", "/shop-hono/my-account");
		resp.setStatus(302);
	}

	@RequestMapping(value = "changePassword")
	public void changePassword(HttpServletRequest req, HttpServletResponse resp, Model model,
			@RequestParam(name = "password") String password, @RequestParam(name = "newPassword") String newPassword,
			@RequestParam(name = "newPasswordAgain") String newPasswordAgain) throws IOException, ServletException {
		Customer customer = CustomerFactory.login(req, resp);
		boolean isSucceed = false;
		if (customer != null) {
			Account account = AccountFactory.getAccount(customer.getCustomerID());
			if (account.getHashedPassword() == password.hashCode() && newPassword.equals(newPasswordAgain)) {
				account.setHashedPassword(newPassword.hashCode());
				AccountFactory.updateAccount(account);
				Cookie[] cookies = req.getCookies();
				String loginID = "";
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("loginID")) {
						loginID = cookie.getValue();
					}
				}
				HttpSession session = req.getSession();
				LoginAccount loginAccount = (LoginAccount) session.getAttribute(loginID);
				loginAccount.setPassword(newPassword);
				session.setAttribute("1111", loginAccount);
				Cookie cookie = new Cookie("loginID", "1111");
				cookie.setMaxAge(60 * 60 * 24);
				resp.addCookie(cookie);
				isSucceed = true;
			}
		}
		resp.setCharacterEncoding("UTF-8");
		if (isSucceed) {
			resp.getWriter().println("<font color='blue'><b>Change password successfully!</b></font>");
			req.getRequestDispatcher("my-account").include(req, resp);
		} else {
			resp.getWriter().println("<font color='red'><b>Change password fail!</b></font>");
			req.getRequestDispatcher("my-account").include(req, resp);
		}
	}
}
