//
//  Challenge.swift
//  CustomViewChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
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
    
    /*
     
     Challenge here is to take the various controls and practice extracting components as subViews (UIViews).
     
     Two good candidates for extraction are the:
     
     - RowView (label and a switch)
     - CrossfadeView (label, progressbar, and max min label)
     
     ┌───────────────┐        ┌───────────────┐
     │               │        │               │
     │               ├────────▶    RowView    │ x4
     │               │        │               │
     │               │        └───────────────┘
     │   Challenge   │ extract
     │               │
     │               │        ┌───────────────┐
     │               │        │               │
     │               ├────────▶ CrossfadeView │ x1
     │               │        │               │
     └───────────────┘        └───────────────┘
     
     See if you can extract those into their own custom UIViews and then lay those out.
     
     */
    func setupViews() {
        
        let offlineRow = RowView(labelText: "Offline", isOn: false)
        
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossFadeView = Crossfadeview()
        
        let gaplessPlaybackRow = RowView(labelText: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(labelText: "Hide Unplayable Songs", isOn: true)
        let enableNormalizationRow = RowView(labelText: "Enable Audio Normalization", isOn: true)
        
        offlineRow.translatesAutoresizingMaskIntoConstraints = false
        crossFadeView.translatesAutoresizingMaskIntoConstraints = false
        gaplessPlaybackRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
        enableNormalizationRow.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(offlineRow)
        view.addSubview(offlineSublabel)
        view.addSubview(crossFadeView)
        view.addSubview(gaplessPlaybackRow)
        view.addSubview(hideSongsRow)
        view.addSubview(enableNormalizationRow)
        
        offlineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        offlineRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        offlineSublabel.topAnchor.constraint(equalTo: offlineRow.bottomAnchor, constant: margin).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        crossFadeView.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: margin).isActive = true
        crossFadeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        crossFadeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        gaplessPlaybackRow.topAnchor.constraint(equalTo: crossFadeView.bottomAnchor, constant: margin).isActive = true
        gaplessPlaybackRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        gaplessPlaybackRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        hideSongsRow.topAnchor.constraint(equalTo: gaplessPlaybackRow.bottomAnchor, constant: margin).isActive = true
        hideSongsRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        hideSongsRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        enableNormalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: margin).isActive = true
        enableNormalizationRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        enableNormalizationRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
    }
}


