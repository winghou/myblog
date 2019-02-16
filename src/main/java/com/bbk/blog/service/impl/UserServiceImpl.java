package com.bbk.blog.service.impl;

import com.bbk.blog.entity.User;
import com.bbk.blog.mapper.UserMapper;
import com.bbk.blog.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ldd
 * @since 2019-02-16
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
