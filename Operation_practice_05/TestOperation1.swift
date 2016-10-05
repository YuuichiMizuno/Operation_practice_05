//
//  TestOperation1.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import Foundation


class TestOperation1 : Operation
{
    
    
    let intProperty : Int
    
    init( intProperty i : Int )
    {
        self.intProperty = i
        super.init()
    }
    
    override func main()
    {
//        if isCancelled
//        {
//            return
//        }
        
        // お手軽return式と本来の条件文の囲み どっちが良いだろうか
        
        if !isCancelled
        {
            Thread.sleep( forTimeInterval: 0.5)
            
            for i in 0...0
            {
                print("Operation1:: \(i) \(Thread.current)")
            }
            
        }
        else {
            print(" Canceled ")
        }
        
    }
    
    
}
