//
//  MyChannelListViewController.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/15.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import Foundation
import SendBirdUIKit

class MyChannelListViewController: SBUChannelListViewController {

    override func didReceiveError(_ message: String?) {
        print(message as Any);
    }
    
    override func showChannel(channelUrl: String) {
        
    }
    
    override func showCreateChannel() {
        
    }
    
}
