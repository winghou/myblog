package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Type;
import com.bbk.blog.mapper.TypeMapper;
import com.bbk.blog.service.ITypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ldd
 * @since 2018-11-22
 */
@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements ITypeService {
    @Autowired
    private  TypeMapper typeMapper;

    @Override
    public List<Type> selectTypesWithNodes() {
        return typeMapper.selectTypesWithNodes();
    }
}
