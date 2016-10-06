//
//  TestOperation4.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import Foundation


class TestOperation4 : Operation
{
    var isAuthorityUser : Bool
    
    override init()
    {
        self.isAuthorityUser = false
        super.init()
    }
    
    override func main()
    {
        // なんらかのチェック処理があるとして
        isAuthorityUser = true
        print("Operation4:main: \(isAuthorityUser) \(Thread.current)")
    }
    
    
    func getResultValue() -> Bool
    {
        print("Operation4:result: \(isAuthorityUser) \(Thread.current)")
        return self.isAuthorityUser
    }
    
}
