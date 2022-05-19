package com.common;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

public class CustomJsonView {
    private ModelAndView mav;
    private Map map;

    public CustomJsonView() {
        this.mav = new ModelAndView("jsonView");
        this.map = new HashMap<String, Object>();
    }

    public CustomJsonView sucess(String message, Object data) {

        this.mav.addObject("success", true);
        this.mav.addObject("message", message);
        ObjectMapper om = new ObjectMapper();
        om.setSerializationInclusion(JsonSerialize.Inclusion.NON_EMPTY);
        Object _data;
        try {
            String jsonStr = om.writeValueAsString(data);
            JSONParser parser = new JSONParser();
            _data = parser.parse(jsonStr);
        } catch (Exception e) {
            _data = data;
        }
        this.mav.addObject("data", _data);
        return this;
    }

    public CustomJsonView error(String title, String message, String error_code, HttpStatus status) {
        this.mav.addObject("success", false);
        this.mav.addObject("title", title);
        this.mav.addObject("message", message);
        this.mav.addObject("error_code", error_code);
        return this;
    }

    public CustomJsonView permisionDenieded() {
        return error("권한이 없습니다.", "권한이 없습니다. 계정을 확인해주세요.", "auth_error", HttpStatus.EXPECTATION_FAILED);
    }

    public ModelAndView getModelAndView() {
        return mav;
    }

}
