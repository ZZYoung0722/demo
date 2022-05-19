package com.prj.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

//@Target : 어노테이션 적용대상, ElementType은 메소드나 생성자의 매개변수에 부착할 수 있는 어노테이션임을 나타낸다.
//@Retention : 어노테이션 유지정책, RetentionPolicy는 이 어노테이션이 프로그램 실행시점까지 유지됨을 나타낸다.

@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
public @interface LoginedUser {

}