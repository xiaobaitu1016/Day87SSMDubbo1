package com.qf.util;

import java.util.List;

public class LayuiUtil<T> {

    private int code;

    private String msg;

    private int count;

    private List<T> data;

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

    public LayuiUtil<T> toLayuiList(List<T> list){

        LayuiUtil<T> layuiList = new LayuiUtil<>();

        layuiList.setCode(0);

        layuiList.setMsg("");

        layuiList.setCount(list.size());

        layuiList.setData(list);

        return layuiList;
    }

}
