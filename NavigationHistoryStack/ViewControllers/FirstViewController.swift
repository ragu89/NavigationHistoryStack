//
//  FirstViewController.swift
//  NavigationHistoryStack
//
//  Created by Guye Raphael, I233 on 26.07.21.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    var nextButton: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        title = "First view"
        
        createComponents()
        
        addSubViews()
        
        applyLayoutConstraint()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func createComponents() {
        nextButton = UIButton(type: .system)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Push the second view", for: .normal)
        nextButton.addTarget(self, action: #selector(pushSecondView), for: .touchUpInside);
    }
    
    private func addSubViews() {
        view.addSubview(nextButton)
    }
    
    private func applyLayoutConstraint() {
        NSLayoutConstraint.activate([
            nextButton.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            nextButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor)
        ])
    }
    
    @objc private func pushSecondView(sender: UIButton) {
        NSLog("pushSecondView")
        navigationController?.pushViewController(
            SecondViewController(),
            animated: true)
    }
}


