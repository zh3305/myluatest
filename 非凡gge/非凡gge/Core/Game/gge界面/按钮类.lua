
--=====================================================================================
local GUI按钮类 = class(require("gge界面/基类"))
--=====================================================================================
function GUI按钮类:初始化(标记,x,y)
    self._px   = x or 0
    self._py   = y or 0
    self._选中 = false
    self._状态 = 0
    self._类型 = '普通按钮'
    self._精灵 = require("gge精灵类")()
end
function GUI按钮类:取精灵()
    return self._精灵
end
function GUI按钮类:置列表(v)
    self._按钮列表=v
    return self
end
function GUI按钮类:置选中(v)
    if self:取类型() == '复选按钮' then
        self:_置选中(v)
    elseif self:取类型() == '单选按钮' and v and not self:是否选中() then
        local 子控件 = self._按钮列表 or self:取父控件():取子控件列表()
        for i,v in ipairs(子控件) do
            if v:取类型() == '单选按钮' and v:是否选中() then
                v:_置选中(false);
                break
            end
        end
        self:_置选中(true)
    end
    return self
end
function GUI按钮类:_置选中(v)
    if self._选中 ~= v then
        self._选中 = v
        self._状态 = 0
        self:_置纹理(v and self._选中正常纹理 or self._正常纹理)
        self:发送消息('选中事件',v,self)
    end
end
function GUI按钮类:是否选中()
    return self._选中
end
function GUI按钮类:置禁止(v)
    if self._禁止 ~= v then
        self._禁止        = v
        self._状态        = v and -1 or 0
        self:_更新纹理()
        --self:_消息事件('鼠标移动',引擎.取鼠标坐标())
    end
    return self
end
function GUI按钮类:置正常纹理(v)
    self._正常纹理 = v
    if tostring(v)=='ggeTexture' then
        self._精灵:置纹理(v)
    else
        self._精灵 = v
    end
    return self
end
function GUI按钮类:置按下纹理(v)
    self._按下纹理 = v
    return self
end
function GUI按钮类:置经过纹理(v)
    self._经过纹理 = v
    return self
end
function GUI按钮类:置禁止纹理(v)
    self._禁止纹理 = v
    return self
end
function GUI按钮类:置选中正常纹理(v)
    self._选中正常纹理 = v
    return self
end
function GUI按钮类:置选中按下纹理(v)
    self._选中按下纹理 = v
    return self
end
function GUI按钮类:置选中经过纹理(v)
    self._选中经过纹理 = v
    return self
end
function GUI按钮类:置选中禁止纹理(v)
    self._选中禁止纹理 = v
    return self
end
function GUI按钮类:_显示()
    if self:是否可视() then
        self._精灵:显示(self._x,self._y)
        if self._调试 then self._精灵:取包围盒():显示() end
    end
end
function GUI按钮类:检查点(x,y)
    return self._精灵:检查点(x,y)
end
function GUI按钮类:检查像素(x,y)
    return bit.rshift(self._精灵:取像素(x,y), 24) ~= 0
end
function GUI按钮类:_置纹理(v)
    if v then
        if tostring(v)=='ggeTexture' then
            self._精灵:置纹理(v)
        else
            self._精灵 = v
        end
    end
end
function GUI按钮类:置状态(v)
    self._状态 = v
    self:_更新纹理()
end
function GUI按钮类:_更新纹理()
    local 纹理,选中纹理
    if self._状态 == 0 then
        纹理,选中纹理 = self._正常纹理,self._选中正常纹理
        elseif self._状态 == 1 then
            纹理,选中纹理 = self._经过纹理,self._选中经过纹理
        elseif self._状态 == 2 then
            纹理,选中纹理 = self._按下纹理,self._选中按下纹理
        elseif self._状态 == -1 then
            纹理,选中纹理 = self._禁止纹理,self._选中禁止纹理
    end
    if self:取类型() ~= '普通按钮' and self._选中 then
        self:_置纹理(选中纹理)
    else
        self:_置纹理(纹理)
    end
end

function GUI按钮类:_消息事件(类型,参数)
    local x,y = unpack(参数)
    if 类型 == '鼠标移动' then
        if self:是否可视() then
            if self:检查像素(x,y) then
                if not 参数.碰撞 and not self._已碰撞 then
                    self._已碰撞 = true
                    self:发送消息('碰撞事件',x,y)
                end
            elseif self._已碰撞 then
                self._已碰撞 = false
                self:发送消息('取消碰撞',x,y)
            end
            if not 参数.碰撞 and not self:是否禁止() and (not self:是否选中() or self:取类型() == '复选按钮') then
                if self._状态 == 0 and self:检查像素(x,y) then
                    self._状态 = 1
                    self:_更新纹理()
                    self:发送消息(类型,x,y)
                elseif self._状态 == 1 and not self:检查像素(x,y) then
                    self._状态 = 0
                    self:_更新纹理()
                end
            end
        end
    elseif 类型 == '左键双击' then
        if self:检查像素(x,y) then
            self:发送消息(类型,x,y)
        end
    elseif 类型 == '左键按下' then
        if self:取类型() ~= '复选按钮' and (self:是否禁止() or self:是否选中()) and self:检查像素(x,y) then
            return true
        elseif self._状态 == 1 then
            self._状态 = 2
            self:_更新纹理()
            self:发送消息(类型,x,y)
            return true
        end
    elseif 类型 == '左键弹起' then
        if self._状态 == 2 then
            self._状态 = 0
            self:_更新纹理()
            if self:检查像素(x,y) then--是否还在按钮上
                if self:取类型() == '复选按钮' then --复选型
                    self:_置选中(not self:是否选中())
                    self._状态 = 1
                elseif self:取类型() == '单选按钮' then --单选型
                    self:置选中(true)
                else-- self:取类型() == '普通按钮' then
                    self:_置纹理(self._经过纹理)
                    self._状态 = 1
                end
                self:发送消息(类型,x,y)
                if self:取根控件() then
                    self:取根控件():发送消息('按钮弹起',self)
                end
            else
                self:发送消息('非碰撞'..类型,x,y)
            end

            return true
        end
    elseif 类型 == '左键按住' then
        if self._状态 == 2 then
            self:发送消息(类型,x,y)
            return true
        end
    elseif 类型 == '窗口移动' then
        self._x,self._y = x+self._px,y+self._py
        self:发送消息(类型,x,y)
    elseif 类型 == '可视事件' then
        if self._状态>0 then
            self._状态 = 0
            self:_更新纹理()
        end
        self:发送消息(类型,x,y)
    elseif 类型 == '右键按下' or 类型 == '右键弹起' then
        if self:检查像素(x,y) then
            self:发送消息(类型,x,y)
            return true
        end
    else
        return self:发送消息(类型,unpack(参数))
    end
    return false
end

return GUI按钮类