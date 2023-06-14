package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChexianxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChexianxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChexianxinxiView;


/**
 * 车险信息
 *
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface ChexianxinxiService extends IService<ChexianxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChexianxinxiVO> selectListVO(Wrapper<ChexianxinxiEntity> wrapper);
   	
   	ChexianxinxiVO selectVO(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
   	
   	List<ChexianxinxiView> selectListView(Wrapper<ChexianxinxiEntity> wrapper);
   	
   	ChexianxinxiView selectView(@Param("ew") Wrapper<ChexianxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChexianxinxiEntity> wrapper);
   	

}

