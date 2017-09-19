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
        setNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setNavigationBar(){
        //배경 색
        view.backgroundColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1)
        
        //내비게이션 바
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: 44))
        
        //내비게이션 아이템
        let navItem = UINavigationItem(title: "Register");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: nil, action: #selector(backButtonClicked));
        navItem.leftBarButtonItem = doneItem;
        
        //내비게이션 바 세팅
        navBar.setItems([navItem], animated: false);
        
        //뷰에 내비게이션 바 추가
        self.view.addSubview(navBar);
    }
    
    //백 버튼 실행
    func backButtonClicked(){
        self.navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
