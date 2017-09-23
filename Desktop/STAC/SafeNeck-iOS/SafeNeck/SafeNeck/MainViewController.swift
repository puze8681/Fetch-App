//
//  MainViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 22..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var todayNoticeNum: UILabel!
    var weekNoticeNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
        self.view.backgroundColor = UIColor.lightGray

        print("I'm here : 2")
        // Do any additional setup after loading the view.
        
        setUI()
    }

    //UI생성
    func setUI(){
        setUISetting()
        setNavigationBarView()
        setNoticeNumView()
        setSwipeType()
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
        let navItem = UINavigationItem(title: "SafeNeck");
        navBar.setItems([navItem], animated: false);
        navBar.layer.shadowRadius = 2
        navBar.backgroundColor = UIColor.white
        self.view.addSubview(navBar);
    }
    
    //상단 알림개수 뷰 생성
    func setNoticeNumView(){
        let todayNoticeUIView: NoticeUIView = NoticeUIView(frame: CGRect(x: 10, y: view.frame.height * 0.1, width: view.frame.width * 0.5 - 20, height: view.frame.height * 0.2), getTitle: "오늘 받은 알림 개수", getContent: "일간 알림 개수 목표치는 15회입니다.", getColor: UIColor.white)
        view.addSubview(todayNoticeUIView)
        print("setNoticeNumView")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //상단 알림 개수 뷰 클래스
    class NoticeUIView: UIView {
        var num: Int!
        var title: String!
        var content: String!
        var noticeNumLabel: UILabel!
        
        init(frame: CGRect, getTitle: String, getContent: String, getColor: UIColor) {
            super.init(frame: frame)
            self.backgroundColor = UIColor.red
            self.layer.borderWidth = 0
            self.layer.cornerRadius = 10
            self.layer.shadowColor = UIColor.gray.cgColor
            self.title = getTitle
            self.content = getContent
            setLayOut()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setLayOut() {
            let titleLabel = UILabel(frame: CGRect(x: 10, y: 10, width: frame.width - 20, height: frame.height * 0.2))
            titleLabel.text = self.title
            titleLabel.textColor = UIColor(red: 30, green: 181, blue: 148, alpha: 1)
            addSubview(titleLabel)
            print("titleLabel")
            
            let contentLabel = UILabel(frame: CGRect(x: 10, y: frame.height * 0.2 + 20, width: frame.width - 20, height: frame.height * 0.1))
            contentLabel.text = self.content
            contentLabel.textColor = UIColor(red: 126, green: 213, blue: 194, alpha: 1)
            addSubview(contentLabel)
            print("contentLabel")

            noticeNumLabel = UILabel(frame: CGRect(x: 10, y: frame.height * 0.3 + 40, width: frame.width - 20, height: frame.height * 0.5))
            noticeNumLabel.textColor = UIColor(red: 30, green: 181, blue: 148, alpha: 1)
            addSubview(noticeNumLabel)
            print("noticeNumLabel")

        }
    }

    func setSwipeType(){
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(MainViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(MainViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.right:
                self.tabBarController?.selectedIndex = 0

            case UISwipeGestureRecognizerDirection.left:
                self.tabBarController?.selectedIndex = 2

            default:
                break
            }
        }
    }
}
