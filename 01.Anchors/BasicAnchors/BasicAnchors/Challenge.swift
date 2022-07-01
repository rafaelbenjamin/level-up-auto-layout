//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSublabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(crossfadeMaxLabel)
        
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)
        
        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)
        
        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        // Start your layout here...
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            offlineLabel.centerYAnchor.constraint(equalTo: offlineSwitch.centerYAnchor),
            
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: 32),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32),
            
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),

            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 5),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -5),
           
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: 32),
            
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gaplessPlaybackSwitch.topAnchor.constraint(equalTo: crossfadeProgressView.bottomAnchor, constant: 32),
            
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: 32),
            
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor),
           
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: 32),
            
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor)
           
        ])
        
        
        
        
    }
}

