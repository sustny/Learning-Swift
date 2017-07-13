//
//  ViewController.swift
//  Test
//
//  Created by Sustny on 17/5/16.
//  Copyright © 2017 Sustny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        /* ------------------------------ ここから ------------------------------ */
        let urlString = "https://spreadsheets.google.com/feeds/cells/1MkW9mP_qpyC3GI_Y9_j8dD7kusNkycCixXflXo0Tro8/od6/public/values?alt=json"
        let url = NSURL(string: urlString)
        
        // 最終的にデータが保存される2次元配列
        var titleUrlData = [[String]]()
        
        // NSURLSession を使って JSON を取得
        let task = URLSession.shared.dataTask(with: url! as URL, completionHandler:{data, response, error in
            // JSON を元に整理
            do {
                let dict = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                let feed = dict["feed"] as! NSDictionary
                let entries = feed["entry"] as! [NSDictionary]
                var titleUrls = [String]()
                
                for entry in entries {
                    let contents = entry["content"] as! NSDictionary
                    titleUrls.append(contents["$t"] as! String)
                }
                
                for i in 0..<50 {
                    var maketitleUrlData = [String]()
                    maketitleUrlData.append(titleUrls[i*2])
                    maketitleUrlData.append(titleUrls[i*2 + 1])
                    titleUrlData.append(maketitleUrlData)
                }
                
                print(titleUrlData)
                
            } catch {
                print("Error")
            }
        })
        
        task.resume()
        /* ------------------------------ ここまで ------------------------------ */

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

