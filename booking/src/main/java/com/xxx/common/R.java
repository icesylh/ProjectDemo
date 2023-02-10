package com.xxx.common;

public class R<T> {
    private T data;
    private int code;
    private String message;

    private R() {
    }

    public static <T> R success(T data) {
        R r = new R();
        r.code = 200;
        r.message = "success";
        r.data = data;
        return r;
    }

    public static <T> R error(String message) {
        R r = new R();
        r.code = 500;
        r.message = message;
        r.data = "";
        return r;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
