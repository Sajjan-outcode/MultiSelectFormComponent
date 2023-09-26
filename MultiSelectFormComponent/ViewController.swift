//
//  ViewController.swift
//  MultiSelectFormComponent
//
//  Created by outcode  on 26/09/2023.
//

import UIKit

class ViewController: UIViewController {

    private var multiSelectView: MultiSelectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        multiSelectView = MultiSelectView()
        multiSelectView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(multiSelectView)
        
        let views: [String: UIView] = ["multiSelectView": multiSelectView]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[multiSelectView]|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[multiSelectView]|", options: [], metrics: nil, views: views))
        
        multiSelectView.onSelectionChanged = { selectedItems in
            // Handle selected items here
            print(selectedItems)
        }
        
        multiSelectView.items = [
            Item(name: "Item 1", isSelected: false),
            Item(name: "Item 2", isSelected: false),
            Item(name: "Item 3", isSelected: false),
            Item(name: "Item 4", isSelected: false),
        ]
    }
}
