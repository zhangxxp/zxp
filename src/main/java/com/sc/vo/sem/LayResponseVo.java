package com.sc.vo.sem;

import java.util.List;

/**
 * 封装返回数据
 */
public class LayResponseVo<T> {
    private int code=0;

    private String msg;

    private int count=0;

    private List<T> data;

    public LayResponseVo(){

    }

    public LayResponseVo(String msg) {
        this.msg = msg;
    }

    public LayResponseVo(int count, List<T> data) {
        this.count = count;
        this.data = data;
    }

    public LayResponseVo(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public LayResponseVo(int code, String msg, int count, List<T> data) {
        this.code = code;
        this.msg = msg;
        this.count = count;
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
