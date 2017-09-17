//
//  ViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 8..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                setUI()
    }
    
    //UI 생성
    func setUI(){
        setUISetting()
        setLogoImage()
        setFirstBottomView()
    }
    
    //기본 UI 세팅
    func setUISetting(){
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1)
    }
    
    //로고 이미지 생성
    func setLogoImage(){
        let imageView = UIImageView(frame: CGRect(x: 0, y: view.frame.width * 0.3, width: view.frame.width, height: view.frame.height * 0.45))
        imageView.image = #imageLiteral(resourceName: "bg_splash_logo.png")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
    }
    
    //첫번째 하단 뷰 생성
    func setFirstBottomView() {
        let titleLabel = UILabel(frame: CGRect(x: 0, y: view.frame.height * 0.8, width: view.frame.width, height: view.frame.height * 0.25))
        titleLabel.text = "STA + C 2017"
        titleLabel.font = UIFont(name: "NanumBarunGothicBold", size: 20.0)
        titleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        titleLabel.textAlignment = NSTextAlignment.center
        view.addSubview(titleLabel)
        
        let contentLabel = UILabel(frame: CGRect(x: 0, y: view.frame.height * 0.8, width: view.frame.width, height: view.frame.height * 0.31))
        contentLabel.text = "선린인터넷고등학교 팀 Safe neck"
        contentLabel.font = UIFont(name: "NanumBarunGothicLight", size: 8.0)
        contentLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        contentLabel.textAlignment = NSTextAlignment.center
        view.addSubview(contentLabel)
    }
    
    //
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

