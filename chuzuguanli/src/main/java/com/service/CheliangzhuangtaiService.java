package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CheliangzhuangtaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CheliangzhuangtaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CheliangzhuangtaiView;


/**
 * 车辆状态
 *
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface CheliangzhuangtaiService extends IService<CheliangzhuangtaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CheliangzhuangtaiVO> selectListVO(Wrapper<CheliangzhuangtaiEntity> wrapper);
   	
   	CheliangzhuangtaiVO selectVO(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
   	
   	List<CheliangzhuangtaiView> selectListView(Wrapper<CheliangzhuangtaiEntity> wrapper);
   	
   	CheliangzhuangtaiView selectView(@Param("ew") Wrapper<CheliangzhuangtaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CheliangzhuangtaiEntity> wrapper);
   	

}

