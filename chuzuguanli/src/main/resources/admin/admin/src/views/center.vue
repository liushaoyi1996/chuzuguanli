<template>
  <div>
    <el-form
	  :style='{"padding":"30px","boxShadow":"0 0px 0px #999","borderRadius":"6px","flexWrap":"wrap","background":"none","display":"flex"}'
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
     <el-row>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="工号" prop="gonghao">
          <el-input v-model="ruleForm.gonghao" readonly              placeholder="工号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming"               placeholder="姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='siji'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie"  placeholder="请选择性别">
            <el-option
                v-for="(item,index) in sijixingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="身份证" prop="shenfenzheng">
          <el-input v-model="ruleForm.shenfenzheng"               placeholder="身份证" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="年龄" prop="nianling">
          <el-input v-model="ruleForm.nianling"               placeholder="年龄" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='siji'"  label="驾驶证类型" prop="jiashizhengleixing">
          <el-select v-model="ruleForm.jiashizhengleixing"  placeholder="请选择驾驶证类型">
            <el-option
                v-for="(item,index) in sijijiashizhengleixingOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="驾驶证号码" prop="jiashizhenghaoma">
          <el-input v-model="ruleForm.jiashizhenghaoma"               placeholder="驾驶证号码" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='siji'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="sijitouxiangUploadChange"
          ></file-upload>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="出租车编号" prop="chuzuchebianhao">
          <el-input v-model="ruleForm.chuzuchebianhao" readonly              placeholder="出租车编号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="出租车品牌" prop="chuzuchepinpai">
          <el-input v-model="ruleForm.chuzuchepinpai" readonly              placeholder="出租车品牌" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='siji'"  label="车牌号" prop="chepaihao">
          <el-input v-model="ruleForm.chepaihao" readonly              placeholder="车牌号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='chengke'"  label="用户名" prop="yonghuming">
          <el-input v-model="ruleForm.yonghuming" readonly              placeholder="用户名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='chengke'"  label="乘客姓名" prop="chengkexingming">
          <el-input v-model="ruleForm.chengkexingming"               placeholder="乘客姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='chengke'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie"  placeholder="请选择性别">
            <el-option
                v-for="(item,index) in chengkexingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}'   v-if="flag=='chengke'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='chengke'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="chengketouxiangUploadChange"
          ></file-upload>
        </el-form-item>
		<el-form-item :style='{"width":"48%","margin":"0 0 20px 0"}' v-if="flag=='users'" label="用户名" prop="username">
			<el-input v-model="ruleForm.username" placeholder="用户名"></el-input>
		</el-form-item>
		<el-form-item :style='{"padding":"0","margin":"0"}'>
			<el-button :style='{"border":"1px solid #40ecde","cursor":"pointer","padding":"0 20px","boxShadow":"0 2px 6px rgba(100, 100,100, .2)","margin":"0 20px 0 0","color":"#333","minWidth":"90px","outline":"none","borderRadius":"20%","background":"radial-gradient(circle, rgba(255,255,255,1) 0%, rgba(208,255,251,1) 100%)","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="primary" @click="onUpdateHandler">修 改</el-button>
		</el-form-item>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      sijixingbieOptions: [],
      sijijiashizhengleixingOptions: [],
      chengkexingbieOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.sijixingbieOptions = "男,女".split(',')
    this.sijijiashizhengleixingOptions = "A,B,C".split(',')
    this.chengkexingbieOptions = "男,女".split(',')
  },
  methods: {
    sijitouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    chengketouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    onUpdateHandler() {
      if( 'siji' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if( 'siji' ==this.flag && this.ruleForm.shenfenzheng&&(!checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
        if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
        }
      if((!this.ruleForm.yonghuming)&& 'chengke'==this.flag){
        this.$message.error('用户名不能为空');
        return
      }
      if((!this.ruleForm.chengkexingming)&& 'chengke'==this.flag){
        this.$message.error('乘客姓名不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'chengke'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
      if( 'chengke' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
        if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
        }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
	this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  text-shadow: 0 1px 10px #fff;
	  	  color: #666;
	  	  width: 80px;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 1px solid #aaa;
	  	  border-radius: 4px;
	  	  padding: 0 12px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  color: #666;
	  	  background: linear-gradient(150deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 1px solid #aaa;
	  	  border-radius: 4px;
	  	  padding: 0 10px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  color: #666;
	  	  background: linear-gradient(200deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 1px solid #aaa;
	  	  border-radius: 4px;
	  	  padding: 0 10px 0 30px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  color: #666;
	  	  background: linear-gradient(150deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 1px solid #aaa;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #aaa;
	  	  background: linear-gradient(200deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 100px;
	  	  text-align: center;
	  	  height: 100px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 1px solid #aaa;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #aaa;
	  	  background: linear-gradient(200deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 100px;
	  	  text-align: center;
	  	  height: 100px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 1px solid #aaa;
	  	  border-radius: 4px;
	  	  padding: 12px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  color: #666;
	  	  background: linear-gradient(150deg, rgba(216,223,236,1) 0%, rgba(247,249,251,1) 50%, rgba(210,217,230,1) 100%);
	  	  width: 400px;
	  	  font-size: 14px;
	  	  min-height: 120px;
	  	  height: auto;
	  	}
</style>
