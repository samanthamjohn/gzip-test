//
//  ViewController.swift
//  GzipTest
//
//  Created by Thomas Abend on 3/27/19.
//  Copyright © 2019 Hopscotch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dict = ["foo" : "bar"]
        do {
            let data = try JSONSerialization.data(withJSONObject: dict, options: [])
            let _ = try data.gzipped()
        } catch {
            print("error")
        }
    }


}

