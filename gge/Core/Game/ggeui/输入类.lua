--=====================================================================================
local 引擎 	 = require("gge引擎")
local F函数  = require("ffi函数")
local GUI输入类 = class(require("ggeui/基类"))
rawset(GUI输入类, '列表', {})
local insert = table.insert
local byte   = string.byte
local 输入信息
--GUI输入类.列表 = {}--全局输入控件
--=====================================================================================
local function _分割字符(str,tv,ltv,idx,size)
	local t = tv
	local lt = ltv
	local i = 1
	local ascii = 0
	while true do
		ascii = byte(str, i)
		if ascii then
			if ascii < 127 then
				insert(t,idx,string.sub(str, i, i))
				insert(lt,idx,size/2)
				i = i+1
			else
				insert(t,idx,string.sub(str, i, i+1))
				insert(lt,idx,size)
			    i = i+2
			end
			idx = idx +1
		else
		    break
		end
	end
	return idx
end

local tp

function GUI输入类:初始化(标记,x,y,宽度,高度,根,颜色)
	if tp == nil then
		tp = 根
	end

	self._px 		= x or 0
	self._py 		= y or 0
	self._宽度 		= 宽度 or 200
	self._高度 		= 高度 or 16
	self._类型 		= '输入'
	self._文字 		= require("gge文字类")()
	self._文字大小 	= self._文字:取大小()
	self._光标 		= require("gge精灵类")(0,0,0,2,self._高度):置颜色(0xFFFF0000)
	self._选中精灵 	= require("gge精灵类")(0,0,0,0,self._高度):置颜色(0xFF0000FF)
	self._选中 		= false --是否选中文本
	self._按下偏移 	= 0
	self._按下位置 	= 0
	self._闪烁间隔 	= 0.6
	self._闪烁计时 	= 0
	self._输入名称 = 标记
	self._光标可视 	= false
	self._内容 		= {}--记录字符
	self._内容长度 	= {}--记录字符长度
	self._字符总数 	= 0 --记录限制字数
	self._最大字符数 = math.floor(self._宽度/(self._文字大小/2))
	self._长度 		= 0 --光标偏移
	self._限制字数 	= 999

	self._光标偏移 	= 0
	self._光标位置 	= 1
	self._起始位置 	= 1
	self._结束位置  = 1
	self._显示内容 	= ""

	self._颜色 		= 颜色 or 0xFFFFFFFF
	self._输入模式 	= 0
	self._输入焦点 	= false
	self._密码符号 	= "*"
	if 颜色 ~= nil then
		self:置光标颜色(颜色)
	else
	    self:置文字颜色(颜色)
	end
end

function GUI输入类:取文字()
	return self._文字
end
function GUI输入类:置文字(v)
	self._文字 = v
	self._文字大小 	= self._文字:取大小()
	return self
end
function GUI输入类:置多行(v)
	self.多行=v
end
function GUI输入类:取光标精灵()
	return self._光标
end
function GUI输入类:置光标精灵(v)
	self._光标 = v
	return self
end
function GUI输入类:取选中精灵()
	return self._选中精灵
end
function GUI输入类:置选中精灵(v)
	self._选中精灵 = v
	return self
end
function GUI输入类:置正常模式()
	self._输入模式 = 0
	return self
end
function GUI输入类:置密码模式(v)
	self._输入模式 = bit.bor(self._输入模式,1)
	self._密码符号 = v or "*"
	return self
end
function GUI输入类:置数字模式()
	self._输入模式 = bit.bor(self._输入模式,2)
	return self
end
function GUI输入类:置英文模式()
	self._输入模式 = bit.bor(self._输入模式,4)
	return self
end
function GUI输入类:置小数模式()
	self._输入模式 = bit.bor(self._输入模式,8)
	return self
end
function GUI输入类:置限制字数(v)
	self._限制字数 = v
	return self
end
function GUI输入类:置光标颜色(v)
	self._光标 		= require("gge精灵类")(0,0,0,1,self._高度):置颜色(v)
end
function GUI输入类:置文字颜色(v)
	self._颜色 = v
end
function GUI输入类:屏蔽快捷键(v)
	self._屏蔽快捷 = v
end
function GUI输入类:置焦点(v)
	self._输入焦点 	= v
	if v then
		for i,v in ipairs(GUI输入类.列表) do
			if v~=self then
			    v:置焦点(false)
			end
		end
		self._光标可视 	= true
	else
		self._光标可视 	= false
		self._选中 = false
		self._选中精灵:置区域(0,0,0,self._高度)
	end
	return self
end
function GUI输入类:添加文本(v)
	self._光标位置 = _分割字符(v,self._内容,self._内容长度,self._光标位置,self._文字大小)--分割并加入
	self:_生成文本()
end
function GUI输入类:置文本(v)
	if v then
		self._内容 = {}
		self._内容长度 = {}
		self._光标位置 = _分割字符(v,self._内容,self._内容长度,1,self._文字大小)--分割并加入
		self._起始位置 = self._光标位置
		self:_生成文本()
	end
	--se = self._长度
	return self
end
function GUI输入类:取文本()
	return table.concat(self._内容)
end
function GUI输入类:取选中文本()
	if bit.band(self._输入模式,1) ~= 1 then--密码模式
		if self._按下位置 > self._光标位置 then
		    self._按下位置,self._光标位置 = self._光标位置,self._按下位置
		end
		return table.concat(self._内容,nil,self._按下位置,self._光标位置-1)
	end
end
function GUI输入类:_更新(dt,x,y)
	if not self._禁止 then
		if self._输入焦点 then--光标闪烁计算
			self._闪烁计时 = self._闪烁计时 +dt
			if self._闪烁计时 >= self._闪烁间隔 then
				self._闪烁计时  = 0
			    self._光标可视 = not self._光标可视
			end
		end
	end
end
function GUI输入类:_显示(x,y)
	self._选中精灵:显示(self._x+self._按下偏移,self._y)
	self._文字:置颜色(self._颜色):显示(self._x,self._y,self._显示内容)
	if self._光标可视 then
	    self._光标:显示(self._x+self._光标偏移,self._y)
	end
end
function GUI输入类:_生成偏移()
	local 长度 = 0
    for i=self._起始位置,self._光标位置-1 do--位置到光标位置的宽度
    	长度 = 长度 +self._内容长度[i]
    end
    return 长度
end
function GUI输入类:_生成文本() -- 生成用于显示的文本
    --self._光标可视 = true
    if bit.band(self._输入模式,1) == 1 then--密码模式
    	self._显示内容 = string.rep(self._密码符号, #table.concat(self._内容))
    else
    	self._显示内容 = table.concat(self._内容)
    end
    self._长度 		= self._文字:取宽度(self._显示内容)
    self._字符总数 	= self._长度/(self._文字大小/2)

    if self._起始位置 > self._光标位置 then--左向前删除
    	if self._起始位置 >6 then
    	    self._起始位置 = self._起始位置 -6
    	else
    		self._起始位置 = 1
    	end
    end
    self._结束位置 	= #self._内容
    if self._长度 > self._宽度 then -- 当内容超过控件宽度时
		local 长度 = self:_生成偏移()
    	if 长度>self._宽度 then--起始位置到光标是否超过边框宽度
    		self._起始位置 = self._起始位置 +(self._内容长度[self._光标位置-1]==self._文字大小 and 2 or 1)--新输入的字符宽度(可优化)
    		self._结束位置 = self._光标位置 -1
    		self._显示内容 = table.concat(self._内容,nil,self._起始位置,self._结束位置)
    		self._长度     = self._文字:取宽度(self._显示内容)
    		self._光标偏移 = self:_生成偏移()
    	else
    		长度 = 0
	        for i=self._起始位置,#self._内容 do--起始位置到结尾是否超过边框宽度
	        	长度 = 长度 +self._内容长度[i]
	        	if 长度>self._宽度 then
	        		self._结束位置 	= i-1
	        		self._显示内容 	= table.concat(self._内容,nil,self._起始位置,self._结束位置)
	        		self._长度 		= self._文字:取宽度(self._显示内容)
	        		self._光标偏移 	= self:_生成偏移()
	        	    return
	        	end
	        end
	        if 长度<self._宽度 then--右向前删除
	        	长度 = 0
	        	for i=#self._内容,1,-1 do
	        		长度 = 长度 +self._内容长度[i]
		        	if 长度>self._宽度 then
		        		self._起始位置 	= i+1
		        		self._结束位置 	= #self._内容
		        		self._显示内容 	= table.concat(self._内容,nil,self._起始位置,self._结束位置)
		        		self._长度 		= self._文字:取宽度(self._显示内容)
		        		self._光标偏移 	= self:_生成偏移()
		        	    break
		        	end
	        	end
	        end
    	end
    else
        self._起始位置 = 1
        self._光标偏移 	= self:_生成偏移()
    end
end
function GUI输入类:_更新位置(目标长度)--更新鼠标当前位置

	if 目标长度< 0 and self._起始位置 >1  then--向左拖动
		local 长度 	= 0
		for i=1,self._起始位置-1 do
			长度 = 长度 + self._内容长度[i]
		end
		self._按下偏移 = self._按下偏移 + 长度
		if self._按下偏移 > self._宽度 then
		    self._按下偏移 = self._宽度
		end
		self._起始位置 = 1
		self._光标位置 = 1
		self:_生成文本()
		return
	elseif 目标长度 > self._宽度 and self._结束位置 < #self._内容 then--向右拖动
		local 长度 	= 0
		for i=self._结束位置,#self._内容-1 do
			长度 = 长度 + self._内容长度[i]
		end
		self._按下偏移 = self._按下偏移 - 长度
		if self._按下偏移 < 0 then
		    self._按下偏移 = 0
		end
		self._起始位置 = #self._内容
		self._光标位置 = #self._内容
		self:_生成文本()
		return
	elseif 目标长度<=4 then
	    self._光标偏移 = 0
	    self._光标位置 = self._起始位置
	    return
	end
	local 长度 	= 0
	local n 	= 0
	for i=self._起始位置,#self._内容 do--循环记录表，查看位置
		local v = self._内容长度[i]
		长度 	= 长度 + v
		n 		= n+1
		if 长度+v/2 >= 目标长度 then
		    self._光标偏移 = 长度
		    self._光标位置 = n+self._起始位置
		    return
		end
	end
	self._光标偏移 = self._长度
	self._光标位置 = #self._内容+1
end
function GUI输入类:_删除选中()--删除拖选中的文本
	if self._选中 then
		local 数量 		= math.abs(self._光标位置 - self._按下位置)
		if self._光标位置 > self._按下位置 then--如果是从左向右拖选
			self._光标位置 = self._按下位置
			--self._光标偏移 = self._按下偏移
		end
		for i=1,数量 do
		    table.remove(self._内容,self._光标位置)
		    table.remove(self._内容长度,self._光标位置)
		end
		self._选中 = false
		self._选中精灵:置区域(0,0,0,self._高度)
		self:_生成文本()
	end
end
function GUI输入类:_添加字符(t,l)--添加字符到表,并更新显示文本
	insert(self._内容,self._光标位置,t)
	insert(self._内容长度 ,self._光标位置,l)
	self._光标位置 = self._光标位置+1
	--self._光标偏移 = self._光标偏移+l
	self:_生成文本()
end
function GUI输入类:_模式限制(c)
	--输入数字，并且不是普通模式，并且没有启动数字模式
	if c >=48 and c<=57 and self._输入模式 > 1 and bit.band(self._输入模式,2) ~= 2 then -- 数字模式
	    return true
	--如果限制了数字，并且没有开启英文（46=小数点）
	elseif (c<48 or c>57) and bit.band(self._输入模式,2) == 2 and bit.band(self._输入模式,4) ~= 4 then
		 return true
	elseif c >=97 and c<=122 and self._输入模式 > 1 and bit.band(self._输入模式,4) ~= 4 then -- 英文模式
	     return true
	end
	return false
end
function GUI输入类:取工具输入(标识)
	if 输入信息 == nil then
		输入信息={"仙玉数额","银子数额","储备数额","经验数额","充值积分","充值点卡","玩家名称","攻击修炼","法术修炼","防御修炼","抗法修炼","法术控制","防御控制","攻击控制","抗法控制","强身等级","冥想等级","内丹技能","兽决技能","点化技能","蟠桃数量","元宵数量","修炼果数","阵法名称","卡片造型","符石名称","图策等级","法宝名称","装备名称","坐骑名称","称谓名称","烹饪名称","烹饪品质","三药名称","三药品质","金丹数量","金丹品质","书铁名称","书铁等级",
		"宝石名称","等级下限","等级上限","装备位置","物品等级","装备属性1","属性数值1","装备属性2","属性数值2","附加属性1","附加数值1","附加属性2","附加数值2","装备等级","附加特技","附加特效1","附加特效2","双加属性1","双加数值1","双加属性2","双加数值2","上限/下限","点化效果","是否专用","灵饰位置","灵饰等级","主属类型","主属数值","附加类型1","附加数额1","附加类型2","附加数额2","附加类型3","附加数额3","附加类型4","附加数额4","召唤兽[1]","召唤兽[2]","召唤兽[3]","召唤兽[4]","召唤兽[5]","召唤兽[6]","召唤兽[7]","宠物等级","宠物成长","宠物寿命","宠物种类","内丹上限","宠物造型","攻击资质","防御资质","体力资质","法力资质","速度资质","躲闪资质","经验倍数","难度系数","发送公告"}
		for i=1,24 do
			if i < 10 then
				输入信息[#输入信息+1] = "技能[0"..i.."]"
			else
				输入信息[#输入信息+1] = "技能["..i.."]"
			end
		end
	end
	for i=1,#输入信息 do
	    if 输入信息[i] == 标识 then
	    	return true
	    end
	end
	return false
end
function GUI输入类:_限制复制(标识)
	if 标识 == "账号输入" or 标识 == "密码输入" or 标识 == "角色的ID" or self:取工具输入(标识) or 标识 == "卡号输入" then
		return true
	end
	return false
end
function GUI输入类:_消息事件(类型,b,c)
	local x,y = b,c
	if 类型 == '输入字符' then
		if self._输入焦点 then
			if 引擎.按键按住(KEY.CTRL) and self:_限制复制(self._输入名称) then
				--print(c)
				if c == 1 then -- 全选
					self._光标位置 = 1
					self._按下位置 = #self._内容 +1
					self._光标偏移 = 0
					self._按下偏移 = 0
					self._选中 = true
					self._选中精灵:置区域(0,0,self._长度,self._高度)
				elseif c == 3 and not self._屏蔽快捷 then -- 复制
					F函数.置剪贴板(self:取选中文本())
				elseif c == 22 and not self._屏蔽快捷 then --粘贴
					self:_删除选中()
					self:添加文本(F函数.取剪贴板())
				elseif c == 24 and not self._屏蔽快捷 then --剪贴
					F函数.置剪贴板(self:取选中文本())
					self:_删除选中()
				elseif c == 26 then--撤销
				end
			elseif c == 8 then--退格
				if self._选中 then
				    self:_删除选中()
				elseif self._光标位置 > 1 then
				    table.remove(self._内容,self._光标位置-1)
				    table.remove(self._内容长度,self._光标位置-1)
				    self._光标位置 = self._光标位置 -1
				    self:_生成文本()
				    self._光标可视 = true
				end
			elseif c == 13 or c ==10 then--enter
			elseif c <= 28 then --特殊
			else
				self:_删除选中()
				if self._字符总数 + 1 <= self._限制字数 and not self:_模式限制(c) then
					self:_添加字符(b,self._文字大小/2 )
				end
			end
			return self:发送消息(类型,x,y)
		end
	elseif 类型 == '输入中文' then
		if self._输入焦点 and self._字符总数 + 2 <= self._限制字数 then
			self:_删除选中()
			self:_添加字符(b,self._文字大小)
			self:发送消息(类型,x,y)
		end
	elseif 类型 == '按键按下' then
		if self._输入焦点 then
			if b == KEY.LEFT then
				if self._光标位置 >1 then
					self._光标位置 = self._光标位置 -1
					if string.byte(self._内容[self._光标位置]) < 127 then
					    self._光标偏移 = self._光标偏移 -self._文字大小/2
					else
						self._光标偏移 = self._光标偏移 -self._文字大小
					end
					if self._光标偏移 < 0 then
					    self:_生成文本()
					end
					self._光标可视 = true
				end
			elseif KEY.RIGHT then
				if self._光标位置 <= #self._内容 then
					if string.byte(self._内容[self._光标位置]) < 127 then
					    self._光标偏移 = self._光标偏移 +self._文字大小/2
					else
						self._光标偏移 = self._光标偏移 +self._文字大小
					end
					self._光标位置 = self._光标位置 +1
					if self._光标偏移 > self._长度 then
						self._起始位置 = self._起始位置+1
					    self:_生成文本()
					end
					self._光标可视 = true
				end
			elseif KEY.PGUP then
			elseif KEY.PGDN then
			elseif KEY.HOME then
			elseif KEY.END then
			elseif KEY.INSERT then
			elseif KEY.DELETE then
			end
		end
	elseif 类型 == '按键按住' then
		-- if self._输入焦点 then
		-- 	if b == KEY.LEFT then
		-- 		self:_消息事件('按键按下',b,c)
		-- 	elseif KEY.RIGHT then
		-- 		self:_消息事件('按键按下',b,c)
		-- 	end
		-- end
	elseif 类型 == '鼠标移动' then
		if self:检查点(x,y) then
			tp.鼠标.置鼠标("输入")
			if not self._已碰撞 then
			    self._已碰撞 = true
			    self:发送消息('碰撞事件')
			end
		elseif self._已碰撞 then
			self._已碰撞 = false
			self:发送消息('取消碰撞')
		else
			tp.鼠标.置鼠标("普通")
		end
		if self._鼠标按下 then
			self:_更新位置(x - self._x)
			self._选中精灵:置区域(0,0,self._光标偏移-self._按下偏移,self._高度)
		end
		if self:检查点(x,y) then self:发送消息(类型,x,y);return true end
	elseif 类型 == '左键按下' then
		if self:检查点(x,y) then
			self:_更新位置(x - self._x)
			self._鼠标按下 = true
			self._按下偏移 = self._光标偏移
			self._按下位置 = self._光标位置

			self._选中精灵:置区域(0,0,0,self._高度)
			self:置焦点(true)
			self:发送消息(类型,x,y)
			return true
		end
	elseif 类型 == '左键弹起' then
		if self._鼠标按下 then
			self._鼠标按下 = false
			self._选中 = (self._光标位置-self._按下位置 ~= 0)
		end
		if self:检查点(x,y) then self:发送消息(类型,x,y);return true end
	elseif 类型 == '窗口移动' then
		self._x,self._y = x+self._px,y+self._py
		self._包围盒:置坐标(self._x,self._y)
		self:发送消息(类型,x,y)
	elseif 类型 == '右键按下' or 类型 == '右键弹起'  then
		if self:检查点(x,y) then
		    return true
		end
	else
		self:发送消息(类型,x,y)
	end

end

function GUI输入类:开始这置(x,y)
	-- self._x,self._y = x+self._px,y+self._py
	-- self._包围盒:置坐标(self._x,self._y)
	-- self:发送消息(类型,x,y)
end

return GUI输入类