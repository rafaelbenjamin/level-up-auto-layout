//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    var stackView: UIStackView
    let previewControls = PreviewControlsView()
    
    init(){
        stackView = makeStackView(withOrientation: .vertical)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(Challenge.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    func setupViews() {
        
        let albumImage = makeImageView(named: "rush")
                
        albumImage.translatesAutoresizingMaskIntoConstraints = false
        previewControls.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(albumImage)
        stackView.addArrangedSubview(previewControls)
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

    }
    
    @objc func rotated() {
        previewControls.adjustConstraints()
        
        if UIDevice.current.orientation.isLandscape {
            stackView.axis = .horizontal
        } else {
            stackView.axis = .vertical
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}
