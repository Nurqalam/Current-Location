//
//  ViewController.swift
//  Current Location
//
//  Created by Nurqalam on 27.03.2022.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    private let map: MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    
    private let currentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Current place", for: .normal)
        button.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2922922373, green: 0.7678770423, blue: 0.9104885459, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0, green: 0.4793452024, blue: 0.9990863204, alpha: 1), for: .normal)
        button.layer.cornerRadius = 12
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 0)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        title = "Home"
        
        currentButton.addTarget(self, action: #selector(currentPlacePressed), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        map.frame = view.bounds
        currentButton.frame = CGRect(x: map.frame.minX - 100,
                                     y: map.frame.size.height - 100,
                                     width: 200,
                                     height: 40)
    }
    
    
    @objc private func currentPlacePressed() {
        
    }


}

