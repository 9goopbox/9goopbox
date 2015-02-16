package box.aop.auth;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class AuchChecker {
	private static final boolean logConsole = true;

	@Before("execution(* box.cont.frame(..))")
	private void userSessionCheck(HttpSession session) {
		String mySession = (String) session.getAttribute("userid");
		if ((mySession == null) || (mySession == "")) {
			if (logConsole)
				System.out.println("인증 정보가 없습니다.");
			System.exit(0);
		} else {
			if (logConsole)
				System.out.println("인증 정보 : " + mySession);
		}

	}

}
