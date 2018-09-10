//
//  ViewController.m
//  二分查找
//
//  Created by homaer on 2018/9/10.
//  Copyright © 2018 com.liupan.www. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[@1,@3,@4,@5,@7,@8,@9,@10,@12];
    NSInteger intger = (NSInteger)@7;
    NSLog(@"%ld",[self binarySearch:array item:intger]);
}

/**
 二分查找

 @param array 数据源
 @param item 目标元素
 @return 返回索引
 */
- (NSInteger)binarySearch:(NSArray *)array item:(NSInteger)item {
    
    // 第一个索引
    NSInteger low = 0;
    // 最后一个索引
    NSInteger high = array.count -1;
    // 当范围缩小到一个元素的时候
    while (low <= high) {
        // 获取数据源中间索引
        NSInteger mid = (low + high) / 2;
        // 获取中间对应索引的元素
        NSInteger result = (NSInteger)array[mid];
        
        if (result == item) { // 找到元素
            return mid;
        }else if (result < item) { // 结果小于目标元素
            low = mid +1;
        }else { // 结果大于目标元素
            high = mid -1;
        }
    }
    return -1;
}


@end
