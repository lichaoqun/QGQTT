#line 1 "/Users/lichaoqun/Desktop/QG_QTT/QG_QTTDylib/Logos/QG_QTTDylib.xm"


#import <UIKit/UIKit.h>
#import "DYUserDefault.h"
#import "LLDBTools.h"

#pragma mark -

@interface articlePieChartView

- (void)scrollViewBeginDecelerating;

@end

@interface Native_ContentViewController

@property(nonatomic, weak) articlePieChartView *pieChartView;

- (void)closeAction;

-(void)autoPop;

-(void)onTimerDo;

@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ChannelsViewController; @class LCTableViewManager; @class Native_VideoViewController; @class QKContentViewController; @class LCTabbarController; @class ChannelViewController; @class Native_ContentViewController; 
static void (*_logos_orig$_ungrouped$Native_ContentViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_ContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_ContentViewController$onTimerDo(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Native_ContentViewController$pieChartFull$)(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$Native_ContentViewController$pieChartFull$(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL, float); static void (*_logos_orig$_ungrouped$Native_ContentViewController$closeAction)(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_ContentViewController$closeAction(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Native_ContentViewController$showPieChartView)(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_ContentViewController$showPieChartView(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_ContentViewController$autoPop(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$QKContentViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL QKContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$QKContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL QKContentViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Native_VideoViewController$pieChartFull$)(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$Native_VideoViewController$pieChartFull$(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST, SEL, float); static void (*_logos_orig$_ungrouped$Native_VideoViewController$showPieChartView)(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$Native_VideoViewController$showPieChartView(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LCTableViewManager$setIndex$(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST, SEL, NSIndexPath *); static NSIndexPath * _logos_method$_ungrouped$LCTableViewManager$getIndexPath(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$ChannelViewController$autoGoDetailView(_LOGOS_SELF_TYPE_NORMAL ChannelViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$ChannelsViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$ChannelsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$ChannelsViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$ChannelsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void (*_logos_orig$_ungrouped$LCTabbarController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL LCTabbarController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LCTabbarController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LCTabbarController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LCTabbarController$swichange$(_LOGOS_SELF_TYPE_NORMAL LCTabbarController* _LOGOS_SELF_CONST, SEL, UISwitch *); 

#line 27 "/Users/lichaoqun/Desktop/QG_QTT/QG_QTTDylib/Logos/QG_QTTDylib.xm"


static void _logos_method$_ungrouped$Native_ContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$Native_ContentViewController$viewDidLoad(self, _cmd);
    
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:0], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self autoPop];
    });
}


static void _logos_method$_ungrouped$Native_ContentViewController$onTimerDo(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    [self.pieChartView scrollViewBeginDecelerating];
}

static void _logos_method$_ungrouped$Native_ContentViewController$pieChartFull$(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1){
    _logos_orig$_ungrouped$Native_ContentViewController$pieChartFull$(self, _cmd, arg1);
    if(![DYUserDefault boolForKey:autoKey]) return;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}

static void _logos_method$_ungrouped$Native_ContentViewController$closeAction(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$Native_ContentViewController$closeAction(self, _cmd);
    NSTimer *timer = objc_getAssociatedObject(self, [@"timerKey" UTF8String]);
    [timer invalidate];
    timer = nil;
}

static void _logos_method$_ungrouped$Native_ContentViewController$showPieChartView(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$Native_ContentViewController$showPieChartView(self, _cmd);
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:1], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


static void _logos_method$_ungrouped$Native_ContentViewController$autoPop(_LOGOS_SELF_TYPE_NORMAL Native_ContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if(![DYUserDefault boolForKey:autoKey]) return;
    NSNumber *hasProgresskey =  objc_getAssociatedObject(self, [@"hasProgressKey" UTF8String]);
    if (![hasProgresskey boolValue]) {
        [self closeAction];
    }else{
        NSTimer *timer =  [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(onTimerDo) userInfo:nil repeats:YES];
        objc_setAssociatedObject(self, [@"timerKey" UTF8String], timer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}



@interface QKContentViewController

- (void)closeAction;

@end


static void _logos_method$_ungrouped$QKContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL QKContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$QKContentViewController$viewDidLoad(self, _cmd);
    objc_setAssociatedObject(self, [@"hasProgressKey" UTF8String], [NSNumber numberWithBool:0], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}


#pragma mark -
@interface Native_VideoViewController

- (void)closeAction;

@end



static void _logos_method$_ungrouped$Native_VideoViewController$pieChartFull$(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1){
    _logos_orig$_ungrouped$Native_VideoViewController$pieChartFull$(self, _cmd, arg1);
    if(![DYUserDefault boolForKey:autoKey]) return;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)( 5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self closeAction];
    });
}

static void _logos_method$_ungrouped$Native_VideoViewController$showPieChartView(_LOGOS_SELF_TYPE_NORMAL Native_VideoViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$Native_VideoViewController$showPieChartView(self, _cmd);
}



#pragma mark -
@interface  LCTableViewManager

@property(retain, nonatomic) UITableView *tableView;

-(void)setIndex:(NSIndexPath *)indexPath;

- (NSIndexPath *)getIndexPath;


- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;

- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;

@end




static void _logos_method$_ungrouped$LCTableViewManager$setIndex$(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSIndexPath * indexPath){
    objc_setAssociatedObject(self, [@"indexKey" UTF8String], indexPath, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


static NSIndexPath * _logos_method$_ungrouped$LCTableViewManager$getIndexPath(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    return objc_getAssociatedObject(self, [@"indexKey" UTF8String]);
}


static void _logos_method$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL LCTableViewManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    _logos_orig$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$(self, _cmd, arg1, arg2);
    [self setIndex:arg2];
}




@interface  ChannelViewController

@property(retain, nonatomic) LCTableViewManager *tableManager;

- (void)autoGoDetailView;

@end




static void _logos_method$_ungrouped$ChannelViewController$autoGoDetailView(_LOGOS_SELF_TYPE_NORMAL ChannelViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if(![DYUserDefault boolForKey:autoKey]) return;
    
    NSIndexPath *origIndexPath = [self.tableManager getIndexPath];
    if (!origIndexPath) return;
    
    NSIndexPath *nextIndexPath =  [NSIndexPath indexPathForRow:origIndexPath.row + 1 inSection:origIndexPath.section];
    
    [self.tableManager.tableView scrollToRowAtIndexPath:nextIndexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    
    
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







@interface  ChannelsViewController

@property(retain, nonatomic) NSMutableDictionary *allControllers;
@property(nonatomic) long long countDown;
- (void)didClickRewardItem:(id)arg1;

@end



static void _logos_method$_ungrouped$ChannelsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$ChannelsViewController$viewDidLoad(self, _cmd);
}


static void _logos_method$_ungrouped$ChannelsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL ChannelsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    _logos_orig$_ungrouped$ChannelsViewController$viewDidAppear$(self, _cmd, arg1);
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



@interface LCTabbarController


@property (nonatomic, strong) UIView *view;

-(void)swichange:(UISwitch *)sender;


@end



static void _logos_method$_ungrouped$LCTabbarController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LCTabbarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$LCTabbarController$viewDidLoad(self, _cmd);
    CGFloat wid = 51, hei = 31;
    CGFloat navHei = 64;
    UISwitch *swit = [[UISwitch alloc] initWithFrame:CGRectMake(self.view.frame.size.width - wid - 12, (navHei - hei) / 2 + 10, wid, hei)];
    swit.transform = CGAffineTransformMakeScale(0.8, 0.8);
    swit.on = [DYUserDefault boolForKey:autoKey];
    [swit addTarget:self action:@selector(swichange:) forControlEvents:UIControlEventValueChanged];
    [[self view] addSubview:swit];
}


static void _logos_method$_ungrouped$LCTabbarController$swichange$(_LOGOS_SELF_TYPE_NORMAL LCTabbarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * sender){
    [DYUserDefault setBool:sender.on forKey:autoKey];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$Native_ContentViewController = objc_getClass("Native_ContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$Native_ContentViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$Native_ContentViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$Native_ContentViewController, @selector(onTimerDo), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$onTimerDo, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$Native_ContentViewController, @selector(pieChartFull:), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$pieChartFull$, (IMP*)&_logos_orig$_ungrouped$Native_ContentViewController$pieChartFull$);MSHookMessageEx(_logos_class$_ungrouped$Native_ContentViewController, @selector(closeAction), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$closeAction, (IMP*)&_logos_orig$_ungrouped$Native_ContentViewController$closeAction);MSHookMessageEx(_logos_class$_ungrouped$Native_ContentViewController, @selector(showPieChartView), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$showPieChartView, (IMP*)&_logos_orig$_ungrouped$Native_ContentViewController$showPieChartView);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$Native_ContentViewController, @selector(autoPop), (IMP)&_logos_method$_ungrouped$Native_ContentViewController$autoPop, _typeEncoding); }Class _logos_class$_ungrouped$QKContentViewController = objc_getClass("QKContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$QKContentViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$QKContentViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$QKContentViewController$viewDidLoad);Class _logos_class$_ungrouped$Native_VideoViewController = objc_getClass("Native_VideoViewController"); MSHookMessageEx(_logos_class$_ungrouped$Native_VideoViewController, @selector(pieChartFull:), (IMP)&_logos_method$_ungrouped$Native_VideoViewController$pieChartFull$, (IMP*)&_logos_orig$_ungrouped$Native_VideoViewController$pieChartFull$);MSHookMessageEx(_logos_class$_ungrouped$Native_VideoViewController, @selector(showPieChartView), (IMP)&_logos_method$_ungrouped$Native_VideoViewController$showPieChartView, (IMP*)&_logos_orig$_ungrouped$Native_VideoViewController$showPieChartView);Class _logos_class$_ungrouped$LCTableViewManager = objc_getClass("LCTableViewManager"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LCTableViewManager, @selector(setIndex:), (IMP)&_logos_method$_ungrouped$LCTableViewManager$setIndex$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LCTableViewManager, @selector(getIndexPath), (IMP)&_logos_method$_ungrouped$LCTableViewManager$getIndexPath, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$LCTableViewManager, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$LCTableViewManager$tableView$didSelectRowAtIndexPath$);Class _logos_class$_ungrouped$ChannelViewController = objc_getClass("ChannelViewController"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$ChannelViewController, @selector(autoGoDetailView), (IMP)&_logos_method$_ungrouped$ChannelViewController$autoGoDetailView, _typeEncoding); }Class _logos_class$_ungrouped$ChannelsViewController = objc_getClass("ChannelsViewController"); MSHookMessageEx(_logos_class$_ungrouped$ChannelsViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$ChannelsViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$ChannelsViewController$viewDidLoad);MSHookMessageEx(_logos_class$_ungrouped$ChannelsViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$ChannelsViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$ChannelsViewController$viewDidAppear$);Class _logos_class$_ungrouped$LCTabbarController = objc_getClass("LCTabbarController"); MSHookMessageEx(_logos_class$_ungrouped$LCTabbarController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$LCTabbarController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$LCTabbarController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LCTabbarController, @selector(swichange:), (IMP)&_logos_method$_ungrouped$LCTabbarController$swichange$, _typeEncoding); }} }
#line 254 "/Users/lichaoqun/Desktop/QG_QTT/QG_QTTDylib/Logos/QG_QTTDylib.xm"
