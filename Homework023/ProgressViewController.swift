//
//  ProgressViewController.swift
//  Homework023
//
//  Created by 黃柏嘉 on 2021/11/9.
//

import UIKit

class ProgressViewController: UIViewController {

    var timer:Timer?    //建立一個Timer
    var progressValue:Float = 0.0   //progress是一個Float
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progress: UIProgressView!
    
    @objc func updateProgress(){    //計時器使用的方法,計時器每次都會執行一次
        if progressValue < 1.1{
        //因為Progress最大值為1，我每次希望前進0.1因此如果小於1.1的情況就執行下面
            //ProgressView的progress等於我們提前建立好用來儲存進度的Float,然後進度就增加0.1
            progress.progress = progressValue
            progressValue += 0.1
        }else{
            //如果進度到1了就結束計時器功能以及暫停ActivityIndicator
            timer?.invalidate()
            activityIndicator.stopAnimating()
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //畫面度入後就開始計時器，timeInterval是時間間隔，target是目標，selector是執行的方法，然後userInfo是傳遞參數，repeats是否重複
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
      //所以以上就是生成一個計時器每0.1秒執行一次updateProgress這個方法然後要重複做
    }
    

  
}
