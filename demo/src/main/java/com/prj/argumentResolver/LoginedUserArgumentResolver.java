package com.prj.argumentResolver;

import com.prj.annotation.LoginedUser;
import com.utill.SessionUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;


//HandlerMethodArgumentResolver
//요청핸들러 메소드의 매개변수를 분석해서 해당 매개변수에 적절한 값을 전달하는 객체

public class LoginedUserArgumentResolver implements HandlerMethodArgumentResolver {

    //true/false 값으로 반환
    @Override
    public boolean supportsParameter(MethodParameter methodParameter) {
        return methodParameter.hasParameterAnnotation(LoginedUser.class);
    }

    //supportsParameter() 메소드가 true 반환할때만 실행
    //이 메소드가 반환하는 값이 요청핸들러 메소드의 매개변수에 전달된다.  *요청핸들러 메소드의 요청파라미터에 적잘한 값을 반환
    @Override
    public Object resolveArgument(MethodParameter methodParameter, ModelAndViewContainer modelAndViewContainer, NativeWebRequest nativeWebRequest, WebDataBinderFactory webDataBinderFactory) throws Exception {
        return SessionUtils.getAttribute("LOGIN_USER");
    }
}
