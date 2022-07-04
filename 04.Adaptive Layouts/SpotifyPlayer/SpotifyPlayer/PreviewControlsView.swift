//
//  PreviewControlsView.swift
//  SpotifyPlayer
//
//  Created by Rafael Benjamin on 04/07/22.
//  Copyright © 2022 Jonathan Rasmusson. All rights reserved.
//

import Foundation
import UIKit

class PreviewControlsView: UIView {
    
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYAnchorConstraint = NSLayoutConstraint()
    var leadPaddingAnchor = NSLayoutConstraint()
    var trailPaddingAnchor = NSLayoutConstraint()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()        
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        addSubview(trackLabel)
        addSubview(albumLabel)
        addSubview(playButton)
        addSubview(previewStartLabel)
        addSubview(previewEndLabel)
        addSubview(progressView)
        addSubview(spotifyButton)
        
        //trackLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        trackLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8).isActive = true
        albumLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8).isActive = true
        playButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8).isActive = true
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8).isActive = true
        previewEndLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32).isActive = true
        spotifyButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        topAnchorConstraint =  trackLabel.topAnchor.constraint(equalTo: topAnchor)
        centerYAnchorConstraint =  playButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        adjustConstraints()
    }
    
    func adjustConstraints(){
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topAnchorConstraint.isActive = true
            centerYAnchorConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            centerYAnchorConstraint.isActive = true
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
