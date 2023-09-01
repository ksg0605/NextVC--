//
//  FIrstViewController.swift
//  NextVC
//
//  Created by 김선규 on 2023/08/31.
//

import UIKit

class FIrstViewController: UIViewController {

    
    var someString: String?
    
    let mainLabel: UILabel = {
        let label = UILabel()

        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("BACK", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        makeAutoLayout()
    }
    
    func setup() {
        mainLabel.text = someString
        
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .gray
        
    }
    
    func makeAutoLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }

}
