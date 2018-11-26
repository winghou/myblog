package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Comment;
import com.bbk.blog.mapper.CommentMapper;
import com.bbk.blog.service.ICommentService;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements ICommentService {

}
