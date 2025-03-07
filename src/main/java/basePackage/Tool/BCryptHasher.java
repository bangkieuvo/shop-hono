package basePackage.Tool;

import org.springframework.stereotype.Component;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Component("bCryptHasher")
public class BCryptHasher {
	private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public String hash(String plainPassword) {
        return passwordEncoder.encode(plainPassword);
    }

    public boolean isMatch(String plainPassword, String hashedPassword) {
        return passwordEncoder.matches(plainPassword, hashedPassword);
    }
}
