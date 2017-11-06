//
//  JFHeader.h
//  LayoutiPhoneX
//
//  Created by M Jiang on 2017/11/6.
//  Copyright © 2017年 JiangFallen. All rights reserved.
//

#ifndef JFHeader_h
#define JFHeader_h

#define IOS11_OR_LATER_SPACE(par) \
({\
float space = 0.0;\
if (@available(iOS 11.0, *))\
space = par;\
(space);\
})

#define JF_KEY_WINDOW [UIApplication sharedApplication].keyWindow
#define JF_TOP_SPACE IOS11_OR_LATER_SPACE(JF_KEY_WINDOW.safeAreaInsets.top)
#define JF_TOP_ACTIVE_SPACE IOS11_OR_LATER_SPACE(MAX(0, JF_KEY_WINDOW.safeAreaInsets.top-20))
#define JF_BOTTOM_SPACE IOS11_OR_LATER_SPACE(JF_KEY_WINDOW.safeAreaInsets.bottom)

#endif /* JFHeader_h */
