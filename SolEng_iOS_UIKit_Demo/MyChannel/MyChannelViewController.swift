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
        print(":::showChannelSetting:::")
    }

    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectResource type: MediaResourceType) {
        super.messageInputView(messageInputView, didSelectResource: type)
        print(":::messageInputView:::didSelectResource", type)
    }
    
    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectEdit text: String) {
        super.messageInputView(messageInputView, didSelectEdit: text)
        print(":::messageInputView:::didSelectEdit", text)
    }
    
    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectSend text: String) {
        super.messageInputView(messageInputView, didSelectSend: text)
        print(":::messageInputView:::didSelectSend", text)
    }
    
    override func messageInputViewDidStartTyping() {
        super.messageInputViewDidStartTyping()
        print(":::messageInputViewDidStartTyping:::")
    }
    
    override func messageInputViewDidEndTyping() {
        super.messageInputViewDidEndTyping()
        print(":::messageInputViewDidEndTyping:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, didReceive message: SBDBaseMessage) {
        super.channel(sender, didReceive: message)
        print(":::didReceive:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, didUpdate message: SBDBaseMessage) {
        super.channel(sender, didUpdate: message)
        print(":::didUpdate:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, messageWasDeleted messageId: Int64) {
        super.channel(sender, messageWasDeleted: messageId)
        print(":::messageWasDeleted:::")
    }

    override func channelDidUpdateReadReceipt(_ sender: SBDGroupChannel) {
        super.channelDidUpdateReadReceipt(sender)
    }
    
    override func channelDidUpdateDeliveryReceipt(_ sender: SBDGroupChannel) {
        super.channelDidUpdateDeliveryReceipt(sender)
    }
    
    override func channelDidUpdateTypingStatus(_ sender: SBDGroupChannel) {
         super.channelDidUpdateTypingStatus(sender)
    }

    override func channelWasChanged(_ sender: SBDBaseChannel) {
        super.channelWasChanged(sender)
    }

    //
    /*
    override func sendUserMessage(messageParams: SBDUserMessageParams) {
        
    }
    
    override func sendFileMessage(messageParams: SBDFileMessageParams) {
        
    }
    */
}
