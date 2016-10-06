//
//  TestOperation3.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import Foundation


class TestOperation3 : Operation
{
    var isExistUser : Bool
    var isAuthorityUser : Bool // notice: 直列で実行したいため、最終結果も一番フロントのOperationが持つことに
    
    override init()
    {
        self.isExistUser = false
        self.isAuthorityUser = false
        super.init()
    }
    
    override func main()
    {
        // チェック処理があったとして
        self.isExistUser = true
        print("Operation3:main: \(isExistUser) \(Thread.current)")
        
        // memo: 直列で行いたがために、キューを使わないならoperationの中にoperationを持つことに
        let operation4 = TestOperation4() // 引数にユーザーIDがあったとして
            operation4.start()
        
        if  operation4.getResultValue() {
            self.isAuthorityUser = true
        }
    }
    
    func getResultValue() -> Bool
    {
        print("Operation3:result: \(isAuthorityUser) \(Thread.current)")
        return self.isAuthorityUser
    }
    
}
