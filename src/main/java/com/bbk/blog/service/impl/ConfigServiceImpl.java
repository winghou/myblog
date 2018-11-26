package com.bbk.blog.service.impl;

import com.bbk.blog.entity.Config;
import com.bbk.blog.mapper.ConfigMapper;
import com.bbk.blog.service.IConfigService;
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
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements IConfigService {

}
