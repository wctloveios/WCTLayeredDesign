//
//  WCTView.h
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WCTModel,WCTView;

@protocol WCTViewDelegate <NSObject>
- (void)wctViewDidClick:(WCTView*)view;
@end

@interface WCTView : UIView

//@property (nonatomic, strong) UILabel *nameLabel;
//@property (nonatomic, strong) UILabel *ageLabel;
//@property (nonatomic, strong) UILabel *adressLabel;
//@property (nonatomic, strong) UILabel *descLabel;

@property (nonatomic, weak) id<WCTViewDelegate>delegate;

- (void)reloadViewWithModel:(WCTModel *)model;

@end

NS_ASSUME_NONNULL_END
