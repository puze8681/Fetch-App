//
//  RegisterViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 17..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

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
        let nameTextField = UITextField(frame: CGRect(x: 10, y: view.frame.height * 0.15, width: view.frame.width - 20, height: 50))
        nameTextField.layer.cornerRadius = 5
        nameTextField.layer.borderWidth = 1.5
        nameTextField.layer.borderColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1).cgColor
        nameTextField.placeholder = "   NAME"
        nameTextField.textColor = UIColor.black
        view.addSubview(nameTextField)
        
        let idTextField = UITextField(frame: CGRect(x: 10, y: view.frame.height * 0.25, width: view.frame.width - 20, height: 50))
        idTextField.layer.cornerRadius = 5
        idTextField.layer.borderWidth = 1.5
        idTextField.layer.borderColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1).cgColor
        idTextField.placeholder = "   ID"
        idTextField.textColor = UIColor.black
        view.addSubview(idTextField)
        
        let pwTextField = UITextField(frame: CGRect(x: 10, y: view.frame.height * 0.35, width: view.frame.width - 20, height: 50))
        pwTextField.layer.cornerRadius = 5
        pwTextField.layer.borderWidth = 1.5
        pwTextField.layer.borderColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1).cgColor
        pwTextField.placeholder = "   PW"
        pwTextField.textColor = UIColor.black
        pwTextField.isSecureTextEntry = true;
        view.addSubview(pwTextField)
        
        let pwConFirmTextField = UITextField(frame: CGRect(x: 10, y: view.frame.height * 0.45, width: view.frame.width - 20, height: 50))
        pwConFirmTextField.layer.cornerRadius = 5
        pwConFirmTextField.layer.borderWidth = 1.5
        pwConFirmTextField.layer.borderColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1).cgColor
        pwConFirmTextField.placeholder = "   PW CONFIRM"
        pwConFirmTextField.textColor = UIColor.black
        pwTextField.isSecureTextEntry = true;
        view.addSubview(pwConFirmTextField)
    }
    
    //회원가입 버튼 생성
    func setRegisterButtonView() {
        
        let registerButton = UIButton(frame: CGRect(x: 0, y: view.frame.height * 0.8, width: view.frame.width, height: view.frame.height * 0.25))
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
