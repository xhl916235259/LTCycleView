# LTCycleView

## The swift version is infinite carousel using collectionView as carrier.
## swift版本的无限轮播图片，支持底部阴影，底部文字，pageControl位置(靠左，靠右，居中),底部文字对齐方式(靠左，靠右，居中),自动轮播时间等。

```

var cycleView : LTCycleView = {
    //cell的相关配置
    let cellConfig = LTCellConfig()
    cellConfig.textAlginType = .center
    cellConfig.isShowShadow = true
    cellConfig.isShowText   = true
    //传nil启用默认设置
    let cycleView = LTCycleView.cycleViewFormXib(cellConfigStyle: nil)
    cycleView.frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: 200)
    //设置pageControl的对齐方式
    cycleView.pageControlAlginType = .right
    cycleView.autoScrollTime = 2
    //点击的回调
    cycleView.addCallBack({ (idx : Int) in
    print(idx)
});
    return cycleView
}()


override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(cycleView)
    cycleView.textArr = ["乐天你好啊","乐天你好啊22","来哥吃翔哈哈哈"]
    cycleView.urlImgArr = ["https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1478486089&di=b3f06aec45d0a7cc90488c740ee4fc67&src=http://pic31.nipic.com/20130702/2926417_003653575119_2.jpg","http://pic65.nipic.com/file/20150428/20935153_212204600000_2.jpg","http://pic.58pic.com/58pic/13/18/14/87m58PICVvM_1024.jpg"]

}

```
