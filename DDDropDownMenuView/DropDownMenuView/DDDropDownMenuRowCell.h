//
//  DDDropDownMenuRowCell.h
//  Decoration
//
//  Created by DD on 2018/9/6.
//  Copyright © 2018年 shangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDDropDownMenuRowCell : UITableViewCell
/** <#注释#> */
@property (nonatomic, strong) NSString *brandName;
@property (nonatomic, strong) void(^clickTagBlock)(NSString *);
/** 选中的按钮 */
@property (nonatomic, strong) UIButton *selectButton;

- (void)setUI:(NSArray *)dataArray;
@end

@interface DDDropDownMenuRowCollectionCell : UICollectionViewCell
@property (nonatomic, strong) UIButton  *button;
@property (nonatomic, assign) BOOL      selectCell;
- (void)setupUI:(NSString *)text;



@end
