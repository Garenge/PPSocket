//
//  ViewController.swift
//  PPSocket
//
//  Created by Garenge on 01/05/2025.
//  Copyright (c) 2025 Garenge. All rights reserved.
//

import UIKit
import PPSocket

class ViewController: UIViewController {
    
    let server = PPServerSocketManager()
    let client = PPClientSocketManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.server.accept(port: 12123)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.client.connect(host: "127.0.0.1", port: 12123)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

