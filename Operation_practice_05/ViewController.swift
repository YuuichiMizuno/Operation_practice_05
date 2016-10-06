//
//  ViewController.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//
/* このProjectでは以下を試す
 * operation1.完了時のタイミングで別の処理を行うサンプル
 * operation2.実施後に結果の値を受け取るサンプル
 * //3.依存性を利用して1->2の設定にして、2から実行させてみる キューでのみの機能？
 * 4-Service.Operationを管理・実施するクラスから想定したアクテビティを再現してみる
 */


import UIKit

class ViewController: UIViewController
{

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    override func viewDidAppear(_ animated: Bool)
    {
        execOperation1()
    }
    
    
    
    // @Private
    
    fileprivate func execOperation1()
    {
        //
        let operation1 = TestOperation1( intProperty: 1)
        let operation2 = TestOperation2( intProperty: 2)
        let service1   = TestService1( intProperty: 1)
        
            //operation1.waitUntilFinished() // ... コルーチン !? 実施されない ?!
            operation1.completionBlock = {          // test2 ... 完了時のタイミングで処理
                
                print("operation1 : Completion: '\(operation1.intProperty)' \(Thread.current)")

                DispatchQueue.main.async
                {
                    operation2.start()
                }
            }                                       // test2 ... 値も取り出せる
            //operation1.cancel() // test1
            //operation1.main()   // test1 ... 直接mainはcancelを無視する
            operation2.completionBlock = {
                
                DispatchQueue.main.async
                {
                    //let result = service1.loginAuthentication() // 戻り値で結果を受け取ろうとしてもいきなり最後に到達
                    //print( "loginAuthentication = \(result)" )  //
                    service1.loginAuthentication()
                    
                }
            }
        
            operation1.start()
    }
    

}

