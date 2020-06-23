//
//  MyChannelListCell.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/16.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import Foundation
import SendBirdUIKit
import UIKit

class MyChannelListCell:  SBUBaseChannelCell{

    public lazy var coverImage: UIImageView = _coverImage
    public lazy var titleStackView: UIStackView = _titleStackView
    public lazy var titleLabel: UILabel = _titleLabel

    
    @SBUAutoLayout private var _coverImage = UIImageView()
    @SBUAutoLayout private var _titleStackView: UIStackView = {
        let titleStackView = UIStackView()
        titleStackView.alignment = .center
        titleStackView.spacing = 4.0
        titleStackView.axis = .horizontal
        return titleStackView
    }()

    @SBUAutoLayout private var _titleLabel = UILabel()
    @SBUAutoLayout private var separatorLine = UIView()

    var theme: SBUChannelCellTheme = SBUTheme.channelCellTheme
    
    let kCoverImageSize: CGFloat = 30

    override func setupViews() {
        super.setupViews()

        self.coverImage.clipsToBounds = true
        self.coverImage.frame = CGRect(x: 0, y: 0, width: kCoverImageSize, height: kCoverImageSize)
        self.contentView.addSubview(self.coverImage)
        
        self.titleStackView.addArrangedSubview(self.titleLabel)

        self.contentView.addSubview(titleStackView)
        
        self.contentView.addSubview(self.separatorLine)
        
        //TODO - 다음버전에서 삭제
        self.setupStyles()
        
    }

    override func setupActions() {
        super.setupActions()
    }

    override func setupAutolayout() {
        super.setupAutolayout()
        
        NSLayoutConstraint.activate([
            self.coverImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            self.coverImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.coverImage.widthAnchor.constraint(equalToConstant: kCoverImageSize),
            self.coverImage.heightAnchor.constraint(equalToConstant: kCoverImageSize),
        ])

        NSLayoutConstraint.activate([
            self.titleStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            self.titleStackView.leadingAnchor.constraint(equalTo: self.coverImage.trailingAnchor, constant: 16),
            self.titleStackView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor,  constant: -16),
            self.titleStackView.heightAnchor.constraint(equalToConstant: 22),
        ])
        self.titleLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        NSLayoutConstraint.activate([
            self.separatorLine.topAnchor.constraint(equalTo: self.coverImage.bottomAnchor, constant: -0.5),
            self.separatorLine.leadingAnchor.constraint(equalTo: self.titleStackView.leadingAnchor, constant: 0),
            self.separatorLine.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.separatorLine.heightAnchor.constraint(equalToConstant: 0.5)
        ])
        
    }

    override func setupStyles() {
        super.setupStyles()
        self.titleLabel.font = theme.titleFont
        self.titleLabel.textColor = theme.titleTextColor
        self.separatorLine.backgroundColor = theme.separatorLineColor
    }

    override func configure(channel: SBDGroupChannel) {
        //super.configure(channel: channel)
        print("configure channelUrl name = ", channel.name)
        self.titleLabel.text = channel.name.count > 0 ? channel.name : "채널이름 없음"
        self.coverImage.image = UIImage(named: "logoSendbird")
    }
    
    
}


