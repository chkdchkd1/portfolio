package kr.green.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.project.vo.UserVo;

public class AuthAdminInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			//prehandle 가기전에 가로채고 return false면 해당 controller로 안가고 return true면 해당 controller로 간다 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		UserVo user2 = (UserVo)user;
		if(user == null || !user2.getId().equals("admin") ) {
			response.sendRedirect(request.getContextPath()+"/");
			return false;
		}
		return true;
	}
	

}
