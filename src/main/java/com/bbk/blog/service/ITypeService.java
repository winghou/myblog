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
 * @since 2018-11-22
 */
public interface ITypeService extends IService<Type> {
    List<Type> selectTypesWithNodes();

}
