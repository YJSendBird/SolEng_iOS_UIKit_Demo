//
//  ViewController.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/09.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import UIKit
import SendBirdUIKit


class ViewController: UIViewController {

    let demoChannel = "sendbird_group_channel_228140186_0687d9d7cd174f96bed4ca91fffab77a2f7194b6"

    let baseIconBack = SBUIconSet.iconBack
    let baseIconCreate = SBUIconSet.iconCreate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setbaseTheme(baseColor: UIColor,fontSize: CGFloat, changeIcon: Bool = false, isKorean: Bool = false) {

//SBUColorSet
        let primaryColor = baseColor
        SBUColorSet.primary100 = primaryColor.withAlphaComponent(20)
        SBUColorSet.primary200 = primaryColor.withAlphaComponent(40)
        SBUColorSet.primary300 = primaryColor.withAlphaComponent(60)
        SBUColorSet.primary400 = primaryColor.withAlphaComponent(80)
        SBUColorSet.primary500 = primaryColor

//        SBUColorSet.secondary100 =
//        SBUColorSet.secondary200 =
//        SBUColorSet.secondary300 =
//        SBUColorSet.secondary400 =
//        SBUColorSet.secondary500 =

//        SBUColorSet.background100 =
//        SBUColorSet.background200 =
//        SBUColorSet.background300 =
//        SBUColorSet.background400 =
//        SBUColorSet.background500 =
//        SBUColorSet.background600 =
//        SBUColorSet.background700 =

//        SBUColorSet.overlay01 =
//        SBUColorSet.overlay02 =
          SBUColorSet.onlight01 = primaryColor
//        SBUColorSet.onlight02 =
//        SBUColorSet.onlight03 =
//        SBUColorSet.onlight04 =
//        SBUColorSet.ondark01 =
//        SBUColorSet.ondark02 =
//        SBUColorSet.ondark03 =
//        SBUColorSet.ondark04 =
//        SBUColorSet.error =

//SBUFontSet
        let baseFontSize = fontSize
        SBUFontSet.h1 = UIFont.systemFont(ofSize: baseFontSize)
        SBUFontSet.h2 = UIFont.boldSystemFont(ofSize: baseFontSize - 2.0)
        SBUFontSet.body1 = UIFont.systemFont(ofSize: baseFontSize - 4.0)
        SBUFontSet.body2 = UIFont.systemFont(ofSize: baseFontSize - 16.0)
        SBUFontSet.button1 = UIFont.systemFont(ofSize: baseFontSize  + 2.0)
        SBUFontSet.button2 = UIFont.systemFont(ofSize: baseFontSize - 2.0)
        SBUFontSet.button3 = UIFont.systemFont(ofSize: baseFontSize - 4.0)
        SBUFontSet.caption1 = UIFont.boldSystemFont(ofSize: baseFontSize - 6.0)
        SBUFontSet.caption2 = UIFont.systemFont(ofSize: baseFontSize - 6.0)
        SBUFontSet.caption3 = UIFont.systemFont(ofSize: baseFontSize - 7.0)
        SBUFontSet.subtitle1 = UIFont.systemFont(ofSize: baseFontSize - 2.0)
        SBUFontSet.subtitle2 = UIFont.systemFont(ofSize: baseFontSize - 6.0)

//StringSet
        if isKorean {
            SBUStringSet.ChannelList_Header_Title = "채널 목록"
            SBUStringSet.ChannelSettings_Header_Title = "채널 정보"
            SBUStringSet.Edit = "편집"
            SBUStringSet.ChannelSettings_Notifications = "알림"
            SBUStringSet.ChannelSettings_Leave = "나가기"
            
        } else {
            SBUStringSet.ChannelList_Header_Title = "Channel List"
            SBUStringSet.ChannelSettings_Header_Title = "Channel information"
            SBUStringSet.Edit = "Edit"
            SBUStringSet.ChannelSettings_Notifications = "Notifications"
            SBUStringSet.ChannelSettings_Leave = "Leave channel"
        }

//IconSet
        if changeIcon {
            SBUIconSet.iconBack = UIImage(named: "close_white")!
            SBUIconSet.iconCreate = UIImage(named: "create_open_channel")!
        } else {
            SBUIconSet.iconBack = baseIconBack
            SBUIconSet.iconCreate = baseIconCreate
        }

        let channelListTheme = SBUChannelListTheme()
        channelListTheme.leftBarButtonTintColor = SBUColorSet.primary300
        channelListTheme.backgroundColor = SBUColorSet.primary300
        channelListTheme.rightBarButtonTintColor = SBUColorSet.primary300
        channelListTheme.navigationBarTintColor = SBUColorSet.background100
        channelListTheme.navigationBarShadowColor = SBUColorSet.onlight04
        channelListTheme.backgroundColor = SBUColorSet.background100
        channelListTheme.notificationOnBackgroundColor = SBUColorSet.primary300
        channelListTheme.notificationOnTintColor = SBUColorSet.background100
        channelListTheme.notificationOffBackgroundColor = SBUColorSet.background200
        channelListTheme.notificationOffTintColor = SBUColorSet.onlight01
        channelListTheme.leaveBackgroundColor = SBUColorSet.error
        channelListTheme.leaveTintColor = SBUColorSet.background100
        channelListTheme.alertBackgroundColor = SBUColorSet.background100

        let channelCellTheme = SBUChannelCellTheme()
        channelCellTheme.backgroundColor = SBUColorSet.background100
        channelCellTheme.titleFont = SBUFontSet.subtitle1
        channelCellTheme.titleTextColor = SBUColorSet.onlight01
        channelCellTheme.memberCountFont = SBUFontSet.caption1
        channelCellTheme.memberCountTextColor = SBUColorSet.onlight02
        channelCellTheme.lastUpdatedTimeFont = SBUFontSet.caption2
        channelCellTheme.lastUpdatedTimeTextColor = SBUColorSet.onlight02
        channelCellTheme.messageFont = SBUFontSet.body1
        channelCellTheme.messageTextColor = SBUColorSet.onlight03
        channelCellTheme.unreadCountBackgroundColor = SBUColorSet.primary300
        channelCellTheme.unreadCountTextColor = SBUColorSet.ondark01
        channelCellTheme.unreadCountFont = SBUFontSet.caption1
        channelCellTheme.separatorLineColor = SBUColorSet.onlight04

        let channelTheme = SBUChannelTheme()

        let messageInputTheme = SBUMessageInputTheme()

        let messageCellTheme =  SBUMessageCellTheme()

        let userListTheme = SBUUserListTheme()

        let userCellTheme = SBUUserCellTheme()

        let channelSettingsTheme = SBUChannelSettingsTheme()

        // set component theme
        let componentTheme = SBUComponentTheme(
            emptyViewBackgroundColor: SBUColorSet.background100,
            menuTitleFont: SBUFontSet.subtitle1)

        // set new theme
        let newTheme = SBUTheme(
            channelListTheme: channelListTheme,
            channelCellTheme: channelCellTheme,
            channelTheme: channelTheme,
            messageInputTheme: messageInputTheme,
            messageCellTheme: messageCellTheme,
            userListTheme: userListTheme,
            userCellTheme: userCellTheme,
            channelSettingsTheme: channelSettingsTheme,
            componentTheme: componentTheme)

        SBUTheme.set(theme: newTheme)

    }
    
    @IBAction func SBUChannelList(_ sender: UIButton) {
        setbaseTheme(baseColor: UIColor.orange, fontSize: 18)
        let vc = SBUChannelListViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func SBUChannelView(_ sender: UIButton) {
        /*
        let vc = SBUChannelViewController(channelUrl: demoChannel)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
        */
        setbaseTheme(baseColor: UIColor.red, fontSize: 20)
        let vc = SBUChannelListViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func SBUChannelSettingView(_ sender: UIButton) {
        /*
        let vc = SBUChannelSettingsViewController(channelUrl: demoChannel)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
         */
        setbaseTheme(baseColor: UIColor.blue, fontSize: 22, changeIcon: true, isKorean: true)
        let vc = SBUChannelListViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
        
    }
    
    @IBAction func SBUCreateChannelView(_ sender: UIButton) {
        SBUTheme.set(theme: .dark)
        let vc = SBUCreateChannelViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func SBUMemberListView(_ sender: UIButton) {
        SBUTheme.set(theme: .light)
        let vc = SBUMemberListViewController(channelUrl: demoChannel)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func SBUInviteUserView(_ sender: UIButton) {
        let vc = SBUInviteUserViewController(channelUrl: demoChannel)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    
    @IBAction func MyChannelListView(_ sender: UIButton) {
        let vc = MyChannelListViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func MyChannelView(_ sender: UIButton) {
        let vc = MyChannelViewController(channelUrl: demoChannel)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
//
//
//    func setChannelListCustomCell(listview: MyChannelListViewController) {
//        //Custom Channel List Cell
//        listview.register(channelCell: MyChannelListCell())
//    }
//
//    func setChannelListStringSet() {
//        //channellist header title
//        SBUStringSet.ChannelList_Header_Title = "channel title changed.."
//        //??
//        //SBUStringSet.ChannelList_Last_File_Message = "last file message changed"
//    }
//
//    func setChannelListIconSet(listview: MyChannelListViewController) {
//        listview.leftBarButton?.image = SBUIconSet.iconActionLeave
//        /*
//        SBUIconSet.iconActionNotificationOffLight = UIImage(named: "logoSendbird")
//        SBUIconSet.iconActionNotificationOnLight = UIImage(named: "logoSendbird")
//        SBUIconSet.iconCreate = UIImage(named: "logoSendbird")
//        SBUIconSet.iconMut = UIImage(named: "logoSendbird")
//         */
//    }
//
//    func setChannelListTheme() {
//
//        // - case 1
//        let channelListTheme = SBUChannelListTheme(
//            leftBarButtonTintColor: SBUColorSet.primary500
//        )
//
//        let channelCellTheme = SBUChannelCellTheme(
//            backgroundColor: SBUColorSet.background100
//        )
//
//        SBUTheme.setChannelList(channelListTheme: channelListTheme,
//                    channelCellTheme: channelCellTheme)
//
//        // - case 2
//        // channel list theme
//        SBUTheme.channelListTheme.backgroundColor = SBUColorSet.background100
//        SBUTheme.channelListTheme.statusBarStyle = .default
//        SBUTheme.channelListTheme.leftBarButtonTintColor = SBUColorSet.primary300
//
//        /*
//        rightBarButtonTintColor = SBUColorSet.primary300
//        navigationBarTintColor = SBUColorSet.background100
//        navigationBarShadowColor = SBUColorSet.onlight04
//        backgroundColor = SBUColorSet.background100
//        notificationOnBackgroundColor = SBUColorSet.primary300
//        notificationOnTintColor = SBUColorSet.background100
//        notificationOffBackgroundColor = SBUColorSet.background200
//        notificationOffTintColor = SBUColorSet.onlight01
//        leaveBackgroundColor = SBUColorSet.error
//        leaveTintColor = SBUColorSet.background100
//        alertBackgroundColor = SBUColorSet.background100
//        */
//
//        // channel cell theme
//        SBUTheme.channelCellTheme.backgroundColor = SBUColorSet.background100
//
//    }
//
//
//    func setChannelCustomCell() {
//
//    }
//    func setChannelStringSet() {
//        //StringSet
//        SBUStringSet.Channel_Name_Default = "channnel name"
//        SBUStringSet.Channel_Name_No_Members = "channnel no members"
//        SBUStringSet.Channel_Header_LastSeen = "channnel header lastseen"
//        //SBUStringSet.Channel_Header_Typing([SBDMember])
//        SBUStringSet.Channel_Success_Download_file = "success download file"
//        SBUStringSet.Channel_New_Message_File = "nes file message"
//        let newMessageCount = SBUStringSet.Channel_New_Message(10)
//        print(newMessageCount)
//    }
//    func setChannelIconSet(listview:MyChannelViewController) {
//
//    }
//    func setChannelTheme(){
//
//    }
    
}
