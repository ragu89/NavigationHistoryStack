//
//  RootViewController.swift
//  NavigationHistoryStack
//
//  Created by Guye Raphael, I233 on 26.07.21.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    
    var titleLabel: UILabel!
    var todoListButton: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        title = "Root view"
        
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
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        titleLabel.text = "Navigation History Stack Demo"
        
        todoListButton = UIButton(type: .system)
        todoListButton.translatesAutoresizingMaskIntoConstraints = false
        todoListButton.setTitle("Push the first view", for: .normal)
        todoListButton.addTarget(self, action: #selector(pushFirstView), for: .touchUpInside);
    }
    
    private func addSubViews() {
        view.addSubview(titleLabel)
        view.addSubview(todoListButton)
    }
    
    private func applyLayoutConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 44),
            titleLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            todoListButton.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            todoListButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor)
        ])
    }
    
    @objc private func pushFirstView(sender: UIButton) {
        NSLog("pushFirstView")
        navigationController?.pushViewController(
            FirstViewController(),
            animated: true)
    }
}

