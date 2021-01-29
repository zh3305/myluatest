
local 回调 = require("HPClient类")()
--回调:置收发BUF( require("ggebuf")(1024*1024*10), require("ggebuf")(1024*1024*10))
回调:置收发BUF(封包加密(1024*1024), 封包加密(1024*1024))

function 回调:初始化()
  self.连接账号 = ""
  self.连接密码 = ""
  self.连接结果 = false
end

function 回调:更新(dt)
end

function 回调:重新连接(ip, 端口, 账号, 密码)
  停止连接 = true

  if self:连接(self.连接ip, self.连接端口) then
    连接状态 = true
    停止连接 = false
    重连状态 = true
  else
    连接状态 = false
    停止连接 = false
  end
end

function 回调:连接处理(ip, 端口)
  self.连接ip = "127.0.0.1"
   --self.连接ip = "127.0.0.1"
   self.连接端口 = 8081

  if self.连接结果 then
    -- Nothing
  end
  self.连接结果 = self:连接(self.连接ip, self.连接端口)-- 个跟编译没关系 显示黄色说明没保存 不保存就不生效...X。怎么改读取配置
  self.临时时间 = os.time()
  self.发送时间 = self.临时时间 .. 取随机数(10, 99)
  self.发送信息 = {
    空了="~*?77????77???*",
    皮皮="???",
    版本=版本
  }
  self:发送(17038454, table.tostring(self.发送信息))
  if self.连接结果 then
    -- Nothing
  else
    if 信息提示~=nil then
       信息提示:加入提示("#g/连接服务器失败，请检查网络或服务器是否在维护中")
    end
  end
end

function 回调:发送数据2(序号,内容,变量)

  if 变量~=nil then
    内容=table.tostring(内容)
  end
  self:发送(序号,table.tostring(内容))

end

function 回调:发送数据(a,b,c,f)
  --print(a..b..c..f)

 if 全局时间==nil then

   self.临时时间=os.time()
  else
    self.临时时间=全局时间

   end
 self.发送时间=self.临时时间..取随机数(10,99)
 self.发送信息={a=abs(a),b=abs(b),c=abs(c),f=f,d=abs(self.发送时间),e=__gge.crc32(a..b..c..f..self.发送时间),序号=b,数字id=窗口标题.id,文本=f,参数=a}

 self:发送(c,table.tostring(self.发送信息))
 -- self:发送(0,table.tostring(self.发送信息))
end


function 回调:取状态(连接)
  return self:取状态()
end

-- function 回调:连接断开(enOperation,iErrorCode)
--     ffi函数.信息框("服务器连接断开，请检查网络或服务器是否在维护中.....")
--     引擎.关闭()
-- end

function 回调:断开连接(连接)
  禁止重连 = true
  self:断开()
end

function 回调:数据到达(序号, 内容, 时间)
  if 序号 ~= 10 then
    print(序号, 内容, 时间)
  end

  if 序号 == 0 then
    if 重连状态 == false then
      self.处理信息 = table.loadstring(内容)
      连接参数 = string.sub(self.处理信息.c, 1, 1) + 0

      if 调试模式 then
        -- Nothing
      end

      self:发送数据(认证号, 1, 1, self.连接账号 .. "@-@" .. self.连接密码 .. "@-@" .. 取硬盘特征字("1"))
    else
      self.处理信息 = table.loadstring(内容)
      连接参数 = string.sub(self.处理信息.c, 1, 1) + 0

      self:发送数据(窗口标题.id + 0, 1, 3, 窗口标题.id)
    end
  elseif 序号 == 2 or 序号 == 3 then
    引擎.关闭()
  elseif 序号 == 99995 then
    os.exit()
  elseif 序号 == 99996 then
    self:断开连接()
  elseif 序号 == 4 then
    登录处理类:刷新创建资源()
  elseif 序号 == 5 then
    登录处理类:销毁()

    检测2 = 引擎.取游戏时间()

    引擎.置宽高(800, 600)

    引擎.宽度2 = 400
    引擎.高度2 = 300
    引擎.宽度 = 800
    引擎.高度 = 600
    窗口大小 = {
      x = 160,
      y = 120
    }

    游戏进程 = 2

    主角:创建角色(内容)

    主界面 = 主界面类.创建()

    主界面:刷新角色头像()
  elseif 序号 == 6 then
    登录处理类:创建成功()
  elseif 序号 == 7 then

    if string.find(内容, "local")~= nil then
      self.临时聊天 = table.loadstring(内容)
       信息提示:加入提示(self.临时聊天)
    else
       信息提示:加入提示(内容)
    end

  elseif 序号 == 10086 then

    self.更新内容 =table.loadstring(内容)

    登录处理类:刷新界面(self.更新内容)

  elseif 序号 == 1008601 then

    self.刷新数据 =table.loadstring(内容)
    table.print(self.刷新数据)
    登录处理类:刷新数据(self.刷新数据)
  elseif 序号 == 1008602 then

    self.角色数据 =table.loadstring(内容)
    登录处理类:角色数据(self.角色数据)
  elseif 序号 == 1008603 then
    self.信息数据 =table.loadstring(内容)
    登录处理类:文本数据(self.信息数据)

  elseif 序号 == 1008604 then

    self.信息数据 =table.loadstring(内容)
    登录处理类:造型数据(self.信息数据)

  elseif 序号 == 11 then
    self.临时聊天 = table.loadstring(内容)
    if 主界面~=nil then
        主界面.时辰序列 = self.临时聊天.文本 + 0
    end
  elseif 序号 == 12 then
    消息开关 = false
  elseif 序号 == 13 then
    消息开关 = true
  elseif 序号 == 14 then
    self.临时聊天 = table.loadstring(内容)
    if 主界面~=nil then
        主界面.界面数据[30]:刷新(self.临时聊天.文本)
    end

  end

  序号, 内容, 时间 = nil
end

function 回调:显示(x, y)
end

return 回调
