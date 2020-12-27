//
//  WCTViewModel.h
//  WCT-MVVM
//
//  Created by wct on 2020/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTViewModel : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,weak) UIViewController *vc;

- (instancetype)initWithController:(UIViewController *)vc;

@end

NS_ASSUME_NONNULL_END
