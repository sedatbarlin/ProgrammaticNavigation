//
//  LoginViewController.swift
//  ProgrammaticNavigation
//
//  Created by Sedat on 5.02.2024.
//
  
import UIKit   

class LoginViewController: UIViewController { 
    lazy var button: UIButton = { 
        let button = UIButton()
        button.setTitle("Sign Out", for: .normal)
        button.setTitleColor(.white, for: .normal) 
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        configureUI()
    }
    
    func configureUI(){
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 80),
            button.widthAnchor.constraint(equalToConstant: 300)
        ])
        
    }
    
    @objc func didTapButton(){
        let userTabBar = UserTabBarController()
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(vc: userTabBar)
    }
}
