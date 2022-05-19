package com.prj.exceptionhandler;

import com.prj.exception.LoginErrorException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerControllerAdvice {
    @ExceptionHandler(LoginErrorException.class)
    public String handlerLoginErrorException(LoginErrorException e, Model model) {
        e.printStackTrace();
        model.addAttribute("error", e.getMessage());
        return "login";
    }
}
