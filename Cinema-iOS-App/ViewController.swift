//
//  ViewController.swift
//  Cinema-iOS-App
//
//  Created by Chhai Chivon on 7/31/17.
//  Copyright © 2017 Chhai Chivon. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        Alamofire.request("https://api.themoviedb.org/3/movie/550?api_key=118fbeb9349e606e9e0f67b7def474ac").responseJSON { response in
            debugPrint(response)
            
            if let json = response.result.value {
                print("JSON: \(json)")
            }
        }

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

