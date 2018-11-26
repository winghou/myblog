package com.bbk.blog.mapper;

import com.bbk.blog.entity.Type;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author ldd
 * @since 2018-11-22
 */
public interface TypeMapper extends BaseMapper<Type> {
    /**
     * 返回带有二级导航的分类
     * @return
     */
    List<Type> selectTypesWithNodes();

}
