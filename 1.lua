ThemeHotChili = class("ThemeHotChili", ThemeNew)


ThemeHotChili.IncludeFiles = {
    "Themes/ThemeHotChili/ThemeHotChiliGlobal",
    "Themes/ThemeHotChili/ThemeHotChiliEnum",
    "Themes/ThemeHotChili/ThemeHotChiliGameLayer",
    "Themes/ThemeHotChili/ThemeHotChiliSpinLayer",
    "Themes/ThemeHotChili/ThemeHotChiliSpinTable",
    "Themes/ThemeHotChili/ThemeHotChiliSpinReel",
    "Themes/ThemeHotChili/ThemeHotChiliSpinElement",
    "Themes/ThemeHotChili/ThemeHotChiliEffectLayer",
    "Themes/ThemeHotChili/ThemeHotChiliLineAnimator",
    "Themes/ThemeHotChili/ThemeHotChiliMusicManager",
    "Themes/ThemeHotChili/ThemeHotChiliJackpotLayer",
    "Themes/ThemeHotChili/ThemeHotChiliLoadingBar",
    "Themes/ThemeHotChili/ThemeHotChiliFlyLayer",
    "Themes/ThemeHotChili/ThemeHotChiliPopOut",
    "Themes/ThemeHotChili/ThemeHotChiliChipValueGenerator",
    "Themes/ThemeHotChili/ThemeHotChiliBGLayer",
    "Themes/ThemeHotChili/ThemeHotChiliFgSelectLayer",
    "Themes/ThemeHotChili/ThemeHotChiliTouchEffectNode",
    "Themes/tools",
}
ThemeHotChili.themeId = 111057

ThemeHotChili.ThemeType = G_THEME_TYPE_LIST.WAYS
ThemeHotChili.BetType = G_THEME_BET_TYPE_LIST.MULTIPLIER
ThemeHotChili.WinPossibilities = 1024

function ThemeHotChili:ctor()
    self.ClassName = ThemeHotChili

    for idx = 1, #self.ClassName.IncludeFiles do
        unrequire(self.ClassName.IncludeFiles[idx])
        require(self.ClassName.IncludeFiles[idx])
    end

    self.themeid = self.ClassName.themeId
    ThemeNew.ctor(self, self.themeid)
    self.themeFreeType = THEME_FG_TYPE.STEP
    tools.new(self)
    return true
end

function ThemeHotChili:initResList()
    self.super.initResList(self)

    self.basicImgResList = {}

    self.fgImgResList = {}
    self.fgImgResList.manual = {}
    self.fgImgResList.auto = {}

    self.bgImgResList = {}
    self.bgImgResList.manual = {}
    self.bgImgResList.auto = {}

    table.insert(self.basicImgResList, self:getPic('image/ng/jpFrame4'))
    table.insert(self.basicImgResList, self:getPic('image/ng/jpFrame5'))
    table.insert(self.basicImgResList, self:getPic('image/ng/jpWinNum'))
    table.insert(self.basicImgResList, self:getPic('image/ng/line_L3'))
    table.insert(self.basicImgResList, self:getPic('image/ng/line_L4'))
    table.insert(self.basicImgResList, self:getPic('image/ng/line_L5'))
    table.insert(self.basicImgResList, self:getPic('image/ng/line_L6'))
    table.insert(self.basicImgResList, self:getPic('image/ng/lockFrame'))
    table.insert(self.basicImgResList, self:getPic('image/ng/logo'))
    table.insert(self.basicImgResList, self:getPic('image/ng/ngBg'))
    table.insert(self.basicImgResList, self:getPic('image/ng/qizi_L1'))
    table.insert(self.basicImgResList, self:getPic('image/ng/qizi_L2'))
    table.insert(self.basicImgResList, self:getPic('image/ng/qizi_R1'))
    table.insert(self.basicImgResList, self:getPic('image/ng/qizi_R2'))
    table.insert(self.basicImgResList, self:getPic('image/ng/reelback3'))
    table.insert(self.basicImgResList, self:getPic('image/ng/reelback4'))
    table.insert(self.basicImgResList, self:getPic('image/ng/reelback5'))
    table.insert(self.basicImgResList, self:getPic('image/ng/reelback6'))
    table.insert(self.basicImgResList, self:getPic('image/ng/symbol'))
    table.insert(self.basicImgResList, self:getPic('image/ng/x2'))
    table.insert(self.basicImgResList, self:getPic('image/ng/x3'))
    table.insert(self.basicImgResList, self:getPic('image/ng/x4'))
    table.insert(self.basicImgResList, self:getPic('image/ng/x5'))

    table.insert(self.basicImgResList, self:getPic('spine/ng/BG_SC'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/BG_shouji'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_2lajiao'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_box_shouji'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_box'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_dajiangyugao'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_H1'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_H2'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_H3'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_H4'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_H5'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_jpsuo'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_L1'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_L2'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_L3'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_L4'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_L5'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_SC'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_tp'))
    table.insert(self.basicImgResList, self:getPic('spine/ng/NG_yfk'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/FG_guochang'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/FG_respin'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_bg'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_JS_title'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_title'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_xuanze_kuangxuan'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_xuanze_kung'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_xuanze_title'))
    table.insert(self.basicImgResList, self:getPic('spine/fg/TC_FG_xuanzebg'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/BG_choujiang'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/BG_guochang'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/BG_huanglajiao'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/TC_JP_chengbei'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/TC_JP_xiaolajiao'))
    table.insert(self.basicImgResList, self:getPic('spine/bg/TC_JP_xiaolajiao2'))

    table.insert(self.fgImgResList.manual, self:getPic('image/fg/fg_board'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/fg_num'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/fgSelectNum'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/greenFrame'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/numFrame'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/rowNum1'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/rowNum2'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/rowNum3'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/rowNum4'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/table1'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/table2'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/table3'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/table4'))
    table.insert(self.fgImgResList.manual, self:getPic('image/fg/youWin'))

    table.insert(self.bgImgResList.manual, self:getPic('image/bg/1'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/2'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/3'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/4'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/5'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/bgSelectBall'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/coin_frame'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/frame2'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/frame3'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/frame4'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/frame5'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/jpwinsx2'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/jpwinsx3'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/jpwinsx4'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/jpwinsx5'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/match'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/midLine'))
    table.insert(self.bgImgResList.manual, self:getPic('image/bg/X'))


    self.loadMusicList = {}
    table.insert(self.loadMusicList, self:getAudio('addfg.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_allopen.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_choose.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_muti.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_ready.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_transition.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bg_win.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bgbgm.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bgsc_collect.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bgsc_multi.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bgsc_win.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bgscmul_win.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bigprize_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('bigprize.mp3'))
    table.insert(self.loadMusicList, self:getAudio('button.mp3'))
    table.insert(self.loadMusicList, self:getAudio('change.mp3'))
    table.insert(self.loadMusicList, self:getAudio('chilliman_in.mp3'))
    table.insert(self.loadMusicList, self:getAudio('chilliman_muti.mp3'))
    table.insert(self.loadMusicList, self:getAudio('dajiangyugao.mp3'))
    table.insert(self.loadMusicList, self:getAudio('extra.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fg_choose.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fg_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fg_select.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fg_transition.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fgbgm.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fgchoose.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fgEnd1.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fgEnd2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('frame_win.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_lock.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_unlock.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_up1.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_up2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_up3.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp_up4.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp1.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp3.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp4.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jp5.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jpMulti2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jpMulti3.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jpMulti4.mp3'))
    table.insert(self.loadMusicList, self:getAudio('jpMulti5.mp3'))
    table.insert(self.loadMusicList, self:getAudio('loading.mp3'))
    table.insert(self.loadMusicList, self:getAudio('ngbgm.mp3'))
    table.insert(self.loadMusicList, self:getAudio('open.mp3'))
    table.insert(self.loadMusicList, self:getAudio('pick.mp3'))
    table.insert(self.loadMusicList, self:getAudio('popup.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelbgsc.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reeldown.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelfast.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsc1.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsc2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsc3.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsc4.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsc5.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelsctr.mp3'))
    table.insert(self.loadMusicList, self:getAudio('reelstop.mp3'))
    table.insert(self.loadMusicList, self:getAudio('respin.mp3'))
    table.insert(self.loadMusicList, self:getAudio('respin2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('triggering.mp3'))
    table.insert(self.loadMusicList, self:getAudio('unlock.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_a_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_a.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_b_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_b.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_c.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_d.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win_end.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win1.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win2.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win3.mp3'))
    table.insert(self.loadMusicList, self:getAudio('win4.mp3'))
    table.insert(self.loadMusicList, self:getAudio('fgch_bgm.mp3'))

end

function ThemeHotChili:initGameLayer()
    local visibleOrigin = cc.Director:getInstance():getVisibleOrigin()
    self.visibleSize = cc.Director:getInstance():getVisibleSize()
    self.centerX = visibleOrigin.x + self.visibleSize.width / 2
    self.centerY = visibleOrigin.y + self.visibleSize.height / 2

    self.gameLayer = ThemeHotChiliGameLayer.new(self)
    self.ClassName.gameLayer = self.gameLayer
    self:addChild(self.gameLayer)
end

function ThemeHotChili:canSpin()
    if THEME_GAME_TYPE.MAIN == self.ctl:getGameType() then
        if self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Idle or self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Show then
            return self.gameLayer.spinLayer:stopShow()
        elseif self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Rolling then
            return false
        end
    elseif THEME_GAME_TYPE.FREE == self.ctl:getGameType() then
        self:dealMusic_TouchBtnSpinMusic()
        if self.gameLayer.freeGameLeaving then
            return false
        end

        if self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Idle or self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Show then
            self.gameLayer.spinLayer:stopShow()
        elseif self.gameLayer.spinLayer.state == self.ClassName.SpinLayerState.Rolling then
            return false
        end
        return false
    end
end

function ThemeHotChili:canStop()
    if ThemeHotChili.gameLayer.extendSpin then
        return false
    end
    if ThemeHotChili.gameLayer.spinLayer.spinTable.shouldExpecting then
        if ThemeHotChili.gameLayer.isExpecting then
            return false
        else
            self.gameLayer.spinLayer.spinTable:stopAllExpect()
            self.gameLayer.spinLayer:stopSpinTable()
            return true
        end
    else
        self.gameLayer.spinLayer:stopSpinTable()
        return true
    end
end

function ThemeHotChili:adjustTheme(data)
    ThemeHotChili.reconnectFlag = false
    local startPos = data.startPos
    startPos = string.gsub(startPos, '%[', '{')
    startPos = string.gsub(startPos, ']', '}')
    loadstring("ThemeHotChili.QuickStartReelOrders = "..startPos)()

    if self.gameLayer.spinLayer.spinTable then
        self.gameLayer.spinLayer.spinTable:checkCellsInit()
    end

    if data.enter_theme_info and data.enter_theme_info.bow_state then
        TimerCallFunc.addScheduleUntilFunc(function()
            if self.gameLayer and self.gameLayer.spinLayer and self.gameLayer.spinLayer and self.gameLayer.spinLayer.collectPot then
                self.gameLayer.spinLayer.collectPot:setAnimation(0, "idle"..data.enter_theme_info.bow_state, true)
                if data.enter_theme_info.bow_state == 5 then
                    self.gameLayer.spinLayer.ng_Chili:setVisible(true)
                    self.gameLayer.spinLayer.ng_Chili:setAnimation(0, "daiji", true)
                end
                return true
            else
                return false
            end
        end, 0.01, self, self)
    end
    if data.enter_theme_info and data.enter_theme_info.reconnection_data and data.enter_theme_info.reconnection_data.free_spins and data.enter_theme_info.reconnection_data.free_spins[1] then
        ThemeHotChili.reconnectFlag = true
        TimerCallFunc.addScheduleUntilFunc(function()
            if self.gameLayer and self.gameLayer.spinLayer and self.gameLayer.spinLayer.spinTable then
                self.gameLayer.judgeJpLockMusic = true
                ThemeHotChili.ctl.betControl:changeToBet(data.enter_theme_info.reconnection_data.fg_bet)
                ThemeHotChili.ctl:disableSpinAndOtherBtns()
                ThemeHotChili.ctl.footer:updateTotalWin(data.enter_theme_info.reconnection_data.all_total_win)
                self.gameLayer:fgSelectReconnect(data.enter_theme_info.reconnection_data.free_spins)

                ThemeHotChili.ctl:setCacheRet({"randomDataToEscapeNG"})
                return true
            else
                return false
            end
        end, 0.01, self, self)
    elseif data.enter_theme_info and data.enter_theme_info.reconnection_data and data.enter_theme_info.reconnection_data.fg_total_round and data.enter_theme_info.reconnection_data.fg_total_round > 0 then
        ThemeHotChili.reconnectFlag = true
        TimerCallFunc.addScheduleUntilFunc(function()
            if self.gameLayer and self.gameLayer.spinLayer and self.gameLayer.spinLayer.spinTable then
                self.gameLayer.judgeJpLockMusic = true
                ThemeHotChili.ctl.betControl:changeToBet(data.enter_theme_info.reconnection_data.fg_bet)
                ThemeHotChili.ctl:disableSpinAndOtherBtns()
                ThemeHotChili.ctl.footer:updateTotalWin(data.enter_theme_info.reconnection_data.all_total_win)
                self.gameLayer:freeGameReconnect(data.enter_theme_info.reconnection_data)

                ThemeHotChili.ctl:setCacheRet({"randomDataToEscapeNG"})
                return true
            else
                return false
            end
        end, 0.01, self, self)
    else
        TimerCallFunc.addCallFunc(function()
            AudioEngine.playEffect(ThemeHotChili.AudioPath..'open.mp3', false)
        end, 0.5, nil, self)
    end
end
function ThemeHotChili:checkTip(flag)
    if ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[5] then
        if self.gameLayer and self.gameLayer.jackpotLayer then
            self.gameLayer.jackpotLayer:showUnlock3(flag)
            self.gameLayer.jackpotLayer:showUnlock2(flag)
            self.gameLayer.jackpotLayer:showUnlock1(flag)
        end
    elseif ThemeHotChili.ctl:getCurBet() < GLOBAL_LEVEL_BET.five_bet_list_1[5] and ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[4] then
        if self.gameLayer and self.gameLayer.jackpotLayer then
            self.gameLayer.jackpotLayer:showLock1(flag)
            self.gameLayer.jackpotLayer:showUnlock3(flag)
            self.gameLayer.jackpotLayer:showUnlock2(flag)
        end
    elseif ThemeHotChili.ctl:getCurBet() < GLOBAL_LEVEL_BET.five_bet_list_1[4] and ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[3] then
        if self.gameLayer and self.gameLayer.jackpotLayer then
            self.gameLayer.jackpotLayer:showLock1(flag)
            self.gameLayer.jackpotLayer:showLock2(flag)
            self.gameLayer.jackpotLayer:showUnlock3(flag)
        end
    else
        if self.gameLayer and self.gameLayer.jackpotLayer then
            self.gameLayer.jackpotLayer:showLock1(flag)
            self.gameLayer.jackpotLayer:showLock2(flag)
            self.gameLayer.jackpotLayer:showLock3(flag)
        end
    end
end

function ThemeHotChili:onShow()
    self:checkTip(true)
    ThemeHotChili.ctl.footer:setLabelDescription('Clear')
    ThemeHotChili.gameLayer.jackpotLayer:sendThemeJpCmd()
    if (not ThemeHotChili.reconnectFlag) then
        self.gameLayer:checkGameFever()
        tools:funcDelay(function()
            ThemeHotChili.openEffectId = tools:playEffect("entergame", false)
        end, 0.5)
    end
end
function ThemeHotChili:dealAboutBetChange()
    if self.gameLayer and self.gameLayer.jackpotLayer then
        self.gameLayer.jackpotLayer:reset()
    end

    if ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[5] then
        self.mathType = 3
    elseif ThemeHotChili.ctl:getCurBet() < GLOBAL_LEVEL_BET.five_bet_list_1[5] and ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[4] then
        self.mathType = 2
    elseif ThemeHotChili.ctl:getCurBet() < GLOBAL_LEVEL_BET.five_bet_list_1[4] and ThemeHotChili.ctl:getCurBet() >= GLOBAL_LEVEL_BET.five_bet_list_1[3] then
        self.mathType = 1
    else
        self.mathType = 0
    end

    if self.gameLayer and self.gameLayer.judgeJpLockMusic then
        self:checkTip(true)
        self.gameLayer.judgeJpLockMusic = nil
    else
        self:checkTip()
    end
end

function ThemeHotChili:refreshLanguage()
    if self.gameLayer and self.gameLayer.fgCountBoard and self.gameLayer.spinFree then
        self.gameLayer.spinFree:setTexture(bole.translateImage("free_game", ThemeHotChili.themeId))
    end
    if self.gameLayer and self.gameLayer.fgSelectLayer then
        self.gameLayer.fgSelectLayer:refreshLanguage()
    end
    if self.gameLayer and self.gameLayer.jackpotLayer then
        self.gameLayer.jackpotLayer:refreshLanguage()
    end
    if self.gameLayer then
        self.gameLayer:changeLang()
    end
end

function ThemeHotChili:stopWinRollByTouchBet()
    if self.gameLayer.spinLayer.effectLayer.state == ThemeHotChili.WinShowState.SymbolLineAnimation then
        self.gameLayer.spinLayer.effectLayer:stopSymbolLineAnimation()
        self.gameLayer.spinLayer.effectLayer:stopPerformUnit()
        return false
    else
        return true
    end
end
