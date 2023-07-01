package basePackage.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import basePackage.Entity.Account;
import basePackage.Factory.AccountFactory;
import basePackage.Factory.CustomerFactory;
import basePackage.Model.LoginAccount;

@Controller
public class LoginController {
	@RequestMapping(value = "login_login", method = RequestMethod.POST)
	public void login(@RequestParam(name = "account") String account, @RequestParam(name = "password") String password,
			@RequestParam(name = "url", required = false, defaultValue = "index") String prePage,
			HttpServletResponse resp, HttpServletRequest req) throws IOException, ServletException {
		Account a = AccountFactory.login(account, password);
		if (a != null) {
			HttpSession session = req.getSession();
			Cookie cookie = new Cookie("loginID", "1111");
			cookie.setMaxAge(60 * 60 * 24);
			session.setAttribute("1111", new LoginAccount(account, password));
			resp.addCookie(cookie);
			resp.setHeader("Location", "/shop-hono/" + prePage);
			resp.setStatus(302);
			return;
		}
		PrintWriter writer = resp.getWriter();
		writer.println("<font color='red'><b>You have entered incorrect account or password!</b></font>");
		RequestDispatcher dispatcher = req.getRequestDispatcher("/" + prePage);
		dispatcher.include(req, resp);
	}

	@RequestMapping(value = "logout")
	public void logout(@RequestParam(name = "url", required = false, defaultValue = "index") String prePage,
			HttpServletRequest req, HttpServletResponse resp) {
		CustomerFactory.logout(req, resp);
		resp.setHeader("Location", "/shop-hono/" + prePage);
		resp.setStatus(302);
	}
}
