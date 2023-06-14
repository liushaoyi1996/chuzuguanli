package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CheliangzhuangtaiDao;
import com.entity.CheliangzhuangtaiEntity;
import com.service.CheliangzhuangtaiService;
import com.entity.vo.CheliangzhuangtaiVO;
import com.entity.view.CheliangzhuangtaiView;

@Service("cheliangzhuangtaiService")
public class CheliangzhuangtaiServiceImpl extends ServiceImpl<CheliangzhuangtaiDao, CheliangzhuangtaiEntity> implements CheliangzhuangtaiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheliangzhuangtaiEntity> page = this.selectPage(
                new Query<CheliangzhuangtaiEntity>(params).getPage(),
                new EntityWrapper<CheliangzhuangtaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheliangzhuangtaiEntity> wrapper) {
		  Page<CheliangzhuangtaiView> page =new Query<CheliangzhuangtaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CheliangzhuangtaiVO> selectListVO(Wrapper<CheliangzhuangtaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CheliangzhuangtaiVO selectVO(Wrapper<CheliangzhuangtaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CheliangzhuangtaiView> selectListView(Wrapper<CheliangzhuangtaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheliangzhuangtaiView selectView(Wrapper<CheliangzhuangtaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
