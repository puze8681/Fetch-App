//
//  LoginViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 18..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    //UI생성
    func setUI(){
        setUISetting()
        setNavigationBarView()
        setLoginInfoView()
        setLoginButtonView()
        setAnotherLoginView()
    }
    
    //기본 UI 세팅
    func setUISetting(){
        
        //배경 색
        view.backgroundColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1)
        
        //내비게이션 바 아래쪽 뷰 세팅
        let basicUI = UIView(frame: CGRect(x: 0, y: 64, width: view.frame.width, height: view.frame.height-64))
        basicUI.backgroundColor = UIColor.white
        self.view.addSubview(basicUI)
    }
    
    //내비게이션 바 생성
    func setNavigationBarView(){
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: 44))
        let navItem = UINavigationItem(title: "로그인");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: nil, action: #selector(backButtonClicked));
        navItem.leftBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
        navBar.layer.shadowRadius = 2
        navBar.backgroundColor = UIColor.white
        self.view.addSubview(navBar);
    }
    
    //로그인 정보창 생성
    func setLoginInfoView(){
        
        //UIView
        let idField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.12, width: view.frame.width - 20, height: 50))
        let pwField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.22, width: view.frame.width - 20, height: 50))
        
        //TextField
        let idTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.12, width: view.frame.width - 50, height: 50))
        idTextField.placeholder = "ID"
        
        let pwTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.22, width: view.frame.width - 50, height: 50))
        pwTextField.placeholder = "PW"
        pwTextField.isSecureTextEntry = true;
        
        //UIView, TextField 세팅 함수 실행
        asdf(idField, idTextField)
        asdf(pwField, pwTextField)
    }
    
    //다른 방식으로 로그인
    func setAnotherLoginView(){
        let longView = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.8 - 10, width: view.frame.width - 20, height: 1))
        longView.backgroundColor = UIColor.gray
        view.addSubview(longView)

        let anotherLoginLabel = UILabel(frame: CGRect(x: (view.frame.width * 0.5) - (((view.frame.width - 40) / 3) * 0.5), y: view.frame.height * 0.8 - 14, width: (view.frame.width - 40) / 3, height: 10))
        anotherLoginLabel.text = "다른 방식으로 로그인"
        anotherLoginLabel.font = UIFont(name: "NanumBarunGothic", size: 10 )
        anotherLoginLabel.textAlignment = NSTextAlignment.center
        anotherLoginLabel.textColor = UIColor.gray
        anotherLoginLabel.backgroundColor = UIColor.white
        view.addSubview(anotherLoginLabel)
    }
    
    //로그인 버튼 생성
    func setLoginButtonView() {
        let loginButton = UIButton(frame: CGRect(x: 0, y: view.frame.height * 0.9, width: view.frame.width, height: view.frame.height * 0.1))
        loginButton.setTitle("login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1)
        loginButton.contentHorizontalAlignment = .center
        view.addSubview(loginButton)
    }
    
    //백 버튼 실행
    func backButtonClicked(){
        self.navigationController?.popViewController(animated: true)
    }
    
    //로그인 텍스트필드 기본 세팅
    func asdf(_ field: UIView, _ textField : UITextField) {
        field.layer.cornerRadius = 5
        field.layer.borderColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1).cgColor
        field.layer.borderWidth = 1.5
        textField.textColor = UIColor.black
        textField.delegate = self
        textField.keyboardType = UIKeyboardType.asciiCapable
        view.addSubview(field)
        view.addSubview(textField)
    }
    
    //리턴 누르면 키보드 없애기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    //로그인 버튼 실행
    func loginButtonClicked(){
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
