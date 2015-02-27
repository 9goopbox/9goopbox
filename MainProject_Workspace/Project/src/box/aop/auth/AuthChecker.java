package box.aop.auth;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

@Component
@Aspect
public class AuthChecker {
	private static final boolean logConsole = true;

	@Around("execution(* box.cont.*.*.*(..))")
	public ModelAndView userSessionCheck(ProceedingJoinPoint pjp) throws Throwable {
		HttpSession session = session();
		String mySession = (String) session.getAttribute("userid");
		System.out.println("session : " + mySession);
		if ((mySession == null) || (mySession == "")) {
			if (logConsole)
				System.out.println("인증 정보가 없습니다.");
			ModelAndView mav = new ModelAndView("util/ajax_redirect");
			mav.addObject("address", "../index.box");
			return mav; 
		} else {
			if (logConsole)
				System.out.println("인증 정보 : " + mySession);
			return (ModelAndView) pjp.proceed();
		}
	}
	// Spring Security를 쓰지 않기에 직접 Session을 가져옵니다.
	//http:// stackoverflow.com/questions/1629211/how-do-i-get-the-session-object-in-spring
	public static HttpSession session() {
	    ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    return attr.getRequest().getSession(true); // true == allow create
	}
}
