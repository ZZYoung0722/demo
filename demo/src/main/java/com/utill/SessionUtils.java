package com.utill;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

public class SessionUtils {

	//저장    @param name 속성명
	//	      @param value 객체
	public static void addAttribute(String name, Object value) {
		RequestContextHolder.getRequestAttributes().setAttribute(name, value, RequestAttributes.SCOPE_SESSION);
	}
	
	//속성명 전달받아서 session객체에 해당 속성명으로 저장된 객체 삭제
	public static void removeAttribute(String name) {
		RequestContextHolder.getRequestAttributes().removeAttribute(name, RequestAttributes.SCOPE_SESSION);
	}
	
	//속성명 전달받아서 session객체에 해당 속성명으로 저장된 객체 반환   Object:리턴값
	public static Object getAttribute(String name) {
		return RequestContextHolder.getRequestAttributes().getAttribute(name, RequestAttributes.SCOPE_SESSION);
	}
}
