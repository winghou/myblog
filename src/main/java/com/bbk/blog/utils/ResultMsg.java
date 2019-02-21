package com.bbk.blog.utils;

/**
 * @author ldd
 * @desc
 * @create 2019-02-18 22:16
 **/
public class ResultMsg<T> {
    private static final String CODE_SUCCESS = "success";
    private static final String CODE_FAILED = "failed";
    private String code;
    private String msg;
    private T data;

    public ResultMsg failed(String msg) {
        return new ResultMsg(CODE_FAILED);
    }
    public ResultMsg success(Object data) {
        return new ResultMsg(CODE_SUCCESS,data);
    }
    public ResultMsg success() {
        return new ResultMsg(CODE_SUCCESS);
    }
    public ResultMsg(String code) {
        this.code = code;
    }

    public ResultMsg(String code, T data) {
        this.code = code;
        this.data = data;
    }

    public ResultMsg(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public ResultMsg(String code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
