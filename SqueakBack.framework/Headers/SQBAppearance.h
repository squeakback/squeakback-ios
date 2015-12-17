//
//  SQBAppearance.h
//  SqueakBack
//
//  Created by Ray Fix on 12/14/15.
//  Copyright © 2015 Pelfunc, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  An appearance property class.  Nil values mean defaults will be used.
 *  Every property set to nil on default.  Only certain account types may use this
 *  API.  If the receiving account does not support appearance customization,
 *  these values will be ignored.
 */
@interface SQBAppearance : NSObject

/**
 *  Initialize custom appearance properties all as nil (so they get their defaults).
 */
- (nonnull instancetype)init;

/**
 *  Color of the navigation bar color.
 */
@property (nonatomic, strong, nullable) UIColor* navBarColor;

/**
 *  Color of the text in the navigation bar.
 */
@property (nonatomic, strong, nullable) UIColor* navBarTextColor;

/**
 *  Title view for navigation bar.
 */
@property (nonatomic, strong, nullable) UIView* navBarTitleView;

/**
 *  Default style
 */
@property (nonatomic, assign) UIBarStyle navBarStyle;

@end
