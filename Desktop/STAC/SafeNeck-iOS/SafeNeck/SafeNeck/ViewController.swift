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
        setSlogunView()
        setButtonView()
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
    
    //하단 슬로건 뷰 생성
    func setSlogunView() {
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
    
    //두번째 하단 뷰 생성
    func setButtonView(){
        let registerButton = UIButton(frame: CGRect(x: view.frame.width * 0.5 - 100, y: view.frame.height * 0.7 + 20, width: 200, height: view.frame.height * 0.05))
        registerButton.setTitle("회원가입", for: .normal)
        registerButton.setTitleColor(UIColor.black, for: .normal)
        registerButton.backgroundColor = .white
        registerButton.layer.cornerRadius = 10
        registerButton.layer.shadowColor = UIColor.black.cgColor
        registerButton.layer.shadowOpacity = 0.2
        registerButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        registerButton.layer.shadowRadius = 2
        registerButton.addTarget(RegisterViewController(), action: #selector(registerButtonClicked), for: .touchUpInside)
        view.addSubview(registerButton)
        
        let loginButton = UIButton(frame: CGRect(x: view.frame.width * 0.5 - 100, y: view.frame.height * 0.8 + 20, width: 200, height: view.frame.height * 0.05))
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(UIColor.black, for: .normal)
        loginButton.backgroundColor = .white
        loginButton.layer.cornerRadius = 10
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.2
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        loginButton.layer.shadowRadius = 2
        loginButton.addTarget(LoginViewController(), action: #selector(loginButtonClicked), for: .touchUpInside)
        view.addSubview(loginButton)
    }
    
    //회원가입 버튼 실행 <- 완전 중요
    func registerButtonClicked(){
        //옆에서 나오게 하는거임
        //self.navigationController.pushViewController(RegisterViewController(), animated:true)
        //그냥 띄우는거임
        //self.present(navigationController,animated:true, completion:nil)
        //팝업으로 뜨는거임
//        print("Registernumuganda")
//        let navigationController = UINavigationController(rootViewController: RegisterViewController())
//        navigationController.pushViewController(RegisterViewController(), animated: true)

        self.navigationController?.pushViewController(RegisterViewController(), animated: true)
    
    }
    
    func loginButtonClicked(){
        print("Registernumuganda")
        let navigationController = UINavigationController(rootViewController: LoginViewController())
        self.present(navigationController,animated:true, completion:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
