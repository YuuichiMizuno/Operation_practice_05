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
    
    override init()
    {
        self.isExistUser = false
        super.init()
    }
    
    override func main()
    {
        // チェック処理があったとして
        self.isExistUser = true
    }
    
    func getResultValue() -> Bool
    {
        return self.isExistUser
    }
    
}
