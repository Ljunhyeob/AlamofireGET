//
//  ViewController.swift
//  AlamofireTest
//
//  Created by 이준협 on 2023/01/01.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getTest()
    }
    
    
    func getTest() {
        let url = "https://jsonplaceholder.typicode.com/todos/1" //주소입력
               AF.request(url,
                          method: .get,
                          parameters: nil,
                          encoding: URLEncoding.default,
                          headers: ["Content-Type":"application/json", "Accept":"application/json"])
                   .validate(statusCode: 200..<300)
                   .responseJSON { (json) in
                       print(json)
                       //여기서 받아온 데이터로 무엇을 할지 작성하시면 됩니다.
               }
        
        //method : 통신방식
        //parametrs : 보낼 데이터 값
        //encoding : URLEncoding
        //headers : 어떤형식으로 받을지
        //validate : 확인코드
        //responseJSON : 데이터 받는 부분
    }
    
    
    



}

