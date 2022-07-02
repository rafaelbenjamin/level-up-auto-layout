//
//  ViewController.swift
//  ContentHuggingCompressionResistance
//
//  Created by Rafael Benjamin on 02/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        let nameLabel = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceHolderText: "Enter name here")
        
        view.addSubview(nameLabel)
        view.addSubview(textField)
        
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        
        textField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8).isActive = true
        textField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        //Set higher priority on hugging of the name label
        //Interface builder must be informed programmatically to understant which component must be prioritized
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }

    
    func makeLabel(withText text: String) -> UILabel {
           let label = UILabel()
           label.translatesAutoresizingMaskIntoConstraints = false
           label.text = text
           label.backgroundColor = .yellow

           return label
       }

       func makeTextField(withPlaceHolderText text: String) -> UITextField {
           let textField = UITextField()
           textField.translatesAutoresizingMaskIntoConstraints = false
           textField.placeholder = text
           textField.backgroundColor = .lightGray

           return textField
       }


}

