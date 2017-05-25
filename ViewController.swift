//
//  ViewController.swift
//  Test
//
//  Created by Sustny on 17/5/16.
//  Copyright © 2017年 Sustny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        /* ------------------------------ ここから ------------------------------ */
        
        //いつもの
        print("Hello INM World!!")
        
        /* -------------------- 変数と型 -------------------- */
        
        //整数型
        var yajyu: Int = 514
        yajyu += 114000 //変数を計算等に使わず同じ数値のままだとletにせえやと怒られるンゴ
        print(yajyu)
        
        //浮動小数点数型
        let senpai: Float = 1.14514 //floatが32bit、doubleが64bit
        print(senpai)
        //別の型同士の演算(Double + Int)は不可 -> 型変換が必要(Double + Double(Int))
        
        //オーバーフロー演算子
        var ikisugi: Int8 = Int8.max //Int8.max = 127
        //ikisugi += 1 ... このままだとInt8の上限127を超えるので、エラーになる
        ikisugi = ikisugi &+ 1 //オーバーフロー演算子を使うと、1,2,3,.....126,127,-128とローテートする
        print(ikisugi)
        
        //文字列
        let moji: String = "いいよこいよ"
        print(moji)
        
        //Array型
        let array = [19, 19, 810]
        print("\(array[0])\(array[1])\(array[2])")
        
        //Dictionary型
        let dict = [
            "氏名": "野獣先輩",
            "年齢": "24",
            "職業":"学生"
        ]
        print(dict)
        
        //タプル(Array, Dictionaryよかこっちのほうが便利そう)
        let profile: (name:String, age:Int, work:String) = (
            name:"野獣先輩",
            age:24,
            work:"学生"
        )
        print("氏名:\(profile.name)")
        print("年齢:\(profile.age)")
        print("職業:\(profile.work)")
        
        //Bool型
        let suuji:Int = 10
        if(suuji == 10) {
            let kekka:Bool = (suuji == 10)
            print(kekka) //trueってなる ダメだとfalse
        }
        
        /* -------------------- 制御構文 -------------------- */
        
        //if文
        let x: Int = 30
        let y: Int = 50
        
        if(x>10) {
            print("x = \(x)")
        }
        
        if y>10 { //()はつけなくてもOK
            print("y = \(y)")
        }
        
        //for文
        
        /*
         for var i=0; i<5; i++ {
         print("i = \(i)")
         }
         */
        // Swift 3.0からは、上記のようなC言語ライクのfor文が書けなくなった
        //ちなみにi++, i--(インクリメント、デクリメント)も使えない
        //ので、以下のように書く(for-inループと呼ばれている)
        for i in 0..<5 {
            print("for-inがぐるぐるしている\(i+1)回目")
        }
        
        //forEachなら1行で書ける
        (0..<5).forEach { (num) in print("forEachがぐるぐるしている\(num+1)回目") }
        
        //クロージャでnumも省略可
        (0..<5).forEach { print("forEachがクロージャでぐるぐるしている\($0+1)回目") }
        
        //while文 -> ぶっちゃけfor文にこれだけバリエーションあれば使わないでしょって気持ちになってる
        var j:Int = 0
        while j<5 {
            print(j)
            j += 1
        }
        
        //辞書もfor-inで取り出せるよ
        let fruits = ["いちご", "すいか", "みかん"]
        for fruit in fruits {
            print(fruit)
        }
        
        //インデックスも取り出したいときにはenumerated()ってのを使うといいよ
        for (index, fruit) in fruits.enumerated() { //Swift3.0以前→enumerate / Swift3以降→enumerated
            print("\(index): \(fruit)")
        }
        
        /* -------------------- Optional -------------------- */

        var n0:Int? = 0
        n0 = nil
        n0! = n0! + 1
        print(n0!)
        
        /* 普通のInt型にnilは入れられない
        var n1:Int = 0
        n1 = nil
        */

        /* ------------------------------ ここまで ------------------------------ */
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

