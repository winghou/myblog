package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Type;
import com.bbk.blog.mapper.TypeMapper;
import com.bbk.blog.service.TypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ldd
 * @since 2019-02-22
 */
@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {

    @Override
    public List<Type> selectTypesWithNodes() {
        List<Type> types = this.list(null);
        Map<Long,List<Type>> map = new HashMap<>();
        List<Type> parent = new ArrayList<>();
        for (Type type : types) {
            if (type.getPid() == null) {
                parent.add(type);
            }
        }
        for (Type pType : parent) {
            List<Type> childTypes = new ArrayList<>();
            for (Type type : types) {
                Long pid = type.getPid();
                if (pid != null && pType.getId() == pid) {
                    childTypes.add(type);
                }
            }
            map.put(pType.getId(),childTypes);
        }
        for (Type type : parent) {
            if (map.containsKey(type.getId())) {
                type.setNodes(map.get(type.getId()));
            }

        }
        return parent;
    }
}
