package com.bbk.blog.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author ldd
 * @since 2019-02-22
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class ArticleType implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long aid;

    private Long tid;


}
