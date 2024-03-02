//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by Nazrin Atayeva on 19.02.24.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel  =  GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView =  UIImageView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
   convenience init(message: String){
        self.init(frame: .zero)
        messageLabel.text = message
       
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        configureMessageLabel()
        configureLogoImageView()
    }
    
    private func configureMessageLabel(){
        addSubview(messageLabel)
        messageLabel.numberOfLines  = 3
        messageLabel.textColor      = .secondaryLabel
        
        let labelCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : -150
        let messageLabelCenterYConstraint =  messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: labelCenterYConstant)
        messageLabelCenterYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureLogoImageView(){
        addSubview(logoImageView)
        logoImageView.image         = Images.emptystatelogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
      
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 80 : 40
        let logoImageViewBottomConstant =   logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoBottomConstant)
       
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
    }
    
}
