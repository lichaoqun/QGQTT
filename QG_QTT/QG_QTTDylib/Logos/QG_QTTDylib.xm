// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#import "DYUserDefault.h"
#import "LLDBTools.h"

#pragma mark -/** *** 文字的详情页 *** */

@interface articlePieChartView

- (void)scrollViewBeginDecelerating;

@end

@interface Native_ContentViewController

@property(nonatomic, weak) articlePieChartView *pieChartView;

- (void)closeAction;

-(void)autoPop;

-(void)onTimerDo;

@end

%hook Native_ContentViewController

- (void)viewDidLoad{
    %orig;
    
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:0], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self autoPop];
    });
}

%new
-(void)onTimerDo{
    [self.pieChartView scrollViewBeginDecelerating];
}

- (void)pieChartFull:(float)arg1{
    %orig;
    if(![DYUserDefault boolForKey:autoKey]) return;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}

- (void)closeAction{
    %orig;
    NSTimer *timer = objc_getAssociatedObject(self, [@"timerKey" UTF8String]);
    [timer invalidate];
    timer = nil;
}

-(void)showPieChartView{
    %orig;
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:1], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

%new
-(void)autoPop{
    if(![DYUserDefault boolForKey:autoKey]) return;
    NSNumber *hasProgresskey =  objc_getAssociatedObject(self, [@"hasProgressKey" UTF8String]);
    if (![hasProgresskey boolValue]) {
        [self closeAction];
    }else{
        NSTimer *timer =  [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(onTimerDo) userInfo:nil repeats:YES];
        objc_setAssociatedObject(self, [@"timerKey" UTF8String], timer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

%end

@interface QKContentViewController

- (void)closeAction;

@end
%hook QKContentViewController

- (void)viewDidLoad{
    %orig;
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:0], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}

%end
#pragma mark -/** *** 视频的详情页 *** */
@interface Native_VideoViewController

- (void)closeAction;

@end

%hook Native_VideoViewController

-(void)pieChartFull:(float)arg1{
    %orig;
    if(![DYUserDefault boolForKey:autoKey]) return;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)( 5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}

-(void)showPieChartView{
    %orig;
}
%end


#pragma mark -/** *** tableview 的 manager *** */
@interface  LCTableViewManager

@property(retain, nonatomic) UITableView *tableView;

-(void)setIndex:(NSIndexPath *)indexPath;

- (NSIndexPath *)getIndexPath;


- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;

- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;

@end

%hook  LCTableViewManager

%new
-(void)setIndex:(NSIndexPath *)indexPath{
    objc_setAssociatedObject(self, [@"indexKey" UTF8String], indexPath, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

%new
- (NSIndexPath *)getIndexPath{
    return objc_getAssociatedObject(self, [@"indexKey" UTF8String]);
}


- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2{
    %orig;
    [self setIndex:arg2];
}

%end

// - 主页的子视图控制器
@interface  ChannelViewController

@property(retain, nonatomic) LCTableViewManager *tableManager;

- (void)autoGoDetailView;

@end

%hook ChannelViewController

%new
- (void)autoGoDetailView{
    
    if(![DYUserDefault boolForKey:autoKey]) return;
    // - 获取需要滑动到的位置
    NSIndexPath *origIndexPath = [self.tableManager getIndexPath];
    if (!origIndexPath) return;
    
    NSIndexPath *nextIndexPath =  [NSIndexPath indexPathForRow:origIndexPath.row + 1 inSection:origIndexPath.section];
    // - 滑动到指定的位置
    [self.tableManager.tableView scrollToRowAtIndexPath:nextIndexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    
    // - 选中第一个顶部的行
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UITableViewCell *cell =  [self.tableManager tableView:self.tableManager.tableView cellForRowAtIndexPath:nextIndexPath];
        if (![cell isKindOfClass: NSClassFromString(@"QKContentAdvertCell")]){
            [self.tableManager tableView:self.tableManager.tableView didSelectRowAtIndexPath:nextIndexPath];
        }else{
            [self.tableManager setIndex:nextIndexPath];
            [self  autoGoDetailView];
        }
    });
}

%end




// - 主页
@interface  ChannelsViewController

@property(retain, nonatomic) NSMutableDictionary *allControllers;
@property(nonatomic) long long countDown;
- (void)didClickRewardItem:(id)arg1;

@end

%hook ChannelsViewController

-(void)viewDidLoad{
    %orig;
}

// - 页面出现时候 判断当前是不是有没有领取的的金币  如果有则领取后在跳转到到详情页 如果没有就直接跳转
- (void)viewDidAppear:(_Bool)arg1{
    %orig;
    [UIApplication sharedApplication].idleTimerDisabled = YES;
    if (self.countDown == 0){
        [self didClickRewardItem:nil];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            ChannelViewController *vc = [self.allControllers.allValues firstObject];
            [vc autoGoDetailView];
        });
    }else{
        ChannelViewController *vc = [self.allControllers.allValues firstObject];
        [vc autoGoDetailView];
    }
}

%end

@interface LCTabbarController

/** <#注释#> */
@property (nonatomic, strong) UIView *view;

-(void)swichange:(UISwitch *)sender;


@end

%hook LCTabbarController

- (void)viewDidLoad{
    %orig;
    CGFloat wid = 51, hei = 31;
    CGFloat navHei = 64;
    UISwitch *swit = [[UISwitch alloc] initWithFrame:CGRectMake(self.view.frame.size.width - wid - 12, (navHei - hei) / 2 + 10, wid, hei)];
    swit.transform = CGAffineTransformMakeScale(0.8, 0.8);
    swit.on = [DYUserDefault boolForKey:autoKey];
    [swit addTarget:self action:@selector(swichange:) forControlEvents:UIControlEventValueChanged];
    [[self view] addSubview:swit];
}

%new
-(void)swichange:(UISwitch *)sender{
    [DYUserDefault setBool:sender.on forKey:autoKey];
}

%end
