//
//  TestOperation2.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import Foundation


class TestOperation2 : Operation
{
    let intProperty : Int
    var intReturnVal: Int
    
    init( intProperty i : Int )
    {
        self.intProperty  = i
        self.intReturnVal = 0 // 初期値
        super.init()
    }
    
    override func main()
    {
        if isCancelled
        {
            return
        }
        
        for i in 0...0
        {
            print("Operation2:: \(i) \(Thread.current)")
        }
    }
}
