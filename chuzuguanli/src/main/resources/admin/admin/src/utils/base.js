const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootshd5k/",
            name: "springbootshd5k",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootshd5k/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于B/S结构的巡游出租管理系统"
        } 
    }
}
export default base
