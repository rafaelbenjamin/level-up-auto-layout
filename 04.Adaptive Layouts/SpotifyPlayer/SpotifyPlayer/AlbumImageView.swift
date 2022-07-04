//
//  AlbumImageView.swift
//  SpotifyPlayer
//
//  Created by Rafael Benjamin on 04/07/22.
//  Copyright © 2022 Jonathan Rasmusson. All rights reserved.
//

import Foundation
import UIKit

class AlbumImageView:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        
        addSubview(albumImage)
        
        albumImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        //albumImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        //albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        //albumImage.widthAnchor.constraint(equalToConstant: bounds.width).isActive = true
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
