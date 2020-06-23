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

    func setbaseTheme(baseColor: UIColor, fontSize: CGFloat, changeIcon: Bool = false, isKorean: Bool = false) {

//SBUColorSet
        let primaryColor = baseColor
        SBUColorSet.primary100 = primaryColor.withAlphaComponent(20)
        SBUColorSet.primary200 = primaryColor.withAlphaComponent(40)
        SBUColorSet.primary300 = primaryColor.withAlphaComponent(60)
        SBUColorSet.primary400 = primaryColor.withAlphaComponent(80)
        SBUColorSet.primary500 = primaryColor

//        SBUColorSet.secondary100: UIColor
//        SBUColorSet.secondary200: UIColor
//        SBUColorSet.secondary300: UIColor
//        SBUColorSet.secondary400: UIColor
//        SBUColorSet.secondary500: UIColor
//        SBUColorSet.background100: UIColor
//        SBUColorSet.background200: UIColor
//        SBUColorSet.background300: UIColor
//        SBUColorSet.background400: UIColor
//        SBUColorSet.background500: UIColor
//        SBUColorSet.background600: UIColor
//        SBUColorSet.background700: UIColor
//        SBUColorSet.overlay01: UIColor
//        SBUColorSet.overlay02: UIColor
//        SBUColorSet.onlight01: UIColor
//        SBUColorSet.onlight02: UIColor
//        SBUColorSet.onlight03: UIColor
//        SBUColorSet.onlight04: UIColor
//        SBUColorSet.ondark01: UIColor
//        SBUColorSet.ondark02: UIColor
//        SBUColorSet.ondark03: UIColor
//        SBUColorSet.ondark04: UIColor
//        SBUColorSet.error: UIColor


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
        SBUFontSet.subtitle2 = UIFont.systemFont(ofSize: baseFontSize - 16.0)

//StringSet
        if isKorean {
            SBUStringSet.ChannelList_Header_Title = "채널 목록"
        } else {
            SBUStringSet.ChannelList_Header_Title = "Channel List"
        }

//IconSet
        if changeIcon {
            SBUIconSet.iconBack = UIImage(named: "close_white")!
            SBUIconSet.iconCreate = UIImage(named: "create_open_channel")!
        } else {
            SBUIconSet.iconBack = baseIconBack
            SBUIconSet.iconCreate = baseIconCreate
        }

        
//
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
        let vc = SBUCreateChannelViewController()
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
    @IBAction func SBUMemberListView(_ sender: UIButton) {
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
