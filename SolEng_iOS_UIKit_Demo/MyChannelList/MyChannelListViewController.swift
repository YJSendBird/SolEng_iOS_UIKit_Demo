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

    override init() {
        super.init()
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
    }
    
    override func showCreateChannel() {
        super.showCreateChannel()
    }
    
    // MARK: viewLifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: SBDConnectionDelegate
    override func didSucceedReconnection() {
        super.didSucceedReconnection()
    }
    
    // MARK: SBDChannelDelegate
    override func channelWasChanged(_ sender: SBDBaseChannel) {
        super.channelWasChanged(sender)
    }

}
