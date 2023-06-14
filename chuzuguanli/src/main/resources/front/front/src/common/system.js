export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除"],"menu":"司机","menuJump":"列表","tableName":"siji"}],"menu":"司机管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除"],"menu":"乘客","menuJump":"列表","tableName":"chengke"}],"menu":"乘客管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"车险信息","menuJump":"列表","tableName":"chexianxinxi"}],"menu":"车险信息管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["新增","查看","修改","删除"],"menu":"工资信息","menuJump":"列表","tableName":"gongzixinxi"}],"menu":"工资信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除"],"menu":"车辆状态","menuJump":"列表","tableName":"cheliangzhuangtai"}],"menu":"车辆状态管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改","删除"],"menu":"健康打卡","menuJump":"列表","tableName":"jiankangdaka"}],"menu":"健康打卡管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除","审核"],"menu":"每日打卡","menuJump":"列表","tableName":"meiridaka"}],"menu":"每日打卡管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除","审核"],"menu":"请假申请","menuJump":"列表","tableName":"qingjiashenqing"}],"menu":"请假申请管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除","审核"],"menu":"问题订单","menuJump":"列表","tableName":"wentidingdan"}],"menu":"问题订单管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-paint","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"系统公告","tableName":"news"},{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线投诉","tableName":"chat"},{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"智能助手","tableName":"chathelper"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"司机列表","menuJump":"列表","tableName":"siji"}],"menu":"司机模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"车险信息","menuJump":"列表","tableName":"chexianxinxi"}],"menu":"车险信息管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"工资信息","menuJump":"列表","tableName":"gongzixinxi"}],"menu":"工资信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"车辆状态","menuJump":"列表","tableName":"cheliangzhuangtai"}],"menu":"车辆状态管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除"],"menu":"健康打卡","menuJump":"列表","tableName":"jiankangdaka"}],"menu":"健康打卡管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"每日打卡","menuJump":"列表","tableName":"meiridaka"}],"menu":"每日打卡管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"请假申请","menuJump":"列表","tableName":"qingjiashenqing"}],"menu":"请假申请管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"问题订单","menuJump":"列表","tableName":"wentidingdan"}],"menu":"问题订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"司机列表","menuJump":"列表","tableName":"siji"}],"menu":"司机模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"司机","tableName":"siji"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","支付","投诉"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除"],"menu":"问题订单","menuJump":"列表","tableName":"wentidingdan"}],"menu":"问题订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"司机列表","menuJump":"列表","tableName":"siji"}],"menu":"司机模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"乘客","tableName":"chengke"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
