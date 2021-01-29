--======================================================================--
--	☆ 作者：飞蛾扑火 QQ：1415559882
--======================================================================--
local class = class
local 场景类_场景 = class()
local ceil = math.ceil
local floor = math.floor
local random = math.random
local sort = table.sort
local require = require
local pairs = pairs
local insert = table.insert
local mousea = 引擎.鼠标按下
local mouseb = 引擎.鼠标弹起
local ARGB = ARGB
local type = type
local remove = table.remove
local xys = 生成XY

function 场景类_场景:初始化()
	-- UI
	tp = 引擎.场景
	self._滑块 =  require("script/系统专用/滑块")
	self._自适应 = require("script/系统专用/自适应")
	self._按钮 = require("script/系统专用/按钮")
	self._小型选项栏 = require("script/系统专用/小型选项栏")
	self._丰富文本 = require("script/系统专用/丰富文本")
	self._列表 = require("script/系统专用/列表")
	-- 初始化加载
	self.资源 = require("script/直读系统/加载类")(self)
	self.资源:打开()
	local 资源 = self.资源
	-- 初始化字体表
	local wz = require("gge文字类")
	self.字体表 = {
		普通字体 = wz.创建(nil,14,false,false,false),
		普通字体_ = wz.创建(nil,13,false,false,false),
		普通字体__ = wz.创建(nil,12.5,false,false,false),
		描边字体 = wz.创建(nil,16,false,true,false),
		道具字体 = wz.创建(nil,21,true,false,true),
		人物字体 = wz.创建(nil,16,false,false,true),
		人物字体_ = wz.创建(nil,16,false,false,false),
		窗口字体 = wz.创建(wdf配置.."/font/simhei.ttf",16,false,true,false),
	};wz=nil
	self.字体表.道具字体:置字间距(3.8)
	self.字体表.描边字体:置描边颜色(-16777216)
	self.字体表.描边字体:置颜色(4294967295)
	-- 测试
	local fc = self._自适应.创建()
	fc:加载(self)
	local fc1 = self._按钮(资源:载入('wzife.wdf',"网易WDF动画",0xD209A05E),0,0,1,true,nil,true)
	fc1:置根(self)
	self.提示框 = self._自适应.创建(6,1,1,1,3,9)
	-- 初始化时间
	self.当前地图 = 0
	local bqs = {1295847816,1853525647,1076954610,3552721044,3990239921,3366615112,2782337201,3771134163,1462708813,2715893287,3002376600,3991654351,993860032,2666294756,454787878,1382010105,2912848813,3919700593,477926852,352380776,811687356,915719759,4249060934,1336751228,1950021903,2235513801,3594739784,1960900090,2382390242,1537855326,3907030953,2290431679,3202252097,4033571742,1492820992,655187057,2901001332,3190903022,298183232,1945354141,3436623848,1724964988,2592865169,3393696884,1494002331,1310769894,1152800681,2542768010,1378600591,2829693277,3846038890,3901444948,68667698,3331959614,432707334,4241851683,3448703702,2542506275,241536076,314448958,2242677963,1887092560,1489631920,2860202818,4076591726,4232189420,3498505860,4241140149,3858705890,2271353759,3452523393,963399171,2959831232,2917226350,4215743335,3987108486,365569753,3701218951,3044567112,3265766525,2129343522,2401287726,2716317030,292723042,4014574629,4183102172,4115700508,2139528734,276624883,4099788650,2578443618,3367759523,576638850,3586214754,2830927389,1915332364,1341579386,3743372972,1217313750,1208397371,156713767,2057251015,3084935361,1485268859,470535714,2868631088,3835251562,2896374671,3982186902,1708428735,2448085336,1354708809,943667221,1146784672,3592760724,611393967,1688780051,2042812914,1466206851,770780432,3612578974}
	self.包子表情动画D = {}
	self.包子表情动画 = {}
	self.包子表情动画DD = {}
	for i=0,120 do
	    self.包子表情动画D[i] = 资源:载入('wzife.wdf',"网易WDF动画D",bqs[i+1])
	    self.包子表情动画[i] = 资源:载入('wzife.wdf',"网易WDF动画",bqs[i+1])
	    -- self.包子表情动画DD[i] = 资源:载入('wzife.wdf',"网易WDF动画DD",bqs[i+1])
	end
	-- 天气
	self.画线 = 资源:载入('wzife.wd4',"网易WDF动画",0xA1442425)
	-- 角色坐标
	self.角色坐标 = xys()
	self.人物选中  = false
	self.选中UI  = false
	self.隐藏UI = false
	self.第二场景开启 = false
	self.下一次确定 = false
	self.按钮焦点  = false
	self.禁止通行 = false
	self.消息栏焦点 = false
	self.快捷技能显示 = false
	self.按下中 = false
	self.第二窗口移动中 = false
	self.坐骑列表 = {}
	--self.选中窗口 = 0
	-- 初始化缓存数据
	self.Npc任务事件 = nil -- 寄存押镖、送信之类的
	-- 初始化运行时间
	self.剧情开始 = false
	self.运行时间 = 0
	-- self.音乐:置音量(self.音量/2)
	self.恢复UI = false
	self.梦幻指引 = {}
	self.任务Npc = {}
	self.临时Npc = {}
	self.第一窗口移动中 = false
	self.第二次删除 = 0
end

function UI排序(a,b)
 	return a.窗口时间 < b.窗口时间
end

function 场景类_场景:更新(dt,x,y)
		for i=0,120 do
			self.包子表情动画[i]:更新(dt)
		end
    for i=0,120 do
       self.包子表情动画D[i]:更新(dt)
    end
end

function 场景类_场景:显示(dt,x,y)
end

return 场景类_场景