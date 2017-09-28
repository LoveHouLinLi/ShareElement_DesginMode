//
//  ExtrinsicFlowerState.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#ifndef ExtrinsicFlowerState_h
#define ExtrinsicFlowerState_h

typedef struct {
    __unsafe_unretained UIView *flowerView;  //
    CGRect area;
}ExtrinsicFlowerState;


#endif /* ExtrinsicFlowerState_h */

/*
 在ARC环境下，在结构体中使用objc对象，必须使用_unsafe_unretained，这个是苹果的规定。
 
 typedef struct pinyinTableCell{
 __unsafe_unretained NSString * pinyin;
 __unsafe_unretained NSString * hanzi;
 }pinyinTableCell; 
 */
