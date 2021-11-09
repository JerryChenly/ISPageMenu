//
//  ViewController.swift
//  ISPageMenu
//
//  Created by chenliangyin on 11/09/2021.
//  Copyright (c) 2021 chenliangyin. All rights reserved.
//

import UIKit
import SnapKit
import ISPageMenu

class ViewController: UIViewController {
    
    private lazy var pageMenu: ISPageMenu = {
        let pm = ISPageMenu()
        pm.rootViewController = self
        pm.dataSource = self
        pm.delegate = self
        return pm
    }()
    
    private lazy var titles = ["RedViewController", "GreenViewController", "BlueViewController", "GrayViewController", "BrownViewController"]
    
    private lazy var controllers = [RedViewController(), GreenViewController(), BlueViewController(), GrayViewController(), BrownViewController()]
    
    override var shouldAutomaticallyForwardAppearanceMethods: Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pageMenu)
        //
        pageMenu.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        //
        pageMenu.reload(titles: titles, controllers: controllers)
        pageMenu.select(index: 0, direction: .forward, animated: false)
    }
    
    override func viewSafeAreaInsetsDidChange() {
        if #available(iOS 11.0, *) {
            let safeAreaInsets = view.safeAreaInsets
            pageMenu.snp.remakeConstraints {
                $0.top.equalToSuperview().offset(safeAreaInsets.top)
                $0.left.equalToSuperview().offset(safeAreaInsets.left)
                $0.right.equalToSuperview().offset(-safeAreaInsets.right)
                $0.bottom.equalToSuperview().offset(-safeAreaInsets.bottom)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: ISPageMenuDataSource, ISPageMenuDelegate {
    
    /// tab标签之间的最小间距
    /// - Parameter view: ISPageMenu
    func pageMenuMinimumTabSpacing(_ view: ISPageMenu) -> CGFloat {
        return 15
    }
    
    /// 指定选中tab标题字体
    /// - Parameter view: ISPageMenu
    func pageMenuTabTextFontSelected(_ view: ISPageMenu) -> UIFont? {
        return UIFont.systemFont(ofSize: 16)
    }
    
    /// 指定未选中tab标题字体
    /// - Parameter view: ISPageMenu
    func pageMenuTabTextFontNormal(_ view: ISPageMenu) -> UIFont? {
        return UIFont.systemFont(ofSize: 14)
    }
    
    func pageMenu(_ view: ISPageMenu, didSelectAt index: NSInteger) {
        print("ISPageMenu didSelectAt \(index) ...")
    }
}

