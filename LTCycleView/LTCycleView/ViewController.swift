//
//  ViewController.swift
//  LTCycleView
//
//  Created by letian on 16/11/6.
//  Copyright © 2016年 cmsg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var cycleView : LTCycleView = {
        //cell的相关配置
        let cellConfig = LTCellConfig()
            cellConfig.textAlginType = .center
            cellConfig.isShowShadow = true
            cellConfig.isShowText   = true
        let cycleView = LTCycleView.cycleViewFormXib(cellConfigStyle: nil)
            cycleView.frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: 200)
            //设置pageControl的对齐方式
            cycleView.pageControlAlginType = .right
            cycleView.autoScrollTime = 2
            //点击的回调
            cycleView.addCallBack({ (idx : Int) in
                print(idx)
            });
            cycleView.backgroundColor = UIColor.red
        
        return cycleView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cycleView)
        cycleView.textArr = ["乐天你好啊","乐天你好啊22","来哥吃翔哈哈哈"]
        cycleView.urlImgArr = ["https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1478486089&di=b3f06aec45d0a7cc90488c740ee4fc67&src=http://pic31.nipic.com/20130702/2926417_003653575119_2.jpg","http://pic65.nipic.com/file/20150428/20935153_212204600000_2.jpg","http://pic.58pic.com/58pic/13/18/14/87m58PICVvM_1024.jpg"]
        
    }

}


