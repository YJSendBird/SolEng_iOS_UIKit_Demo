//
//  MyChannelListViewController.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/15.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import Foundation
import SendBirdUIKit
import UIKit

class MyChannelListViewController: SBUChannelListViewController {

    override init(channelListQuery: SBDGroupChannelListQuery? = nil) {
        print("USER_CUSTOM:::channelListQuery")
        super.init(channelListQuery: channelListQuery)
        self.register(channelCell: MyChannelListCell())
    }
    
    override func didReceiveError(_ message: String?) {
        print(message as Any);
    }
    
    override func showChannel(channelUrl: String) {
        //channel
        //super.showChannel(channelUrl: channelUrl)
        //custom channel
        let vc = MyChannelViewController(channelUrl: channelUrl)
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
        print("USER_CUSTOM:::showChannel:::", channelUrl);
    }
    
    override func showCreateChannel() {
        super.showCreateChannel()
        print("USER_CUSTOM:::showCreateChannel:::");
    }
    
    // MARK: viewLifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("USER_CUSTOM:::viewWillAppear:::");
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("USER_CUSTOM:::viewWillDisappear:::");
    }
    
    // MARK: SBDConnectionDelegate
    override func didSucceedReconnection() {
        super.didSucceedReconnection()
        print("USER_CUSTOM:::didSucceedReconnection:::");
    }
    
    // MARK: SBDChannelDelegate
    override func channelWasChanged(_ sender: SBDBaseChannel) {
        super.channelWasChanged(sender)
        print("USER_CUSTOM:::channelWasChanged:::");
    }

}
