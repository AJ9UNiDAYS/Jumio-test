//
//  NetswipeTitleImageView.h
//
//  Copyright © 2016 Jumio Corporation All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NetverifyViewController.h"

@interface NetverifyNavigationBarTitleImageView : UIImageView <NetverifyAppearance>

@property (nonatomic, strong) UIImage *titleImage UI_APPEARANCE_SELECTOR;

@end
