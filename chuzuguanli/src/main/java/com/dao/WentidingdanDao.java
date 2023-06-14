package com.dao;

import com.entity.WentidingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WentidingdanVO;
import com.entity.view.WentidingdanView;


/**
 * 问题订单
 * 
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface WentidingdanDao extends BaseMapper<WentidingdanEntity> {
	
	List<WentidingdanVO> selectListVO(@Param("ew") Wrapper<WentidingdanEntity> wrapper);
	
	WentidingdanVO selectVO(@Param("ew") Wrapper<WentidingdanEntity> wrapper);
	
	List<WentidingdanView> selectListView(@Param("ew") Wrapper<WentidingdanEntity> wrapper);

	List<WentidingdanView> selectListView(Pagination page,@Param("ew") Wrapper<WentidingdanEntity> wrapper);
	
	WentidingdanView selectView(@Param("ew") Wrapper<WentidingdanEntity> wrapper);
	

}
