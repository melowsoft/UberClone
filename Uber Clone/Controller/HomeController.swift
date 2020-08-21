//
//  HomeController.swift
//  Uber Clone
//
//  Created by Tony Stack on 21/08/2020.
//  Copyright © 2020 Tony Stack. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    private let mapView = MKMapView()
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfUserLoggedIn()
        
       // signOut()
    }
    
    // MARK: - API
    
    func checkIfUserLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                self.present(nav, animated: true, completion: nil)
            }
        } else {
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch  {
            print("DEBUG: Error signing out")
        }
    }
    
    // MARK: - Helper Function
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
}
