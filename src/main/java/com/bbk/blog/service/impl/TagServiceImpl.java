package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Tag;
import com.bbk.blog.mapper.TagMapper;
import com.bbk.blog.service.TagService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ldd
 * @since 2019-02-22
 */
@Service
public class TagServiceImpl extends ServiceImpl<TagMapper, Tag> implements TagService {

}
