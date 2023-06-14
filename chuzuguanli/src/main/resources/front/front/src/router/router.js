import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import sijiList from '../pages/siji/list'
import sijiDetail from '../pages/siji/detail'
import sijiAdd from '../pages/siji/add'
import chengkeList from '../pages/chengke/list'
import chengkeDetail from '../pages/chengke/detail'
import chengkeAdd from '../pages/chengke/add'
import chexianxinxiList from '../pages/chexianxinxi/list'
import chexianxinxiDetail from '../pages/chexianxinxi/detail'
import chexianxinxiAdd from '../pages/chexianxinxi/add'
import gongzixinxiList from '../pages/gongzixinxi/list'
import gongzixinxiDetail from '../pages/gongzixinxi/detail'
import gongzixinxiAdd from '../pages/gongzixinxi/add'
import cheliangzhuangtaiList from '../pages/cheliangzhuangtai/list'
import cheliangzhuangtaiDetail from '../pages/cheliangzhuangtai/detail'
import cheliangzhuangtaiAdd from '../pages/cheliangzhuangtai/add'
import jiankangdakaList from '../pages/jiankangdaka/list'
import jiankangdakaDetail from '../pages/jiankangdaka/detail'
import jiankangdakaAdd from '../pages/jiankangdaka/add'
import meiridakaList from '../pages/meiridaka/list'
import meiridakaDetail from '../pages/meiridaka/detail'
import meiridakaAdd from '../pages/meiridaka/add'
import qingjiashenqingList from '../pages/qingjiashenqing/list'
import qingjiashenqingDetail from '../pages/qingjiashenqing/detail'
import qingjiashenqingAdd from '../pages/qingjiashenqing/add'
import dingdanxinxiList from '../pages/dingdanxinxi/list'
import dingdanxinxiDetail from '../pages/dingdanxinxi/detail'
import dingdanxinxiAdd from '../pages/dingdanxinxi/add'
import wentidingdanList from '../pages/wentidingdan/list'
import wentidingdanDetail from '../pages/wentidingdan/detail'
import wentidingdanAdd from '../pages/wentidingdan/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'siji',
					component: sijiList
				},
				{
					path: 'sijiDetail',
					component: sijiDetail
				},
				{
					path: 'sijiAdd',
					component: sijiAdd
				},
				{
					path: 'chengke',
					component: chengkeList
				},
				{
					path: 'chengkeDetail',
					component: chengkeDetail
				},
				{
					path: 'chengkeAdd',
					component: chengkeAdd
				},
				{
					path: 'chexianxinxi',
					component: chexianxinxiList
				},
				{
					path: 'chexianxinxiDetail',
					component: chexianxinxiDetail
				},
				{
					path: 'chexianxinxiAdd',
					component: chexianxinxiAdd
				},
				{
					path: 'gongzixinxi',
					component: gongzixinxiList
				},
				{
					path: 'gongzixinxiDetail',
					component: gongzixinxiDetail
				},
				{
					path: 'gongzixinxiAdd',
					component: gongzixinxiAdd
				},
				{
					path: 'cheliangzhuangtai',
					component: cheliangzhuangtaiList
				},
				{
					path: 'cheliangzhuangtaiDetail',
					component: cheliangzhuangtaiDetail
				},
				{
					path: 'cheliangzhuangtaiAdd',
					component: cheliangzhuangtaiAdd
				},
				{
					path: 'jiankangdaka',
					component: jiankangdakaList
				},
				{
					path: 'jiankangdakaDetail',
					component: jiankangdakaDetail
				},
				{
					path: 'jiankangdakaAdd',
					component: jiankangdakaAdd
				},
				{
					path: 'meiridaka',
					component: meiridakaList
				},
				{
					path: 'meiridakaDetail',
					component: meiridakaDetail
				},
				{
					path: 'meiridakaAdd',
					component: meiridakaAdd
				},
				{
					path: 'qingjiashenqing',
					component: qingjiashenqingList
				},
				{
					path: 'qingjiashenqingDetail',
					component: qingjiashenqingDetail
				},
				{
					path: 'qingjiashenqingAdd',
					component: qingjiashenqingAdd
				},
				{
					path: 'dingdanxinxi',
					component: dingdanxinxiList
				},
				{
					path: 'dingdanxinxiDetail',
					component: dingdanxinxiDetail
				},
				{
					path: 'dingdanxinxiAdd',
					component: dingdanxinxiAdd
				},
				{
					path: 'wentidingdan',
					component: wentidingdanList
				},
				{
					path: 'wentidingdanDetail',
					component: wentidingdanDetail
				},
				{
					path: 'wentidingdanAdd',
					component: wentidingdanAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
