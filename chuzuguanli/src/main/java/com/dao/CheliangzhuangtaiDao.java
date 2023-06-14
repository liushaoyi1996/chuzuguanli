package com.dao;

import com.entity.CheliangzhuangtaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CheliangzhuangtaiVO;
import com.entity.view.CheliangzhuangtaiView;


/**
 * 车辆状态
 * 
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface CheliangzhuangtaiDao extends BaseMapper<CheliangzhuangtaiEntity> {
	
	List<CheliangzhuangtaiVO> selectListVO(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
	
	CheliangzhuangtaiVO selectVO(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
	
	List<CheliangzhuangtaiView> selectListView(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);

	List<CheliangzhuangtaiView> selectListView(Pagination page,@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
	
	CheliangzhuangtaiView selectView(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
	

}
