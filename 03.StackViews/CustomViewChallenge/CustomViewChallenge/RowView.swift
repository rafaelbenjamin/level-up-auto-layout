//
//  RowView.swift
//  CustomViewChallenge
//
//  Created by Rafael Benjamin on 02/07/22.
//  Copyright © 2022 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class RowView:UIView {
    
    required init(labelText: String, isOn: Bool ) {
        super.init(frame: .zero)
        
        setupViews(labelText: labelText, isOn: isOn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(labelText: String, isOn: Bool){
        let titleLabel = makeLabel(withText: labelText)
        let onOffSwitch = makeSwitch(isOn: isOn)
        
        addSubview(titleLabel)
        addSubview(onOffSwitch)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwitch.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
    
}
