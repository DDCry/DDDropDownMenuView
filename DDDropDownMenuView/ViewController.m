//
//  ViewController.m
//  DDDropDownMenuView
//
//  Created by DD on 2018/9/11.
//  Copyright © 2018年 DD. All rights reserved.
//

#import "ViewController.h"
#import "DDDropDownMenuView.h"
@interface ViewController ()<DDDropDownMenuDataSource,DDDropDownMenuDelegate>
@property (nonatomic, strong) DDDropDownMenuView *menu;
@property (nonatomic, strong) NSMutableArray *stateNameArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.stateNameArray = [NSMutableArray arrayWithArray:@[@"全部客户",@"待审核",@"期房",@"暂时不装",@"已量房",@"已进店",@"跟踪中",@"已交定金",@"已签合同",@"跟踪中"]];
     [self creatDropDownView];
}

- (void)creatDropDownView {
    _menu = [[DDDropDownMenuView alloc] initWithOrigin:CGPointMake(0, 64) andHeight:40];
    _menu.delegate = self;
    _menu.dataSource = self;
    [self.view addSubview:_menu];

    _menu.finishedBlock=^(DDIndexPath *indexPath){
        NSLog(@"收起:点击了 %ld - %ld",indexPath.column,indexPath.row);


    };
    [_menu selectIndexPath:[DDIndexPath indexPathWithCol:0 row:0]];
}

#pragma mark - DDDropDownMenuViewDataSource and DDDropDownMenuViewDelegate
- (NSInteger)numberOfColumnsInMenu:(DDDropDownMenuView *)menu{
    return 1;
}

- (NSInteger)menu:(DDDropDownMenuView *)menu numberOfRowsInColumn:(NSInteger)column{
    return self.stateNameArray.count;

}

- (NSString *)menu:(DDDropDownMenuView *)menu titleForRowAtIndexPath:(DDIndexPath *)indexPath{
    return self.stateNameArray[indexPath.row];

}
- (NSArray *)menu:(DDDropDownMenuView *)menu arrayForRowAtIndexPath:(DDIndexPath *)indexPath{
    return self.stateNameArray;

}

- (void)menu:(DDDropDownMenuView *)menu didSelectRowAtIndexPath:(DDIndexPath *)indexPath{

    NSLog(@"点击了 %ld - %ld",indexPath.column,indexPath.row);
}

- (void)didTapMenu:(DDDropDownMenuView *)menu{
    NSLog(@"点击了菜单");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
