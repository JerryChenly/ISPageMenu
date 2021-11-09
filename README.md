# ISPageMenu

[![CI Status](https://img.shields.io/travis/JerryChenly/ISPageMenu.svg?style=flat)](https://travis-ci.org/JerryChenly/ISPageMenu)
[![Version](https://img.shields.io/cocoapods/v/ISPageMenu.svg?style=flat)](https://cocoapods.org/pods/ISPageMenu)
[![License](https://img.shields.io/cocoapods/l/ISPageMenu.svg?style=flat)](https://cocoapods.org/pods/ISPageMenu)
[![Platform](https://img.shields.io/cocoapods/p/ISPageMenu.svg?style=flat)](https://cocoapods.org/pods/ISPageMenu)

适用于iOS平台的视图管理组件，上面是可左右滚动的Tab(基于UICollectionView实现)，下面是可翻页的PageView(基于UIScrollView实现)，解决子视图生命周期混乱问题，常用于电商和资讯类App的首页等场景。

ISMenuTabView：以UICollectionView为载体实现tab标签视图；

ISPageView：以UIScrollView为载体实现PageView，用作多ViewController切换管理；

ISPageMenu：结合ISPageView和ISMenuTabView实现多ViewController视图切换，顶部带tab标签。

其中ISMenuTabView和ISPageView可单独使用。

## 个性化定制 - ISMenuTabView

1、tab标签之间的最小间距；

2、指定tab选中时的标题颜色；

3、指定tab未选中时的标题颜色；

4、tab被选中时底部标识线(底部线 or 背景填充)的颜色；

5、指定选中tab标题字体；

6、指定未选中tab标题字体；

7、指定tab背景图；

8、segment样式下，tab之间分割线的颜色；

9、segment样式下，tab之间分割线的宽度

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ISPageMenu is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ISPageMenu'
```

## Author

JerryChenly, jerrychenly@gmail.com

## License

ISPageMenu is available under the MIT license. See the LICENSE file for more info.
