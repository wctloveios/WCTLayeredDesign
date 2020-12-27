//
//  WCTView.h
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WCTModel,WCTViewModel,WCTView;

@protocol WCTViewDelegate <NSObject>
- (void)wctViewDidClick:(WCTView*)view;
@end

@interface WCTView : UIView

@property (nonatomic, weak) id<WCTViewDelegate>delegate;
@property (nonatomic, weak) WCTViewModel *viewModel;
@property (nonatomic, weak) WCTModel *model;

@end

NS_ASSUME_NONNULL_END
