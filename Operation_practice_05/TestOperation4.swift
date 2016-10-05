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
    }
    
    override func main()
    {
        // なんらかのチェック処理があるとして
        isAuthorityUser = true
    }
    
    
    func getResultValue() -> Bool
    {
        return self.isAuthorityUser
    }
    
}
