package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Tags;
import com.bbk.blog.mapper.TagsMapper;
import com.bbk.blog.service.ITagsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ldd
 * @since 2018-11-22
 */
@Service
public class TagsServiceImpl extends ServiceImpl<TagsMapper, Tags> implements ITagsService {

}