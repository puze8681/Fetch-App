//
//  RegisterViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 17..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    //UI생성
    func setUI(){
        setUISetting()
        setNavigationBarView()
        setRegisterInfoView()
        setRegisterButtonView()
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
        let navItem = UINavigationItem(title: "REGISTER");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: nil, action: #selector(backButtonClicked));
        navItem.leftBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
        navBar.layer.shadowRadius = 2
        navBar.backgroundColor = UIColor.white
        self.view.addSubview(navBar);
    }
    
    //회원가입 정보창 생성
    func setRegisterInfoView(){
        
        //UIView
        let nameField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.12, width: view.frame.width - 20, height: 50))
        let idField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.22, width: view.frame.width - 20, height: 50))
        let pwField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.32, width: view.frame.width - 20, height: 50))
        let pwConfirmField = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.42, width: view.frame.width - 20, height: 50))

        //TextField
        let nameTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.12, width: view.frame.width - 50, height: 50))
        nameTextField.placeholder = "NAME"
        
        let idTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.22, width: view.frame.width - 50, height: 50))
        idTextField.placeholder = "ID"
        
        let pwTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.32, width: view.frame.width - 50, height: 50))
        pwTextField.placeholder = "PW"
        pwTextField.isSecureTextEntry = true;
        
        let pwConfirmTextField = UITextField(frame: CGRect(x: 25, y: view.frame.height * 0.42, width: view.frame.width - 50, height: 50))
        pwConfirmTextField.placeholder = "PW CONFIRM"
        pwConfirmTextField.isSecureTextEntry = true;
        
        //UIView, TextField 세팅 함수 실행
        asdf(nameField, nameTextField)
        asdf(idField, idTextField)
        asdf(pwField, pwTextField)
        asdf(pwConfirmField, pwConfirmTextField)
    }
    
    //다른 방식으로 회원가입
    func setAnotherRegistView(){
        let longView = UIView(frame: CGRect(x: 10, y: view.frame.height * 0.8 - 10, width: view.frame.width - 20, height: 1))
        longView.backgroundColor = UIColor.gray
        view.addSubview(longView)
        
        let anotherRegistLabel = UILabel(frame: CGRect(x: (view.frame.width * 0.5) - (((view.frame.width - 40) / 3) * 0.5), y: view.frame.height * 0.8 - 14, width: (view.frame.width - 40) / 3, height: 10))
        anotherRegistLabel.text = "다른 방식으로 회원가입"
        anotherRegistLabel.font = UIFont(name: "NanumBarunGothic", size: 10 )
        anotherRegistLabel.textAlignment = NSTextAlignment.center
        anotherRegistLabel.textColor = UIColor.gray
        anotherRegistLabel.backgroundColor = UIColor.white
        view.addSubview(anotherRegistLabel)
    }
    
    //회원가입 버튼 생성
    func setRegisterButtonView() {
        
        let registerButton = UIButton(frame: CGRect(x: 0, y: view.frame.height * 0.9, width: view.frame.width, height: view.frame.height * 0.1))
        registerButton.setTitle("regist", for: .normal)
        registerButton.setTitleColor(UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1), for: .normal)
        registerButton.contentHorizontalAlignment = .center
        view.addSubview(registerButton)

//        let registerImage = UIImageView(frame: CGRect(x: 0, y: view.frame.height * 0.8, width: view.frame.width * 0.8, height: view.frame.height * 0.25))
//        registerImage.image = UIImage(named: "ic_register_check")
//        registerImage.contentMode = .scaleAspectFit
//        view.addSubview(registerImage)
    }
    
    //백 버튼 실행
    func backButtonClicked(){
        self.navigationController?.popViewController(animated: true)
    }
    
    //회원가입 텍스트필드 기본 세팅
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
    
    //회원가입 버튼 실행
    func registButtonClicked(){
        
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
