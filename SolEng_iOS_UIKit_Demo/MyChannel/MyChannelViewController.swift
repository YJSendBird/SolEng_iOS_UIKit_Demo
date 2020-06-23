//
//  MyChannelViewController.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/20.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import Foundation
import UIKit
import SendBirdUIKit

class MyChannelViewController: SBUChannelViewController, UIGestureRecognizerDelegate {


    
    override init(channelUrl: String) {
        super.init(channelUrl:channelUrl)
        //self.register(fileMessageCell: MyChannelFileMessageCell())
        //self.register(userMessageCell: <#T##SBUBaseMessageCell#>)
        //self.register(adminMessageCell: <#T##SBUBaseMessageCell#>)
        //self.register(customMessageCell: T##SBUBaseMessageCell?)
    }

    override func didReceiveError(_ message: String?) {
        print(message!)
    }

    override func setTapGestureHandler(_ cell: SBUBaseMessageCell, message: SBDBaseMessage) {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        tapGesture.delegate = self
        cell.addGestureRecognizer(tapGesture)
    }
    
    @objc func tap(_ recognizer: UITapGestureRecognizer) {
        print(":::tap::::")
    }

    override func setLongTabGestureHandler(_ cell: SBUBaseMessageCell, message: SBDBaseMessage, indexPath: IndexPath) {
        print("setLongTabGestureHandler")
        let longTapGesture = UILongPressGestureRecognizer(target: self, action: #selector(lognTap(_:)))
        longTapGesture.delegate = self
        cell.addGestureRecognizer(longTapGesture)
    }

    @objc func lognTap(_ recognizer: UITapGestureRecognizer) {
        print(":::lognTap::::")
    }

    override func showChannelSettings() {
        super.showChannelSettings()
        print("showChannelSetting")
    }

}
