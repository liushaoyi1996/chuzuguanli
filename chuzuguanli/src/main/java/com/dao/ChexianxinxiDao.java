package com.dao;

import com.entity.ChexianxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChexianxinxiVO;
import com.entity.view.ChexianxinxiView;


/**
 * 车险信息
 * 
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface ChexianxinxiDao extends BaseMapper<ChexianxinxiEntity> {
	
	List<ChexianxinxiVO> selectListVO(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
	
	ChexianxinxiVO selectVO(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
	
	List<ChexianxinxiView> selectListView(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);

	List<ChexianxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
	
	ChexianxinxiView selectView(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
	

}
