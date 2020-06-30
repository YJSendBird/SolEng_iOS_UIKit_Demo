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
    
    override init(channelUrl: String, messageListParams: SBDMessageListParams? = nil) {
        print("USER_CUSTOM:::messageListParams")
        super.init(channelUrl: channelUrl, messageListParams: messageListParams)
        //self.register(fileMessageCell: MyChannelFileMessageCell())
        //self.register(userMessageCell: <#T##SBUBaseMessageCell#>)
        self.register(adminMessageCell: MyChannelAdminMessageCell())
        //self.register(customMessageCell: T##SBUBaseMessageCell?)
    }

    override func didReceiveError(_ message: String?) {
        print(message!)
    }

    override func setTapGestureHandler(_ cell: SBUBaseMessageCell, message: SBDBaseMessage) {
        print("USER_CUSTOM:::setTapGestureHandler")
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        tapGesture.delegate = self
        cell.addGestureRecognizer(tapGesture)
    }
    
    @objc func tap(_ recognizer: UITapGestureRecognizer) {
        print("USER_CUSTOM:::tap::::")
    }

    override func setLongTabGestureHandler(_ cell: SBUBaseMessageCell, message: SBDBaseMessage, indexPath: IndexPath) {
        print("USER_CUSTOM:::setLongTabGestureHandler")
        let longTapGesture = UILongPressGestureRecognizer(target: self, action: #selector(lognTap(_:)))
        longTapGesture.delegate = self
        cell.addGestureRecognizer(longTapGesture)
    }

    @objc func lognTap(_ recognizer: UITapGestureRecognizer) {
        print("USER_CUSTOM:::lognTap::::")
    }

    override func showChannelSettings() {
        super.showChannelSettings()
        print("USER_CUSTOM:::showChannelSetting:::")
    }

    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectResource type: MediaResourceType) {
        super.messageInputView(messageInputView, didSelectResource: type)
        print("USER_CUSTOM:::messageInputView:::didSelectResource", type)
    }
    
    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectEdit text: String) {
        super.messageInputView(messageInputView, didSelectEdit: text)
        print("USER_CUSTOM:::messageInputView:::didSelectEdit", text)
    }
    
    override func messageInputView(_ messageInputView: SBUMessageInputView, didSelectSend text: String) {
        super.messageInputView(messageInputView, didSelectSend: text)
        print("USER_CUSTOM:::messageInputView:::didSelectSend", text)
    }
    
    override func messageInputViewDidStartTyping() {
        super.messageInputViewDidStartTyping()
        print("USER_CUSTOM:::messageInputViewDidStartTyping:::")
    }
    
    override func messageInputViewDidEndTyping() {
        super.messageInputViewDidEndTyping()
        print("USER_CUSTOM:::messageInputViewDidEndTyping:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, didReceive message: SBDBaseMessage) {
        super.channel(sender, didReceive: message)
        print("USER_CUSTOM:::didReceive:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, didUpdate message: SBDBaseMessage) {
        super.channel(sender, didUpdate: message)
        print("USER_CUSTOM:::didUpdate:::")
    }
    
    override func channel(_ sender: SBDBaseChannel, messageWasDeleted messageId: Int64) {
        super.channel(sender, messageWasDeleted: messageId)
        print("USER_CUSTOM:::messageWasDeleted:::")
    }

    override func channelDidUpdateReadReceipt(_ sender: SBDGroupChannel) {
        super.channelDidUpdateReadReceipt(sender)
        print("USER_CUSTOM:::channelDidUpdateReadReceipt:::")
    }
    
    override func channelDidUpdateDeliveryReceipt(_ sender: SBDGroupChannel) {
        super.channelDidUpdateDeliveryReceipt(sender)
        print("USER_CUSTOM:::channelDidUpdateDeliveryReceipt:::")
    }
    
    override func channelDidUpdateTypingStatus(_ sender: SBDGroupChannel) {
         super.channelDidUpdateTypingStatus(sender)
        print("USER_CUSTOM:::channelDidUpdateTypingStatus:::")
    }

    override func channelWasChanged(_ sender: SBDBaseChannel) {
        super.channelWasChanged(sender)
        print("USER_CUSTOM:::channelWasChanged:::")
    }

    override func didSelectDeleteImage(message: SBDFileMessage) {
        super.didSelectDeleteImage(message: message)
        print("USER_CUSTOM:::channelWasChanged:::")
    }

}
