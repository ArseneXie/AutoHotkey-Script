﻿	Menu, LangRenMenu, Add, 占座#18, 占座#18
	Menu, LangRenMenu, Add, 快速第一个投票, 快速第一个投票
	;Menu, LangRenMenu, Add, 全场标记村民, 全场标记村民
	Menu, LangRenMenu, Add			; 添加分隔线
	Menu, LangRenMenu, Add, 1：退水吃毒/对刚到死的先知y熊n, 问先知熊
	Menu, LangRenMenu, Add, 2：找狼不积极，身份比较低的是, 找狼不积极
	Menu, LangRenMenu, Add, 3：抓紧时间问归，明天再分析, 问归
	Menu, LangRenMenu, Add, 4：踩错人很正常，别生气, 踩错声明
	Menu, LangRenMenu, Add, 5：第一个发言，没时间思考和看票型, 第一个发言没时间
	*/
	return
	
	F1::Menu, LangRenMenu, Show
	
	快速第一个投票:
		WinGet, active_id, ID, A
		CoordMode, Mouse, Relative
		MouseGetPos, VarX, VarY
		Loop {
			SetControlDelay -1
			ControlClick, X%VarX% Y%VarY%, ahk_id %active_id%,,,, NA
			Sleep, 300
		}
		return

	;后台抢座位
	pullseat(xposi, yposi) {
		WinGet, active_id, ID, A
		Loop {
			SetControlDelay -1
			ControlClick, X650 Y416, ahk_id %active_id%,,,, NA	;点同意开车
			Sleep, 50
			ControlClick, X%xposi% Y%yposi%, ahk_id %active_id%,,,, NA	;抢18号位
			Sleep, 50
			CoordMode Pixel  ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
			ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\..\icon\langren_avatar.bmp
			if ErrorLevel = 0 
			{
				MsgBox 已经坐下了！
				return
			}
		}
	}
		
	占座#18:
		pullseat(82, 607)		;18号位
		return
	占座#9:
		pullseat(1283, 124)		;9号位
		return
	占座#10:
		pullseat(1283, 609)		;10号位
		return
	
	问先知熊:
		SendInput, 退水吃毒/对刚到死的 先知y 熊n
		return
	找狼不积极:
		SendInput, 退水吃毒/对刚到死的 先知y 熊n
		return
	问归:
		SendInput, 退水吃毒/对刚到死的 先知y 熊n
		return
	踩错声明:
		SendInput, 退水吃毒/对刚到死的 先知y 熊n
		return
	第一个发言没时间:
		SendInput, 退水吃毒/对刚到死的 先知y 熊n
		return
	