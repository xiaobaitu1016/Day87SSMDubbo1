package com.qf.util;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.util.List;

public class PageUtil<T> {

    public List<T> pageUtil(List<T> list,int curPage,int pageSize){
        PageHelper.startPage(curPage,pageSize);
        PageInfo<T> pageInfo = new PageInfo<>(list);
        List<T> list1 = pageInfo.getList();
        return list1;
    }

}
