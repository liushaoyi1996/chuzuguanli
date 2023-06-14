import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import siji from '@/views/modules/siji/list'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import qingjiashenqing from '@/views/modules/qingjiashenqing/list'
    import cheliangzhuangtai from '@/views/modules/cheliangzhuangtai/list'
    import dingdanxinxi from '@/views/modules/dingdanxinxi/list'
    import wentidingdan from '@/views/modules/wentidingdan/list'
    import jiankangdaka from '@/views/modules/jiankangdaka/list'
    import chengke from '@/views/modules/chengke/list'
    import gongzixinxi from '@/views/modules/gongzixinxi/list'
    import chexianxinxi from '@/views/modules/chexianxinxi/list'
    import systemintro from '@/views/modules/systemintro/list'
    import chathelper from '@/views/modules/chathelper/list'
    import chat from '@/views/modules/chat/list'
    import meiridaka from '@/views/modules/meiridaka/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/siji',
        name: '司机',
        component: siji
      }
      ,{
	path: '/news',
        name: '系统公告',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/qingjiashenqing',
        name: '请假申请',
        component: qingjiashenqing
      }
      ,{
	path: '/cheliangzhuangtai',
        name: '车辆状态',
        component: cheliangzhuangtai
      }
      ,{
	path: '/dingdanxinxi',
        name: '订单信息',
        component: dingdanxinxi
      }
      ,{
	path: '/wentidingdan',
        name: '问题订单',
        component: wentidingdan
      }
      ,{
	path: '/jiankangdaka',
        name: '健康打卡',
        component: jiankangdaka
      }
      ,{
	path: '/chengke',
        name: '乘客',
        component: chengke
      }
      ,{
	path: '/gongzixinxi',
        name: '工资信息',
        component: gongzixinxi
      }
      ,{
	path: '/chexianxinxi',
        name: '车险信息',
        component: chexianxinxi
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/chathelper',
        name: '智能助手',
        component: chathelper
      }
      ,{
	path: '/chat',
        name: '在线投诉',
        component: chat
      }
      ,{
	path: '/meiridaka',
        name: '每日打卡',
        component: meiridaka
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
