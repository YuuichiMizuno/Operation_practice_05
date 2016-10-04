//
//  TestService1.swift
//  Operation_practice_05
//
//  Created by yuichi.watanabe on 2016/10/04.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//
/* viewControllerが呼び出す、処理の集まった機能群を想定
 * このクラスは、業務要件に沿ったアクティビティを実現させるために
 * 複数のOperationを制御して実現させる
 * サービス指向の構築でクラス設計してみる
 */
/* 例：ログイン認証
 * 1.ユーザーが存在するか(ID/PW) ? 存在する : 存在しない
 * 2.権限が存在するか ? ユーザーの権限あり : ユーザーの権限なし
 */
/* 例：出社準備
 * 1.顔を洗う
 * 2.健康 ? 健康 : 病気
 * 2-false. 病気の報告 -> 終了
 * 2-true. 並列　新聞を読む　＆　(朝食を食べる -> 歯を磨く)
 * 3. 服を着替える
 */
/* 例：顧客IDの採番
 * 1.顧客区分を取得する ? 企業 : 個人
 * 1-false. 個人の最終番号を取得
 * 1-true. 企業の最終番号を取得
 * 2. 次の番号を算出する
 * 3. 番号に顧客区分の文字列を付加する
 * 4. その番号 return
 */

import Foundation


class TestService1 : NSObject
{
    
}
