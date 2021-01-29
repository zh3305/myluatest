
local 登录类 = class()

 _GUI   = require("ggeui/加载类")()
 控件界面 = _GUI:创建控件('控件界面')

function 控件界面:初始化()
end

function 控件界面:显示(x,y)
end

角色改名输入 = 控件界面:创建输入("角色改名输入",215,242,200,14,0XFFFFFF00)
function 角色改名输入:初始化()
  self:置文本('')

  self._限制字数  = 12
  --print(bb改名输入:取文本())
  self:置可视(false,"角色改名输入")
end

商铺改名输入 = 控件界面:创建输入("商铺改名输入",112,85,220,16,黑色)
function 商铺改名输入:初始化()
  self:置文本('')
  self._限制字数  = 14
  --print(bb改名输入:取文本())
  self:置可视(false,"商铺改名输入")
end

摊位改名输入 = 控件界面:创建输入("摊位改名输入",310,115,220,16,黑色)
function 摊位改名输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"摊位改名输入")
end

上架银两输入 = 控件界面:创建输入("上架银两输入",343,419,220,16,黑色)
function 上架银两输入:初始化()
  self:置文本('')
  self._限制字数  = 11
  self:置数字模式()
  self:置可视(false,"上架银两输入")
end

赌博银两输入 = 控件界面:创建输入("赌博银两输入",447,372,220,16,黑色)
function 赌博银两输入:初始化()
  self:置文本('')
  self._限制字数  = 11
  self:置数字模式()
  self:置可视(false,"赌博银两输入")
end

购买数量输入 = 控件界面:创建输入("购买数量输入",450,417,220,16,黑色)
function 购买数量输入:初始化()
  self:置文本('')
  self._限制字数  = 2
  self:置数字模式()
  self:置可视(false,"购买数量输入")
end

帮派改名输入 = 控件界面:创建输入("帮派改名输入",357,232,220,16,黑色)
function 帮派改名输入:初始化()
  self:置文本('')
  self._限制字数  = 14
  --print(bb改名输入:取文本())
  self:置可视(false,"帮派改名输入")
end

帮派宗旨输入 = 控件界面:创建输入("帮派宗旨输入",200,220,400,16,黑色)
function 帮派宗旨输入:初始化()
  self:置文本('')
  self._限制字数  = 56
  --print(bb改名输入:取文本())
  self:置可视(false,"帮派宗旨输入")
end

商铺宗旨输入 = 控件界面:创建输入("商铺宗旨输入",429,92,280,16,黑色)
function 商铺宗旨输入:初始化()
  self:置文本('')
  self._限制字数  = 34
  --print(bb改名输入:取文本())
  self:置可视(false,"商铺宗旨输入")
end

bb改名输入 = 控件界面:创建输入("bb改名输入",55,194,200,14,黑色)
function bb改名输入:初始化()
  self:置文本('')
  self._限制字数  = 12
  --print(bb改名输入:取文本())
  self:置可视(false,"bb改名输入")
end

商品数量输入 = 控件界面:创建输入("商品数量输入",333,377,20,14,黑色)
function 商品数量输入:初始化()
  self:置文本('')
  self:置数字模式()
  self._限制字数  = 2
  --print(bb改名输入:取文本())
  self:置可视(false,"商品数量输入")
end

商城数量输入 = 控件界面:创建输入("商城数量输入",342,448,20,14,黑色)
function 商城数量输入:初始化()
  self:置文本('')
  self:置数字模式()
  self._限制字数  = 2
  --print(bb改名输入:取文本())
  self:置可视(false,"商城数量输入")
end

推广号输入 = 控件界面:创建输入("推广号输入",357,232,80,14,黑色)
function 推广号输入:初始化()
  self:置文本('')
  self._限制字数  = 6
  --print(bb改名输入:取文本())
  self:置可视(false,"推广号输入")
end

给予银两输入 = 控件界面:创建输入("给予银两输入",438,385,0,14,黑色)
function 给予银两输入:初始化()
  self:置文本('')
  self:置数字模式()
  self._限制字数  = 8
  --print(bb改名输入:取文本())
  self:置可视(false,"给予银两输入")
end

上柜银两输入 = 控件界面:创建输入("上柜银两输入",190,378,200,14,黑色)
function 上柜银两输入:初始化()
  self:置文本('')
  self:置数字模式()
  self._限制字数  = 9
  --print(bb改名输入:取文本())
  self:置可视(false,"上柜银两输入")
end


交易银两输入 = 控件界面:创建输入("交易银两输入",277,120,70,14,黑色)
function 交易银两输入:初始化()
  self:置文本('')
  self:置数字模式()
  self._限制字数  = 8
  --print(bb改名输入:取文本())
  self:置可视(false,"交易银两输入")
end


聊天内容输入 = 控件界面:创建输入("聊天内容输入",48,582,225,20,白色)
function 聊天内容输入:初始化()
  self:置文本('')

  self._限制字数  = 120
  --print(bb改名输入:取文本())
  self:置可视(false,"聊天内容输入")
end

local 账号输入 = 控件界面:创建输入("账号输入",120,35,200,14,4294967295)
function 账号输入:初始化()

  引擎.置ini("配置.txt")
  self:置文本(引擎.读ini("环境配置","账号"))
  self._限制字数  = 20
  self:置可视(false)

end

local 姓名输入 = 控件界面:创建输入("姓名输入",86,316,200,14,4294967295)
function 姓名输入:初始化()
   self:置文本('')
   self:置可视(false)
  self._限制字数  = 10

end

local 密码输入 = 控件界面:创建输入("密码输入",120,74,200,14,4294967295)
function 密码输入:初始化()

  self:置密码模式()
  引擎.置ini("配置.txt")
  self:置文本(引擎.读ini("环境配置","密码"))
  self._限制字数  = 20
  self:置可视(false)

end

local 注册账号 = 控件界面:创建输入("注册账号",333,191,200,14,4294967295)
function 注册账号:初始化()
  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"注册账号")
end

local 注册密码 = 控件界面:创建输入("注册密码",333,229,200,14,4294967295)
function 注册密码:初始化()
  self:置文本('')
  self:置密码模式()
  self._限制字数  = 20
  self:置可视(false,"注册密码")
end

local 确认密码 = 控件界面:创建输入("确认密码",333,269,200,14,4294967295)
function 确认密码:初始化()
  self:置文本('')
  self:置密码模式()
  self._限制字数  = 20
  self:置可视(false,"确认密码")
end

local 安全密码 = 控件界面:创建输入("安全密码",333,309,200,14)
function 安全密码:初始化()
  self:置文本('')
  self:置数字模式()
  self:置密码模式()
  self._限制字数  = 20
  self:置可视(false,"安全密码")
end


local 玩家账号输入 = 控件界面:创建输入("玩家账号输入",103,68,200,14,黑色)
function 玩家账号输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"玩家账号输入")
end

local 充值仙玉输入 = 控件界面:创建输入("充值仙玉输入",270,68,200,14,黑色)
function 充值仙玉输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"充值仙玉输入")
end

local 充值银两输入 = 控件界面:创建输入("充值银两输入",435,68,200,14,黑色)
function 充值银两输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"充值银两输入")
end

local 充值储备输入 = 控件界面:创建输入("充值储备输入",435,123,200,14,黑色)
function 充值储备输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"充值储备输入")
end

local 充值积分输入 = 控件界面:创建输入("充值积分输入",435,175,200,14,黑色)
function 充值积分输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"充值积分输入")
end

local 添加经验输入 = 控件界面:创建输入("添加经验输入",435,229,200,14,黑色)
function 添加经验输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"添加经验输入")
end

---------------------------------------------------------------------------------装备系统

local 玩家账号输入1 = 控件界面:创建输入("玩家账号输入1",93,71,100,14,黑色)
function 玩家账号输入1:初始化()

  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"玩家账号输入1")
end
local 等级输入 = 控件界面:创建输入("等级输入",61,104,50,14,黑色) -- 装备等级
function 等级输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"等级输入")
end

local 双加输入1 = 控件界面:创建输入("双加输入1",376,106,100,14,黑色)-- 双加[2]
function 双加输入1:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"双加输入1")
end

local 双加输入 = 控件界面:创建输入("双加输入",153,104,100,14,黑色) -- 双加[1]
function 双加输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"双加输入")
end

local 双加数值输入1 = 控件界面:创建输入("双加数值输入1",503,106,50,14,黑色)-- 双加[2]
function 双加数值输入1:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"双加输入1")
end

local 双加数值输入 = 控件界面:创建输入("双加数值输入",281,105,50,14,黑色) -- 双加[1]
function 双加数值输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"双加数值输入")
end


local 特技输入 = 控件界面:创建输入("特技输入",61,138,100,14,黑色)
function 特技输入:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"特技输入")
end

local 特效输入 = 控件界面:创建输入("特效输入",225,138,100,14,黑色)
function 添加经验输入:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"特效输入")
end

local 上限输入 = 控件界面:创建输入("上限输入",378,139,30,14,黑色)
function 上限输入:初始化()
  self:置文本('')
  self._限制字数  = 4
  self:置可视(false,"上限输入")
end
local 下限输入 = 控件界面:创建输入("下限输入",420,139,30,14,黑色)
function 下限输入:初始化()
  self:置文本('')
  self._限制字数  = 4
  self:置可视(false,"下限输入")
end


local 等级输入1 = 控件界面:创建输入("等级输入1",234,198,50,14,黑色)
function 等级输入1:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"等级输入1")
end

local 灵饰加成输入 = 控件界面:创建输入("灵饰加成输入",380,198,100,14,黑色)
function 灵饰加成输入:初始化()
  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"灵饰加成输入")
end

local 灵饰加成输入1 = 控件界面:创建输入("灵饰加成输入1",97,228,100,14,黑色)
function 灵饰加成输入1:初始化()
  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"灵饰加成输入1")
end


local 灵饰加成输入2 = 控件界面:创建输入("灵饰加成输入2",379,230,100,14,黑色)
function 灵饰加成输入2:初始化()
  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"灵饰加成输入2")
end


local 灵饰加成输入3 = 控件界面:创建输入("灵饰加成输入3",98,258,100,14,黑色)
function 灵饰加成输入3:初始化()
  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"灵饰加成输入3")
end

local 灵饰数值输入 = 控件界面:创建输入("灵饰数值输入",506,197,50,14,黑色)
function 灵饰数值输入:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"灵饰数值输入")
end

local 灵饰数值输入1 = 控件界面:创建输入("灵饰数值输入1",233,228,50,14,黑色)
function 灵饰数值输入1:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"灵饰数值输入1")
end


local 灵饰数值输入2 = 控件界面:创建输入("灵饰数值输入2",504,227,50,14,黑色)
function 灵饰数值输入2:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"灵饰数值输入2")
end


local 灵饰数值输入3 = 控件界面:创建输入("灵饰数值输入3",233,259,50,14,黑色)
function 灵饰数值输入3:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"灵饰数值输入3")
end

local 灵饰特效输入 = 控件界面:创建输入("灵饰特效输入",346,259,50,14,黑色)
function 灵饰特效输入:初始化()
  self:置文本('')
  self._限制字数  = 12
  self:置可视(false,"灵饰特效输入")
end

local 坐骑输入 = 控件界面:创建输入("坐骑输入",96,317,100,14,黑色)
function 坐骑输入:初始化()
  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"坐骑输入")
end

----------------------------------------------------------------------------------道具系统
local 玩家账号输入2 = 控件界面:创建输入("玩家账号输入2",106,67,100,14,黑色)
function 玩家账号输入2:初始化()

  self:置文本('')
  self._限制字数  = 20
  self:置可视(false,"玩家账号输入2")
end

local 宝石等级输入 = 控件界面:创建输入("宝石等级输入",239,97,100,14,黑色)
function 宝石等级输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"宝石等级输入")
end

local 宝石等级输入1 = 控件界面:创建输入("宝石等级输入1",290,97,100,14,黑色)
function 宝石等级输入1:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"宝石等级输入1")
end

local 宝石数量输入 = 控件界面:创建输入("宝石数量输入",383,100,100,14,黑色)
function 宝石数量输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"宝石数量输入")
end

local 高级兽决输入 = 控件界面:创建输入("高级兽决输入",202,132,100,14,黑色)
function 高级兽决输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"高级兽决输入")
end

local 阵法输入 = 控件界面:创建输入("阵法输入",78,168,100,14,黑色)
function 阵法输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"阵法输入")
end

local 法宝输入 = 控件界面:创建输入("法宝输入",348,168,100,14,黑色)
function 法宝输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"法宝输入")
end

local 内丹输入 = 控件界面:创建输入("内丹输入",78,208,100,14,黑色)
function 内丹输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"内丹输入")
end

local 书铁等级输入 = 控件界面:创建输入("书铁等级输入",205,262,100,14,黑色)
function 书铁等级输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"书铁等级输入")
end
local 书铁类型输入 = 控件界面:创建输入("书铁类型输入",348,262,100,14,黑色)
function 书铁类型输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"书铁类型输入")
end

local 经验倍数输入 = 控件界面:创建输入("经验倍数输入",138,67,100,14,黑色)
function 经验倍数输入:初始化()

  self:置文本('')
  self._限制字数  = 10
  self:置可视(false,"经验倍数输入")
end


function 登录类:销毁()

end
function 登录类:初始化()
  self.y = 275
  self.充值内容 = ""
  self.进程=1
  self.背景={}
  self.数据数量 = 0
  self.操作信息 = {}
  self.显示序列 = 0
  self.背景[1]=图像类("imge/gmgj/bj.png")
  self.背景[2]=图像类("imge/gmgj/zhmm.png")
  self.背景[3]=图像类("imge/gmgj/xxjm.png")
  self.背景[4]=图像类("imge/gmgj/srk.png")
  self.背景[5]=图像类("imge/gmgj/jscl.png")
  self.背景[6]=图像类("imge/gmgj/zbxt.png") -- 装备系统界面
  self.背景[7]=图像类("imge/gmgj/xlbj.png") -- 下拉背景系统界面
  self.背景[8]=图像类("imge/gmgj/djbj.png") -- 道具背景系统界面
  self.背景[9]=图像类("imge/gmgj/xlbj1.png") -- 下拉背景系统界面
  self.背景[10]=图像类("imge/gmgj/srk1.png")
  self.下一步=按钮类.创建("imge/gmgj/xyb.png",1,"进入游戏",3)
  self.退出=按钮类.创建("imge/gmgj/tc.png",1,"进入游戏",3)

  self.充值系统=按钮类.创建("imge/gmgj/flan.png",4,"充值系统",3,5)
  self.角色系统=按钮类.创建("imge/gmgj/flan.png",4,"角色系统",3,5)
  self.装备系统=按钮类.创建("imge/gmgj/flan.png",4,"装备系统",3,5)
  self.道具系统=按钮类.创建("imge/gmgj/flan.png",4,"道具系统",3,5)
  self.系统开关=按钮类.创建("imge/gmgj/flan.png",4,"系统开关",3,5)


  self.确定充值=按钮类.创建("imge/gmgj/xan.png",2,"确定充值",3)
  self.锁定=按钮类.创建("imge/gmgj/xan.png",2,"锁定信息",3)
  self.上箭头 = 按钮类.创建("imge/gmgj/sjt.png",2,"",3)
  self.下箭头 = 按钮类.创建("imge/gmgj/xjt.png",2,"",3)

  self.玩家信息=按钮类.创建("imge/gmgj/xan.png",2,"玩家信息",3)
  self.充值记录=按钮类.创建("imge/gmgj/xan.png",2,"充值记录",3)
  self.解封账号=按钮类.创建("imge/gmgj/xan.png",2,"解封账号",3)
  self.解封IP=按钮类.创建("imge/gmgj/xan.png",2,"解封IP",3)
  self.封禁账号=按钮类.创建("imge/gmgj/xan.png",2,"封禁账号",3)
  self.封禁IP=按钮类.创建("imge/gmgj/xan.png",2,"封禁IP",3)
  self.踢出战斗=按钮类.创建("imge/gmgj/xan.png",2,"踢出战斗",3)
  self.强制下线=按钮类.创建("imge/gmgj/xan.png",2,"强制下线",3)

  self.赠送装备=按钮类.创建("imge/gmgj/xan.png",2,"赠送装备",3)
  self.赠送灵饰=按钮类.创建("imge/gmgj/xan.png",2,"赠送灵饰",3)
  self.赠送坐骑=按钮类.创建("imge/gmgj/xan.png",2,"赠送坐骑",3)
  self.获取造型=按钮类.创建("imge/gmgj/xan.png",2,"获取造型",3)
  self.下拉按钮=按钮类.创建("imge/gmgj/xlan.png",2,"",3)
  self.下拉按钮1=按钮类.创建("imge/gmgj/xlan.png",2,"",3)

----------------------------------------------------------------------道具系统
  self.下拉按钮2=按钮类.创建("imge/gmgj/xlan.png",2,"",3)
  self.给予宝石=按钮类.创建("imge/gmgj/xan.png",2,"给予宝石",3)
  self.给予兽决=按钮类.创建("imge/gmgj/xan.png",2,"给予兽决",3)
  self.给予阵法=按钮类.创建("imge/gmgj/xan.png",2,"给予阵法",3)
  self.给予法宝=按钮类.创建("imge/gmgj/xan.png",2,"给予法宝",3)
  self.给予内丹=按钮类.创建("imge/gmgj/xan.png",2,"给予内丹",3)
  self.给予蟠桃=按钮类.创建("imge/gmgj/xan.png",2,"给予蟠桃",3)
  self.给予元宵=按钮类.创建("imge/gmgj/xan.png",2,"给予元宵",3)
  self.金银锦盒=按钮类.创建("imge/gmgj/xan.png",2,"金银锦盒",3)
  self.给予书铁=按钮类.创建("imge/gmgj/xan.png",2,"给予书铁",3)
  self.宝宝套装=按钮类.创建("imge/gmgj/xan.png",2,"宝宝套装",3)
  self.初级套装=按钮类.创建("imge/gmgj/xan.png",2,"100套装",3)
  self.中级套装=按钮类.创建("imge/gmgj/xan.png",2,"120套装",3)
  self.高级套装=按钮类.创建("imge/gmgj/xan.png",2,"150套装",3)
  self.顶级套装=按钮类.创建("imge/gmgj/xan.png",2,"160套装",3)
  self.宝石类型={[1]="太阳石",[2]="红玛瑙",[3]="月亮石",[4]="黑宝石",[5]="光芒石",[6]="舍利子",[7]="星辉石"}
  self.宝石开关 = false
  self.宝石类型包围盒 = {}
  for i =1,#self.宝石类型 do
      self.宝石类型包围盒[i] = 包围盒:创建(1,1,1,1)
      self.宝石类型包围盒[i]:置坐标(110,97+i*18)
      self.宝石类型包围盒[i]:更新宽高(68,18)
  end
  self.宝石选中数据 = ""
--------------------------------------------------------------------------------
  self.确认修改=按钮类.创建("imge/gmgj/xan.png",2,"确认修改",3)
  self.系统公告=按钮类.创建("imge/gmgj/xan.png",2,"系统公告",3)
  self.游泳开关=按钮类.创建("imge/gmgj/xan.png",2,"游泳开关",3)
  self.开启首席入场=按钮类.创建("imge/gmgj/xan.png",2,"首席入场",3)
  self.开启首席争霸=按钮类.创建("imge/gmgj/xan.png",2,"首席争霸",3)
  self.比武大会进场=按钮类.创建("imge/gmgj/xan.png",2,"比武进场",3)
  self.比武大会开始=按钮类.创建("imge/gmgj/xan.png",2,"比武开始",3)
  self.比武大会结束=按钮类.创建("imge/gmgj/xan.png",2,"比武结束",3)
  self.开启门派闯关=按钮类.创建("imge/gmgj/xan.png",2,"门派闯关",3)
  self.开启迷宫=按钮类.创建("imge/gmgj/xan.png",2,"开启迷宫",3)
  self.关闭迷宫=按钮类.创建("imge/gmgj/xan.png",2,"关闭迷宫",3)
  self.刷新大雁塔=按钮类.创建("imge/gmgj/xan.png",2,"刷新大雁塔",3)
  self.刷出妖魔统领=按钮类.创建("imge/gmgj/xan.png",2,"刷出妖魔统领",3)
  self.刷出知了大王=按钮类.创建("imge/gmgj/xan.png",2,"刷出知了大王",3)
  self.刷出年兽=按钮类.创建("imge/gmgj/xan.png",2,"刷出年兽",3)
  self.关闭门派闯关=按钮类.创建("imge/gmgj/xan.png",2,"关闭闯关",3)
  self.在线玩家=按钮类.创建("imge/gmgj/xan.png",2,"在线玩家",3)
  self.在线奖励=按钮类.创建("imge/gmgj/xan.png",2,"在线奖励",3)
  self.关闭游戏=按钮类.创建("imge/gmgj/xan.png",2,"关闭游戏",3)
  self.清空数据=按钮类.创建("imge/gmgj/xan.png",2,"清空数据",3)
---------------------------------------------------------------------------------------
  self.装备下拉开关 = false
  self.灵饰下拉开关 = false
  self.选中数据 = ""
  self.灵饰选中数据 = ""
  self.角色信息开关 = false
  self.文本信息开关 = false
  self.超级文本 = require("丰富文本类")(420, 220)
  self.超级文本:添加元素("W", 4294967295.0):添加元素("H", 4278190080.0):添加元素("Y", 4294967040.0):添加元素("L", 4284506367.0):添加元素("R", 4294901760.0):添加元素("G", 4278255360.0)

  self.文字=文字类("zy/simsun.ttc",16)
  self.文字:置颜色(白色)
  self.系统文字=文字类("zy/simsun.ttc",16)
  self.系统文字:置颜色(黑色)
  self.系统操作文字=文字类("zy/simsun.ttc",12)
  self.系统操作文字:置颜色(黑色)
  self.点数文字=文字类("zy/simsun.ttc",16)
  self.点数文字:置颜色(红色)
  self.点数文字1=文字类("zy/simsun.ttc",15)
  self.点数文字1:置颜色(红色)
  self.类型文字=文字类("zy/simsun.ttc",15)
  self.类型文字:置颜色(黄色)
  self.选中文字=文字类("zy/simsun.ttc",15)
  self.选中文字:置颜色(黑色)
  self.装备类型 ={
  [1]= "武器",
  [2]= "衣服",
  [3]= "鞋子",
  [4]= "头盔",
  [5]= "项链",
  [6]= "腰带"
}
  self.装备类型包围盒={}
  self.灵饰类型包围盒={}
  self.坐骑={人族={[1]="汗血宝马",[2]="欢喜羊羊",[3]="七彩神驴",[4]="天使猪猪",[5]="银色穷奇"},
  仙族={[1]="云魅仙鹿",[2]="闲云野鹤",[3]="金麟仙子",[4]="九霄冰凤",[5]="银色穷奇"},
  魔族={[1]="魔力斗兽",[2]="披甲战狼",[3]="玄冰灵虎",[4]="战火穷奇",[5]="银色穷奇"},
  通用={[1]="九尾神狐",[2]="神气小龟",[3]="宝贝葫芦"}
}

  for i=1,#self.装备类型 do
    self.装备类型包围盒[i] =包围盒:创建(1,1,1,1)
    self.装备类型包围盒[i]:置坐标(380,73+i*18)
    self.装备类型包围盒[i]:更新宽高(68,18)
  end
  self.灵饰类型={[1]="手镯",[2]="戒指",[3]="佩饰",[4]="耳饰"}
  for n=1,#self.灵饰类型 do
    self.灵饰类型包围盒[n] =包围盒:创建(1,1,1,1)
    self.灵饰类型包围盒[n]:置坐标(96,198+n*18)
    self.灵饰类型包围盒[n]:更新宽高(68,18)
  end

  引擎.置ini("配置1.txt")

  服务器数据={[1]={ip=引擎.读ini("0","ip"),端口=引擎.读ini("0","Port"),名称="追忆年华",状态=1}}

  客户端:连接处理(服务器数据[1].ip, 服务器数据[1].端口)
end
function 登录类:刷新界面(数据)
    self.进程=2
    self.锁定信息= false
    self.充值信息={}
    密码输入:置可视(false)
    账号输入:置可视(false)
    引擎.置宽高(557, 389)
    引擎.宽度 = 557
    引擎.高度 = 389
    窗口大小 = {
      x = 160,
      y = 120
    }
    if 数据.点数 == nil then
     self.点数 = 0
    else
    self.点数 = 数据.点数
    end
    self.主背景 = 图像类("imge/gmgj/zbj.png")
    引擎.置标题("超级工具 -- 当前GM权限: "..数据.权限.."级")
    self.权限 = 数据.权限
end

function 登录类:刷新数据(数据)

  self.操作信息[#self.操作信息+1] = 数据.内容
  if 数据.点数 == nil then
     self.点数 = 0
  else
  self.点数 = 数据.点数
  end
  if #self.操作信息 >15 then
      self.显示序列 = #self.操作信息-15
  end

  self.正确序列 = self.显示序列
end

function 登录类:角色数据(数据)

  self.角色信息数据 = 数据
  self.文本信息开关 = false
  self.角色信息开关 = true

end

function 登录类:文本数据(数据)

  self.文本信息数据 = 数据
  self.角色信息开关 = false
  self.文本信息开关 = true
  self.显示序列 = 1
end

function 登录类:造型数据(数据)

  self.玩家造型数据 = 数据

end


function 登录类:更新(dt)

  if self.进程~= 1 then
      self.充值系统:更新()
      self.角色系统:更新()
      self.装备系统:更新()
      self.道具系统:更新()
      self.系统开关:更新()
      self.确定充值:更新()
      _GUI:更新(dt,鼠标.x,鼠标.y)
  end
  if self.角色系统:取是否单击()  then
              self.进程 = 3
              玩家账号输入:置文本('')
              充值仙玉输入:置文本('')
              玩家账号输入:置可视(true)
              充值仙玉输入:置可视(true)
              充值银两输入:置可视(false)
              充值储备输入:置可视(false)
              充值积分输入:置可视(false)
              添加经验输入:置可视(false)

              玩家账号输入1:置可视(false)
              特技输入:置可视(false)
              特效输入:置可视(false)
              上限输入:置可视(false)
              下限输入:置可视(false)
              双加输入:置可视(false)
              双加输入1:置可视(false)
              等级输入:置可视(false)
              等级输入1:置可视(false)
              灵饰加成输入:置可视(false)
              灵饰加成输入1:置可视(false)
              灵饰加成输入2:置可视(false)
              灵饰加成输入3:置可视(false)
              灵饰数值输入:置可视(false)
              灵饰数值输入1:置可视(false)
              灵饰数值输入2:置可视(false)
              灵饰数值输入3:置可视(false)
              双加数值输入:置可视(false)
              双加数值输入1:置可视(false)
              坐骑输入:置可视(false)
              灵饰特效输入:置可视(false)
              玩家账号输入2:置可视(false)
              宝石等级输入:置可视(false)
              宝石等级输入1:置可视(false)
              宝石数量输入:置可视(false)
              高级兽决输入:置可视(false)
              阵法输入:置可视(false)
              法宝输入:置可视(false)
              内丹输入:置可视(false)
              书铁等级输入:置可视(false)
              书铁类型输入:置可视(false)
              经验倍数输入:置可视(false)
  elseif self.充值系统:取是否单击()  then
              self.进程 = 2
              玩家账号输入:置文本('')
              充值仙玉输入:置文本('')
              玩家账号输入:置可视(true)
              充值银两输入:置可视(true)
              充值储备输入:置可视(true)
              充值积分输入:置可视(true)
              添加经验输入:置可视(true)

              玩家账号输入1:置可视(false)
              特技输入:置可视(false)
              特效输入:置可视(false)
              上限输入:置可视(false)
              下限输入:置可视(false)
              双加输入:置可视(false)
              双加输入1:置可视(false)
              等级输入:置可视(false)
              等级输入1:置可视(false)
              灵饰加成输入:置可视(false)
              灵饰加成输入1:置可视(false)
              灵饰加成输入2:置可视(false)
              灵饰加成输入3:置可视(false)
              灵饰数值输入:置可视(false)
              灵饰数值输入1:置可视(false)
              灵饰数值输入2:置可视(false)
              灵饰数值输入3:置可视(false)
              双加数值输入:置可视(false)
              双加数值输入1:置可视(false)
              坐骑输入:置可视(false)
              灵饰特效输入:置可视(false)
              玩家账号输入2:置可视(false)
              宝石等级输入:置可视(false)
              宝石等级输入1:置可视(false)
              宝石数量输入:置可视(false)
              高级兽决输入:置可视(false)
              阵法输入:置可视(false)
              法宝输入:置可视(false)
              内丹输入:置可视(false)
              书铁等级输入:置可视(false)
              书铁类型输入:置可视(false)
               经验倍数输入:置可视(false)
  elseif self.装备系统:取是否单击()  then

              self.进程 = 4
              玩家账号输入:置可视(false)
              充值仙玉输入:置可视(false)
              充值银两输入:置可视(false)
              充值储备输入:置可视(false)
              充值积分输入:置可视(false)
              添加经验输入:置可视(false)
              玩家账号输入2:置可视(false)
              宝石等级输入:置可视(false)
              宝石等级输入1:置可视(false)
              宝石数量输入:置可视(false)
              高级兽决输入:置可视(false)
              阵法输入:置可视(false)
              法宝输入:置可视(false)
              内丹输入:置可视(false)
              书铁等级输入:置可视(false)
              书铁类型输入:置可视(false)
              经验倍数输入:置可视(false)
              玩家账号输入1:置可视(true)
              特技输入:置可视(true)
              特效输入:置可视(true)
              上限输入:置可视(true)
              下限输入:置可视(true)
              双加输入:置可视(true)
              双加输入1:置可视(true)
              等级输入:置可视(true)
              等级输入1:置可视(true)
              灵饰加成输入:置可视(true)
              灵饰加成输入1:置可视(true)
              灵饰加成输入2:置可视(true)
              灵饰加成输入3:置可视(true)
              灵饰数值输入:置可视(true)
              灵饰数值输入1:置可视(true)
              灵饰数值输入2:置可视(true)
              灵饰数值输入3:置可视(true)
              双加数值输入:置可视(true)
              双加数值输入1:置可视(true)
              坐骑输入:置可视(true)
              灵饰特效输入:置可视(true)

  elseif self.道具系统:取是否单击()  then
              self.进程 = 5
              玩家账号输入:置可视(false)
              充值仙玉输入:置可视(false)
              充值银两输入:置可视(false)
              充值储备输入:置可视(false)
              充值积分输入:置可视(false)
              添加经验输入:置可视(false)
              玩家账号输入1:置可视(false)
              特技输入:置可视(false)
              特效输入:置可视(false)
              上限输入:置可视(false)
              下限输入:置可视(false)
              双加输入:置可视(false)
              双加输入1:置可视(false)
              等级输入:置可视(false)
              等级输入1:置可视(false)
              灵饰加成输入:置可视(false)
              灵饰加成输入1:置可视(false)
              灵饰加成输入2:置可视(false)
              灵饰加成输入3:置可视(false)
              灵饰数值输入:置可视(false)
              灵饰数值输入1:置可视(false)
              灵饰数值输入2:置可视(false)
              灵饰数值输入3:置可视(false)
              双加数值输入:置可视(false)
              双加数值输入1:置可视(false)
              坐骑输入:置可视(false)
              灵饰特效输入:置可视(false)
              经验倍数输入:置可视(false)
              玩家账号输入2:置可视(true)
              宝石等级输入:置可视(true)
              宝石等级输入1:置可视(true)
              宝石数量输入:置可视(true)
              高级兽决输入:置可视(true)
              阵法输入:置可视(true)
              法宝输入:置可视(true)
              内丹输入:置可视(true)
              书铁等级输入:置可视(true)
              书铁类型输入:置可视(true)
    elseif self.系统开关:取是否单击()  then
              self.进程 = 6
              玩家账号输入:置可视(false)
              充值仙玉输入:置可视(false)
              充值银两输入:置可视(false)
              充值储备输入:置可视(false)
              充值积分输入:置可视(false)
              添加经验输入:置可视(false)
              玩家账号输入1:置可视(false)
              特技输入:置可视(false)
              特效输入:置可视(false)
              上限输入:置可视(false)
              下限输入:置可视(false)
              双加输入:置可视(false)
              双加输入1:置可视(false)
              等级输入:置可视(false)
              等级输入1:置可视(false)
              灵饰加成输入:置可视(false)
              灵饰加成输入1:置可视(false)
              灵饰加成输入2:置可视(false)
              灵饰加成输入3:置可视(false)
              灵饰数值输入:置可视(false)
              灵饰数值输入1:置可视(false)
              灵饰数值输入2:置可视(false)
              灵饰数值输入3:置可视(false)
              双加数值输入:置可视(false)
              双加数值输入1:置可视(false)
              坐骑输入:置可视(false)
              灵饰特效输入:置可视(false)
              玩家账号输入2:置可视(false)
              宝石等级输入:置可视(false)
              宝石等级输入1:置可视(false)
              宝石数量输入:置可视(false)
              高级兽决输入:置可视(false)
              阵法输入:置可视(false)
              法宝输入:置可视(false)
              内丹输入:置可视(false)
              书铁等级输入:置可视(false)
              书铁类型输入:置可视(false)
              经验倍数输入:置可视(true)
  end


  if self.进程==1 then
    _GUI:更新(dt,鼠标.x,鼠标.y)
    self.下一步:更新()
    self.退出:更新()
    密码输入:置可视(true)
    账号输入:置可视(true)
    if self.退出:取是否单击() then
       引擎.关闭()
    elseif self.下一步:取是否单击() then
        local fun  = require("ffi函数")
        self.发送信息 = {
          账号=账号输入:取文本(),
          密码=密码输入:取文本(),
          卡洛=fun.取MD5("???"..密码输入:取文本().."jsiosom")
        }

        客户端:发送(8591, table.tostring(self.发送信息))
    end
  elseif self.进程 == 2 then
      密码输入:置可视(false)
      账号输入:置可视(false)
      self.锁定:更新()
      self.上箭头:更新()
      self.下箭头:更新()
      充值仙玉输入:置可视(true)
      充值银两输入:置可视(true)
      充值储备输入:置可视(true)
      充值积分输入:置可视(true)
      玩家账号输入:置可视(true)
      添加经验输入:置可视(true)

      if self.锁定:取是否单击() then
          if 玩家账号输入:取文本() == ""  then
              信息提示:加入提示("#y/请输入正确的玩家账号")
          elseif 充值仙玉输入:取文本() == "" and 充值银两输入:取文本() == "" and 充值储备输入:取文本() == "" and 充值积分输入:取文本() == ""  and 添加经验输入:取文本() == "" then
              信息提示:加入提示("#y/请输入您要充值的信息")
          else

              if 充值仙玉输入:取文本() ~= "" and tonumber(充值仙玉输入:取文本()) ~= nil then
                self.充值信息[1] = 2
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = 充值仙玉输入:取文本()
                self.充值内容 = "仙玉"
                self.锁定信息 = true
                信息提示:加入提示("#y/锁定成功,请确定信息无误")
              elseif 充值银两输入:取文本() ~= "" and tonumber(充值银两输入:取文本()) ~= nil then

                self.充值信息[1] = 3
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = 充值银两输入:取文本()
                self.充值内容 = "银两"
                self.锁定信息 = true
                信息提示:加入提示("#y/锁定成功,请确定信息无误")

              elseif 充值储备输入:取文本() ~= "" and tonumber(充值储备输入:取文本()) ~= nil then

                self.充值信息[1] = 29
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = 充值储备输入:取文本()
                self.充值内容 = "储备"
                self.锁定信息 = true
                信息提示:加入提示("#y/锁定成功,请确定信息无误")
              elseif 充值积分输入:取文本() ~= "" and tonumber(充值积分输入:取文本()) ~= nil then
                self.充值信息[1] = 41
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = 充值积分输入:取文本()
                self.充值内容 = "积分"
                self.锁定信息 = true
                信息提示:加入提示("#y/锁定成功,请确定信息无误")
              elseif 添加经验输入:取文本() ~= "" and tonumber(添加经验输入:取文本()) ~= nil then
                self.充值信息[1] = 28
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = 添加经验输入:取文本()
                self.充值内容 = "经验"
                self.锁定信息 = true
                信息提示:加入提示("#y/锁定成功,请确定信息无误")
              else
                信息提示:加入提示("#y/请输入正确的充值信息")
              end

          end

      elseif self.确定充值:取是否单击() then

          if self.锁定信息 == false then
              信息提示:加入提示("#y/请点击锁定按钮,确定信息无误")
          elseif self.充值内容 == "积分" and (充值积分输入:取文本() == "" or tonumber(充值积分输入:取文本()) == nil or 充值积分输入:取文本()~= self.充值信息[3]) then
              信息提示:加入提示("#y/请检查充值信息,并重新锁定")
          elseif self.充值内容 == "储备" and (充值储备输入:取文本() == "" or tonumber(充值储备输入:取文本()) == nil or 充值储备输入:取文本()~= self.充值信息[3]) then
              信息提示:加入提示("#y/请检查充值信息,并重新锁定")
          elseif self.充值内容 == "银两" and (充值银两输入:取文本() == "" or tonumber(充值银两输入:取文本()) == nil or 充值银两输入:取文本()~= self.充值信息[3]) then
              信息提示:加入提示("#y/请检查充值信息,并重新锁定")
          elseif self.充值内容 == "仙玉" and (充值仙玉输入:取文本() == "" or tonumber(充值仙玉输入:取文本()) == nil or 充值仙玉输入:取文本()~= self.充值信息[3]) then
              信息提示:加入提示("#y/请检查充值信息,并重新锁定")
          elseif self.充值内容 == "经验" and (添加经验输入:取文本() == "" or tonumber(添加经验输入:取文本()) == nil or 添加经验输入:取文本()~= self.充值信息[3]) then
              信息提示:加入提示("#y/请检查充值信息,并重新锁定")
          else
              客户端:发送(8593, table.tostring(self.充值信息))
          end
      elseif self.上箭头:取是否单击() and self.显示序列 > 0 then
             self.显示序列 = self.显示序列 - 1
      elseif self.下箭头:取是否单击() and self.正确序列 > self.显示序列  then
             self.显示序列 = self.显示序列 + 1
      end
    elseif self.进程 == 3 then
        self.玩家信息:更新()
        self.充值记录:更新()
        self.封禁账号:更新()
        self.封禁IP:更新()
        self.解封账号:更新()
        self.解封IP:更新()
        self.踢出战斗:更新()
        self.强制下线:更新()
        if self.玩家信息:取是否单击() then

            if 玩家账号输入:取文本() == "" and 充值仙玉输入:取文本() == "" then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            elseif 玩家账号输入:取文本() ~= "" then
                self.充值信息[1] = 4
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "账号查询"
                客户端:发送(8593, table.tostring(self.充值信息))
            elseif 充值仙玉输入:取文本() ~= "" then
                self.充值信息[1] = 4
                self.充值信息[2] = 充值仙玉输入:取文本() -- 玩家角色名称
                self.充值信息[3] = "名称查询"
                客户端:发送(8593, table.tostring(self.充值信息))
            end

        elseif self.充值记录:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 7
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "充值记录"
                客户端:发送(8593, table.tostring(self.充值信息))
            end

        elseif self.封禁账号:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 5
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "封禁账号"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.封禁IP:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 5
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "封禁IP"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.解封IP:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 5
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "解封IP"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.解封账号:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 5
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "解封账号"
                客户端:发送(8593, table.tostring(self.充值信息))
            end

        elseif self.踢出战斗:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 24
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "踢出战斗"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.强制下线:取是否单击() then

            if 玩家账号输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.充值信息[1] = 8
                self.充值信息[2] = 玩家账号输入:取文本()
                self.充值信息[3] = "踢出战斗"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        end

        if self.文本信息开关 == true then

          if #self.文本信息数据>11 then
              self.上箭头:更新()
              self.下箭头:更新()
             if self.上箭头:取是否单击() then
                if self.显示序列 <= 1 then
                   信息提示:加入提示("#y/已经到第一页了")
                else
                    self.显示序列 = self.显示序列 -1
                end
             elseif self.下箭头:取是否单击() then

                if self.显示序列*11+1>#self.文本信息数据  then
                   信息提示:加入提示("#y/已经到最后一页了")
                else
                   self.显示序列 = self.显示序列 +1
                end

             end

          end

        end
      elseif self.进程 == 4 then
        self.赠送装备:更新()
        self.赠送灵饰:更新()
        self.赠送坐骑:更新()
        self.获取造型:更新()
        self.下拉按钮:更新()
        self.下拉按钮1:更新()
        if self.下拉按钮:取是否单击() then
           if self.装备下拉开关 == false then
              if self.玩家造型数据 == nil or self.玩家造型数据.性别 == nil then
                信息提示:加入提示("#y/请先获取该角色当前信息")
              else
                self.装备下拉开关 = true
                self.灵饰下拉开关 = false
              end
           else
              self.装备下拉开关 = false

           end
        elseif self.下拉按钮1:取是否单击() then
           if self.灵饰下拉开关 == false then

                self.灵饰下拉开关 = true
                self.装备下拉开关 = false
           else
              self.灵饰下拉开关 = false
           end

        elseif self.赠送坐骑:取是否单击() then
            if 玩家账号输入1:取文本() == ""  then

                信息提示:加入提示("#y/请输入正确的玩家账号")
                return 0
            elseif 坐骑输入:取文本() == ""  then

               信息提示:加入提示("#y/请输入需要赠送的坐骑")
               return 0
            else
                self.充值信息[1] = 23
                self.充值信息[2] = 玩家账号输入1:取文本()
                self.充值信息[3] = 坐骑输入:取文本()
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.获取造型:取是否单击() then

            if 玩家账号输入1:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            else
                self.装备下拉开关 = false
                self.玩家造型数据 = {}
                self.选中数据 = nil
                self.充值信息[1] = 6
                self.充值信息[2] = 玩家账号输入1:取文本()
                self.充值信息[3] = "获取角色造型"
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.赠送灵饰:取是否单击() then --self.灵饰选中数据
            if 玩家账号输入1:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            elseif self.灵饰选中数据 == nil or self.灵饰选中数据 == "" then
                信息提示:加入提示("#y/请选中您要赠送的灵饰类型")
            elseif 等级输入1:取文本() == "" or tonumber(等级输入1:取文本()) == nil  then
                信息提示:加入提示("#y/请输入正确的灵饰等级")
            elseif  tonumber(等级输入1:取文本()) ~= 60 and  tonumber(等级输入1:取文本()) ~= 80 and  tonumber(等级输入1:取文本()) ~= 100 and  tonumber(等级输入1:取文本()) ~= 120 and  tonumber(等级输入1:取文本()) ~= 140 and  tonumber(等级输入1:取文本()) ~= 160 then
                信息提示:加入提示("#y/灵饰等级只能为:60、80、100、120、140")
            else
                self.充值信息[1] = 40
                self.充值信息[2] = 玩家账号输入1:取文本()
                self.充值信息[3] = self.灵饰选中数据
                self.充值信息[4] = 等级输入1:取文本()
                self.充值信息[5] = 灵饰加成输入:取文本()
                self.充值信息[6] = 灵饰数值输入:取文本()
                self.充值信息[7] = 灵饰加成输入1:取文本()
                self.充值信息[8] = 灵饰特效输入:取文本()
                self.充值信息[9] = 灵饰数值输入1:取文本()
                self.充值信息[10] = 灵饰加成输入2:取文本()
                self.充值信息[11] = 灵饰数值输入2:取文本()
                self.充值信息[12] = 灵饰加成输入3:取文本()
                self.充值信息[13] = 灵饰数值输入3:取文本()
                客户端:发送(8593, table.tostring(self.充值信息))
            end
        elseif self.赠送装备:取是否单击() then
            if 玩家账号输入1:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
            elseif 等级输入:取文本() == "" or tonumber(等级输入:取文本()) == nil then
                信息提示:加入提示("#y/请输入正确的装备等级")
            elseif 等级输入:取文本() == "" or tonumber(等级输入:取文本()) == nil then
                信息提示:加入提示("#y/请输入正确的装备等级")
            elseif self.选中数据 == nil or self.选中数据== "" then
                信息提示:加入提示("#y/请选中您要赠送的装备")
            elseif 上限输入:取文本() == nil or 上限输入:取文本()== "" then
                信息提示:加入提示("#y/请填写装备上下限")
            elseif 下限输入:取文本() == nil or 下限输入:取文本()== "" then
                信息提示:加入提示("#y/请填写装备上下限")
            elseif self.玩家造型数据 == nil or self.玩家造型数据.性别 == nil then
                信息提示:加入提示("#y/请先获取该角色当前信息")
            else
                self.充值信息[1] = 39
                self.充值信息[2] = 玩家账号输入1:取文本()
                self.充值信息[3] = self.选中数据
                self.充值信息[4] = 等级输入:取文本()
                if  self.选中数据 =="武器" or self.选中数据 =="女衣" or  self.选中数据 =="男衣"   then
                  if 双加输入:取文本() == "" or 双加数值输入:取文本()== "" or 双加输入1:取文本() == "" or 双加数值输入1:取文本() == "" then
                     信息提示:加入提示("#y/请检查双加属性是否为空")
                     return 0
                  elseif  双加输入:取文本()  ~= "力量" and  双加输入:取文本() ~= "敏捷"  and 双加输入:取文本()  ~= "体质"  and 双加输入:取文本()  ~= "魔力"  and 双加输入:取文本() ~= "耐力" then
                     信息提示:加入提示("#y/请检查双加属性是否输入错误")
                     return 0
                  elseif  双加输入1:取文本()  ~= "力量" and  双加输入1:取文本() ~= "敏捷"  and 双加输入1:取文本()  ~= "体质"  and 双加输入1:取文本()  ~= "魔力"  and 双加输入1:取文本() ~= "耐力" then
                     信息提示:加入提示("#y/请检查双加属性是否输入错误")
                     return 0

                  elseif tonumber(双加数值输入1:取文本()) == nil or  tonumber(双加数值输入:取文本()) == nil  then
                       信息提示:加入提示("#y/请检查双加属性数值是否输入错误")
                     return 0
                  end
                     self.充值信息[5] = 双加输入:取文本().."=".. 双加数值输入:取文本().."@"..双加输入1:取文本().."=".. 双加数值输入1:取文本()
                else
                  self.充值信息[5] =""
                end
                self.充值信息[6] = 特效输入:取文本()
                self.充值信息[7] = 特技输入:取文本()
                self.充值信息[8] = ""
                self.充值信息[9] = 下限输入:取文本()
                self.充值信息[10] = 上限输入:取文本()

                客户端:发送(8593, table.tostring(self.充值信息))
            end

        end
  elseif self.进程 == 5 then
        self.下拉按钮2:更新()
        self.给予宝石:更新()
        self.给予兽决:更新()
        self.给予阵法:更新()
        self.给予法宝:更新()
        self.给予内丹:更新()
        self.给予蟠桃:更新()
        self.给予元宵:更新()
        --self.金银锦盒:更新()
        self.给予书铁:更新()
        self.宝宝套装:更新()
        self.初级套装:更新()
        self.中级套装:更新()
        self.高级套装:更新()
        self.顶级套装:更新()
        if self.下拉按钮2:取是否单击() then
          if self.宝石开关 == false then
             self.宝石开关 = true
          else
             self.宝石开关 = false
          end
        elseif self.给予宝石:取是否单击() then
             if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
             elseif self.宝石选中数据==nil and self.宝石选中数据~="" then
                信息提示:加入提示("#y/请选中您要赠送的宝石")
             elseif 宝石等级输入:取文本() == "" or tonumber(宝石等级输入:取文本()) == nil then
                信息提示:加入提示("#y/请检查宝石等级起始是否输入正确")
             elseif 宝石等级输入1:取文本() == "" or tonumber(宝石等级输入1:取文本()) == nil then
                信息提示:加入提示("#y/请检查宝石等级起始是否输入正确")
             else
                self.充值信息[1] = 31
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = self.宝石选中数据
                self.充值信息[4] = 宝石数量输入:取文本()
                self.充值信息[5] = 宝石等级输入:取文本()
                self.充值信息[6] = 宝石等级输入1:取文本()
                客户端:发送(8593, table.tostring(self.充值信息))
             end
        elseif self.给予兽决:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           elseif 高级兽决输入:取文本() == "" then
                信息提示:加入提示("#y/请输入您要赠送的兽决名称")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = 高级兽决输入:取文本()
                self.充值信息[4] = "兽决"
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.给予阵法:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           elseif 阵法输入:取文本() == "" then
                信息提示:加入提示("#y/请输入您要赠送的阵法名称")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = 阵法输入:取文本()
                self.充值信息[4] = "阵法"
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.给予内丹:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           elseif 内丹输入:取文本() == "" then
                信息提示:加入提示("#y/请输入您要赠送的内丹名称")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = 内丹输入:取文本()
                self.充值信息[4] = "内丹"
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.给予蟠桃:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = ""
                self.充值信息[4] = "蟠桃"
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.给予元宵:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = ""
                self.充值信息[4] = "元宵"
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.给予书铁:取是否单击() then
           if 玩家账号输入2:取文本() == ""  then
                信息提示:加入提示("#y/请输入正确的玩家账号")
           elseif 书铁等级输入:取文本() == "" or tonumber(书铁等级输入:取文本()) == nil   then
                信息提示:加入提示("#y/请输入正确的书铁等级")
           elseif 书铁等级输入:取文本()+0 ~= 100 and 书铁等级输入:取文本()+0 ~= 110  and 书铁等级输入:取文本()+0 ~= 120 and 书铁等级输入:取文本()+0 ~= 130 and 书铁等级输入:取文本()+0 ~= 140 and 书铁等级输入:取文本()+0 ~= 150 and 书铁等级输入:取文本()+0 ~= 160 then
                信息提示:加入提示("#y/只能发放100-160级书铁")
           elseif 书铁类型输入:取文本() == ""  then
                信息提示:加入提示("#y/请输入书铁类型")
           elseif self:取书铁类型(书铁类型输入:取文本()) == false then
                信息提示:加入提示("#y/请正确输入书铁类型,例如L:枪、刀等")
           else
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = 书铁等级输入:取文本()
                self.充值信息[4] = "书铁"
                self.充值信息[5] = 书铁类型输入:取文本()
                客户端:发送(8593, table.tostring(self.充值信息))
           end
        elseif self.初级套装:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = "100"
                self.充值信息[4] = "100级套装"
                客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.中级套装:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = "120"
                self.充值信息[4] = "120级套装"
                客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.高级套装:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = "150"
                self.充值信息[4] = "150级套装"
                客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.顶级套装:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = "160"
                self.充值信息[4] = "160级套装"
                客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.宝宝套装:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = "140"
                self.充值信息[4] = "140级宝宝套装"
                客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.给予法宝:取是否单击() then
                self.充值信息[1] = 32
                self.充值信息[2] = 玩家账号输入2:取文本()
                self.充值信息[3] = 法宝输入:取文本()
                self.充值信息[4] = "法宝"
                客户端:发送(8593, table.tostring(self.充值信息))
        end
  elseif self.进程 == 6 then
        self.确认修改:更新()
        self.系统公告:更新()
        self.游泳开关:更新()
        self.开启首席入场:更新()
        self.开启首席争霸:更新()
        self.比武大会进场:更新()
        self.比武大会开始:更新()
        self.比武大会结束:更新()
        self.开启门派闯关:更新()
        self.开启迷宫:更新()
        self.关闭迷宫:更新()
        self.刷新大雁塔:更新()
        self.刷出年兽:更新()
        self.刷出妖魔统领:更新()
        self.刷出知了大王:更新()
        self.关闭门派闯关:更新()
        self.在线玩家:更新()
        self.在线奖励:更新()
        if self.权限 == "大师" then
           self.关闭游戏:更新()
           self.清空数据:更新()
           if self.关闭游戏:取是否单击() then
              self.充值信息[1] = 10
              客户端:发送(8593, table.tostring(self.充值信息))
           elseif self.清空数据:取是否单击() then
              self.充值信息[1] = 9
              客户端:发送(8593, table.tostring(self.充值信息))
           end
        end
        if self.确认修改:取是否单击() then
          if 经验倍数输入:取文本() =="" or tonumber(经验倍数输入:取文本()) == nil then
              信息提示:加入提示("#y/请输入需要修改的倍数")
          else
              self.充值信息[1] = 18
              self.充值信息[2] = 经验倍数输入:取文本()
              客户端:发送(8593, table.tostring(self.充值信息))
          end
        elseif self.游泳开关:取是否单击() then
              self.充值信息[1] = 19
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.刷新大雁塔:取是否单击() then
              self.充值信息[1] = 20
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.比武大会进场:取是否单击() then
              self.充值信息[1] = 21
              self.充值信息[2] = "比武大会进场"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.比武大会开始:取是否单击() then
              self.充值信息[1] = 21
              self.充值信息[2] = "比武大会开启"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.比武大会结束:取是否单击() then
              self.充值信息[1] = 21
              self.充值信息[2] = "比武大会关闭"
              客户端:发送(8593, table.tostring(self.充值信息))
          elseif self.刷出年兽:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "刷出年兽"
              客户端:发送(8593, table.tostring(self.充值信息))
         elseif self.刷出妖魔统领:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "刷出妖魔统领"
              客户端:发送(8593, table.tostring(self.充值信息))
         elseif self.刷出知了大王:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "刷出知了大王"
              客户端:发送(8593, table.tostring(self.充值信息))
       elseif self.开启门派闯关:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "开启门派闯关"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.关闭门派闯关:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "关闭门派闯关"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.开启迷宫:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "开启迷宫"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.关闭迷宫:取是否单击() then
              self.充值信息[1] = 22
              self.充值信息[2] = "关闭迷宫"
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.在线玩家:取是否单击() then
              self.充值信息[1] = 14
              客户端:发送(8593, table.tostring(self.充值信息))
        elseif self.在线奖励:取是否单击() then
              self.充值信息[1] = 17
              客户端:发送(8593, table.tostring(self.充值信息))
         elseif self.系统公告:取是否单击() then
              self.充值信息[1] = 15
              客户端:发送(8593, table.tostring(self.充值信息))
        end
  end
end
function 登录类:取书铁类型(名称)
     self.现有书类型 =
     {
        "剑",
        "扇",
        "锤",

        "枪",
        "刀",
        "斧",
        "环",
        "双",
        "飘",
        "棒",
        "爪",
        "鞭",
        "项链",
        "鞋子",
        "男衣",
        "女衣",
        "头盔",
        "发钗",
        "腰带"
   }
   for i=1,#self.现有书类型 do
      if self.现有书类型[i] == 名称 then
         return true
      end
   end
   return false
end
function 登录类:显示()
  if self.进程 ~= 1  then
    if  self.进程 ~= 4 and self.进程 ~= 5 then
      self.主背景:显示(0,0)
    elseif self.进程 == 4 then
      self.背景[6]:显示(0,0)
    else
      self.背景[8]:显示(0,0)
    end
      self.充值系统:显示(25,10)
      self.角色系统:显示(128,10)
      self.装备系统:显示(233,10)
      self.道具系统:显示(334,10)
      self.系统开关:显示(437,10)
  end

  if self.进程 == 1 then
    self.背景[1]:显示(0,0)
    self.背景[2]:显示(50,25)
    self.下一步:显示(70,130)
    self.退出:显示(250,130)
      _GUI:显示(鼠标.x,鼠标.y)
  elseif self.进程 == 2 then
    self.背景[3]:显示(10,100)
    self.文字:显示(27,66,"玩家账号:")
    self.文字:显示(187,66,"充值仙玉:")
    self.文字:显示(352,66,"充值银两:")
    self.文字:显示(352,120,"充值储备:")
    self.文字:显示(352,174,"充值积分:")
    self.文字:显示(352,228,"添加经验:")
    self.系统文字:显示(15,105,"操作信息")
    if self.点数 == nil then
       self.点数 = 0
    end
    self.点数文字:显示(360,320,"当前可用点数: "..self.点数)
    self.背景[4]:显示(100,65)
    self.背景[4]:显示(264,65)
    self.背景[4]:显示(430,65)
    self.背景[4]:显示(430,119)
    self.背景[4]:显示(430,173)
    self.背景[4]:显示(430,227)

    self.确定充值:显示(460,280)
    self.锁定:显示(360,280)
    self.上箭头:显示(335,110)
    self.下箭头:显示(335,320)
    self.点数文字:显示(505,66,"*10000")
    self.点数文字:显示(505,120,"*20000")
    self.点数文字:显示(505,174,"*100")
    self.点数文字:显示(505,228,"*50000")

    for i=1,#self.操作信息 do
        self.数据数量 = i
        if self.数据数量 >15 then

            self.数据数量 = 15

        end

        self.系统操作文字:显示(10,106+self.数据数量*15,self.操作信息[self.数据数量+self.显示序列])
    end
  elseif self.进程 == 3 then
    self.背景[5]:显示(10,95)
    self.文字:显示(27,66,"玩家账号:")
    self.文字:显示(187,66,"玩家名称:")
    self.点数文字:显示(17,364,"注意:修改数据有风险,任何错误都会导致账号无法登陆,请提前备份数据。")
    self.背景[4]:显示(100,65)
    self.背景[4]:显示(264,65)
    self.玩家信息:显示(370,64)
    self.充值记录:显示(470,64)
    self.封禁账号:显示(470,104)
    self.封禁IP:显示(470,144)
    self.解封账号:显示(470,184)
    self.解封IP:显示(470,224)
    self.踢出战斗:显示(470,264)
    self.强制下线:显示(470,304)

    if self.角色信息开关 == true then
        self.点数文字:显示(20,110,"玩家账号信息")
        self.系统文字:显示(20,150,"当前账号: "..self.角色信息数据.账号)
        self.系统文字:显示(20,190,"当前等级: "..self.角色信息数据.等级)
        self.系统文字:显示(20,230,"当前银两: "..self.角色信息数据.银两)
        self.系统文字:显示(20,270,"当前仙玉: "..self.角色信息数据.仙玉)
        self.系统文字:显示(20,310,"玩家IP: "..self.角色信息数据.ip)
        self.系统文字:显示(220,150,"角色名称: "..self.角色信息数据.名称)
        self.系统文字:显示(220,190,"角色ID: "..self.角色信息数据.id)
        self.系统文字:显示(220,230,"当前存银: "..self.角色信息数据.存银)
        self.系统文字:显示(220,270,"当前储备: "..self.角色信息数据.储备)
    elseif self.文本信息开关 == true then
        if #self.文本信息数据>11 then
          self.上箭头:显示(450,110)
          self.下箭头:显示(450,320)
        end
        for i =1 ,11 do

          self.显示起始=(self.显示序列-1)*11+i
          if self.文本信息数据[self.显示起始] ~= nil then
            self.系统操作文字:显示(20,90+i*20,self.文本信息数据[self.显示起始])
          end
        end
    end
  elseif self.进程 == 4  then
        self.赠送装备:显示(465,137)
        self.赠送灵饰:显示(465,257)
        self.赠送坐骑:显示(465,363)
        self.获取造型:显示(465,70)
        self.下拉按钮:显示(434,71)
        self.下拉按钮1:显示(148,195)
        self.类型文字:显示(170,298,"人族:")
        self.类型文字:显示(170,320,"仙族:")
        self.类型文字:显示(170,342,"魔族:")
        self.类型文字:显示(170,367,"通用:")
        self.点数文字1:显示(18,278,"警告:请参考灵饰属性大全图片设置灵饰属性！否则有可能导致未可知后果")
        for i=1,5 do
          self.类型文字:显示(144+i*66,299,self.坐骑.人族[i])
          self.类型文字:显示(144+i*66,320,self.坐骑.仙族[i])
          self.类型文字:显示(144+i*66,343,self.坐骑.魔族[i])
          if self.坐骑.通用[i]~=nil then
            self.类型文字:显示(144+i*66,366,self.坐骑.通用[i])
          end
        end
        if self.装备下拉开关 ==  true then
          self.背景[7]:显示(380,91)
          if self.玩家造型数据~=nil  and self.玩家造型数据.性别~=nil then
            if self.玩家造型数据.性别 == "女" then
               self.装备类型[2] = "女衣"
               self.装备类型[4] = "发钗"
            elseif self.玩家造型数据.性别 == "男" then
               self.装备类型[2] = "男衣"
               self.装备类型[4] = "头盔"
            end
          end
          for i = 1,#self.装备类型 do
            self.类型文字:显示(385,73+i*18,self.装备类型[i])
          end
          for n=1,#self.装备类型包围盒 do
            if self.装备类型包围盒[n]:检查点(鼠标.x,鼠标.y) and 引擎.鼠标弹起(左键) then
               self.装备下拉开关 = false
               self.选中数据 = self.装备类型[n]
            end
          end
        elseif self.灵饰下拉开关 == true then
          self.背景[7]:显示(95,214)
          for n = 1,#self.灵饰类型 do
            self.类型文字:显示(100,198+n*18,self.灵饰类型[n])
          end
          for i = 1,#self.灵饰类型包围盒 do
            if self.灵饰类型包围盒[i]:检查点(鼠标.x,鼠标.y) and 引擎.鼠标弹起(左键) then
               self.灵饰下拉开关 = false
               self.灵饰选中数据 = self.灵饰类型[i]
            end
          end
        end
        if self.灵饰选中数据~=nil and self.灵饰选中数据~="" then
           self.选中文字:显示(100,198,self.灵饰选中数据)
        end
        if self.选中数据~=nil and self.选中数据~="" then
           self.选中文字:显示(385,74,self.选中数据)
        end
        if self.玩家造型数据~=nil and self.玩家造型数据.造型 ~= nil and self.玩家造型数据.性别~=nil then
            self.选中文字:显示(247,74,self.玩家造型数据.造型)
        end
  elseif self.进程 == 5  then
        self.文字:显示(29,66,"玩家账号:")
        self.背景[4]:显示(105,65)
        self.下拉按钮2:显示(158,95)
        self.给予宝石:显示(460,95)
        self.给予兽决:显示(460,129)
        self.给予阵法:显示(202,164)
        self.给予法宝:显示(460,164)
        self.给予内丹:显示(202,208)
        self.给予蟠桃:显示(330,208)
        self.给予元宵:显示(460,208)
        --self.金银锦盒:显示(460,208)
        self.给予书铁:显示(460,258)
        self.宝宝套装:显示(40,310)
        self.初级套装:显示(140,310)
        self.中级套装:显示(240,310)
        self.高级套装:显示(340,310)
        self.顶级套装:显示(440,310)
        if self.宝石开关 == true then
           self.背景[9]:显示(105,113)
           for i=1,#self.宝石类型 do
              self.类型文字:显示(110,97+i*18,self.宝石类型[i])
              if self.宝石类型包围盒[i]:检查点(鼠标.x,鼠标.y) and 引擎.鼠标弹起(左键) then
                 self.宝石开关 = false
                 self.宝石选中数据 = self.宝石类型[i]
              end
           end

        end
        if self.宝石选中数据~=nil and self.宝石选中数据~="" then
            self.选中文字:显示(108,97,self.宝石选中数据)
        end
        self.点数文字:显示(17,364,"注意:请提前预留好足够的位置！指南书类型为斧,环,双,飘,棒,爪,鞭,等")
  elseif self.进程 == 6 then
        self.文字:显示(29,66,"修改经验倍数:")
        self.背景[10]:显示(135,65)
        self.确认修改:显示(188,64)
        self.系统公告:显示(188,64)
         self.游泳开关:显示(307,64)
        self.刷新大雁塔:显示(434,64)
        self.比武大会进场:显示(50,118)
        self.比武大会开始:显示(178,118)
        self.比武大会结束:显示(297,118)
        self.刷出妖魔统领:显示(440,100)
        self.刷出知了大王:显示(440,130)
        self.刷出年兽:显示(440,160)
        self.开启首席入场:显示(60,166)
        self.开启首席争霸:显示(188,166)

        self.开启门派闯关:显示(60,215)
        self.关闭门派闯关:显示(188,215)
        self.开启迷宫:显示(307,166)
        self.关闭迷宫:显示(440,190)
        self.在线玩家:显示(307,215)
        self.在线奖励:显示(440,220)
        if  self.权限 == "大师" then
          self.关闭游戏:显示(307,360)
          self.清空数据:显示(434,360)
        end

  end
_GUI:显示(鼠标.x,鼠标.y)
end


控件界面:置可视(true,true)

return 登录类