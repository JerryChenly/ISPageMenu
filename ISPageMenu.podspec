#
# Be sure to run `pod lib lint ISPageMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ISPageMenu'
  s.version          = '0.1.0'
  s.summary          = '适用于iOS平台的视图管理组件，上面是可左右滚动的Tab(基于UICollectionView实现)，下面是可翻页的PageView(基于UIScrollView实现)。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  适用于iOS平台的视图管理组件，上面是可左右滚动的Tab(基于UICollectionView实现)，下面是可翻页的PageView(基于UIScrollView实现)，解决子视图生命周期混乱问题，常用于电商和资讯类App的首页等场景。

  ISMenuTabView：以UICollectionView为载体实现tab标签视图；

  ISPageView：以UIScrollView为载体实现PageView，用作多ViewController切换管理；

  ISPageMenu：结合ISPageView和ISMenuTabView实现多ViewController视图切换，顶部带tab标签。

  其中ISMenuTabView和ISPageView可单独使用。

                       DESC

  s.homepage         = 'https://github.com/JerryChenly/ISPageMenu'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JerryChenly' => 'jerrychenly@gmail.com' }
  s.source           = { :git => 'https://github.com/JerryChenly/ISPageMenu.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ISPageMenu/Classes/**/*'
  
  s.swift_versions = '5.0'
  
  # s.resource_bundles = {
  #   'ISPageMenu' => ['ISPageMenu/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.dependency 'SnapKit', '~> 4.2.0'
   s.dependency 'FLAnimatedImage', '~> 1.0.16'
   s.dependency 'SDWebImage', '~> 5.11.1'
end
