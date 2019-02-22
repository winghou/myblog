package com.bbk.blog.service;

import com.bbk.blog.entity.Type;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author ldd
 * @since 2019-02-22
 */
public interface TypeService extends IService<Type> {

    List<Type> selectTypesWithNodes();

}
