//
//  SecondViewController.swift
//  NavigationHistoryStack
//
//  Created by Guye Raphael, I233 on 26.07.21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var titleLabel: UILabel!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        title = "Second view"
        
        createComponents()
        
        addSubViews()
        
        applyLayoutConstraint()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func createComponents() {
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "This is the second view view"
    }
    
    private func addSubViews() {
        view.addSubview(titleLabel)
    }
    
    private func applyLayoutConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor)
        ])
    }
}



