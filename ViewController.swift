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
        print("Hello, World!") //printは自動で改行する
        
        //改行させない方法(↑は「terminator: "\n"」が省略された状態)
        print("改行", terminator: "") //"\n"を""(空白)にすれば改行されないってワケ
        print("させない")
        
        let name: String = "たどころ"
        print(name)
        
        var age: Int = 24, job: String = "学生"
        print("\(age)歳、\(job)です。")
        age = 42; job = "住所不定無職" //複数行を1行にまとめて書く場合";"を末尾につけるとよい 普段からつけてもよい
        print("\(age)歳、\(job)です。")
        
        /* ------------------------------ ここまで ------------------------------ */

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

