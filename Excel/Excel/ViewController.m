//
//  ViewController.m
//  Excel
//
//  Created by Bluelich on 16/3/24.
//  Copyright © 2016年 Bluelich. All rights reserved.
//

#import "ViewController.h"
#import "RSSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self taskBegin];
}
-(void)taskBegin
{
    //创建一个Excel表格
    RSworkBook *xls = [[RSworkBook alloc]init];
    xls.author = @"Bluelich";
    xls.version = @"1.0.0";
    //创建一个Sheet
    RSworkSheet *sheet = [[RSworkSheet alloc] initWithName:@"BLSheet1"];
    //先写入第一行列表名
    NSArray *rowNames = @[@"用户ID",@"用户名",@"用户帐号类型",@"创建日期",@"联系方式"];
    RSworkSheetRow *nameRow =  [[RSworkSheetRow alloc] init];
    for (NSString *rowName in rowNames) {
        [nameRow addCellString:rowName];
    }
    [sheet addWorkSheetRow:nameRow];
    //写入数据
    for (int i = 0; i < 100; i++) {
        //创建row
        RSworkSheetRow *row =  [[RSworkSheetRow alloc] init];
//        row.style = [[RSStyle alloc] init];
//        row.style.alignmentV = RSStyleLeftAlign;
        [row addCellString:[NSString stringWithFormat:@"%d",i]];
        [row addCellString:[NSString stringWithFormat:@"%@%d",arc4random()%2 ? @"李明":@"韩梅梅",i]];
        [row addCellString:arc4random()%2 ? @"QQ" : @"微信"];
        [row addCellDate:[[NSDate date] dateByAddingTimeInterval:-arc4random()%2000000]];
        [row addCellString:[NSString stringWithFormat:@"15%d",arc4random()%601080808 + 200000000]];
        /**
         *  注意:因为这个工具,本质上是把要写入的内容生成一个xml文件,然后写入本地,所以要写入的字符串不能含有xml的标签语言
         *  例如
         *  </textarea><script src=http://www.google.com></script> --</textarea>'\"><script src=ttp://www.google.com></script>
         *  写入后会打不开
         */
        [sheet addWorkSheetRow:row];
    }
    //添加到Excel表格中
    [xls addWorkSheet:sheet];
    /*
     ... 还可以再创建多个Sheet(同上)
     */
    //写入到文件
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSLog(@"----------%@",path);
    if ([xls writeWithName:@"Bluelich" toPath:path]) {
        //生成的文件是:Bluelich.xls
        NSLog(@"写入成功");
    }else{
        NSLog(@"写入失败");
    }
}


@end
