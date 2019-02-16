package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Log;
import com.bbk.blog.mapper.LogMapper;
import com.bbk.blog.service.LogService;
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
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements LogService {

}
