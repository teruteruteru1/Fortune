//
//  ViewController.swift
//  Fortune
//
//  Created by Yasuteru on 2018/05/25.
//  Copyright © 2018年 Yasuteru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var unsei = ["大吉", "中吉","小吉","吉","末吉","狂","大狂","腹痛","宝くじ１等当選"]
    var kaisetu = ["やったぜ！","よし！","うーん","まぁまぁ","はぁ...","まじか...","えっ...","トイレ行ってくる","おめでとうございます！！",]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func uranaiBottun(_ sender: UIButton) {
        let random = Int(arc4random_uniform(9))
        let fortunecheck = UIAlertController(title: "今日の運勢は？", message: unsei[random], preferredStyle: .alert)
        fortunecheck.addAction(UIAlertAction(title: kaisetu[random], style: .default, handler: {action in print("OK") }))
        present(fortunecheck, animated: true, completion: nil)
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

