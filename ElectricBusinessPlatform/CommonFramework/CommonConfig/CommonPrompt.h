//
//  CommonVerb.h
//  SanCell
//
//  Created by Owen on 2019/5/20.
//  Copyright © 2019 Owen. All rights reserved.
//

#ifndef CommonVerb_h
#define CommonVerb_h

#define NoInstallOfWX @"微信未安装"

#define retMsg0 @"登陆失效"
#define retMsg1 @"请输入正确手机号"
#define retMsg2 @"确认两次密码输入一致"
#define retMsg3 @"密码等级太低，请重新设置"
#define retMsg4 @"网络连接失败"
#define retMsg5 @"请输入收件人"
#define retMsg6 @"请输入收货地址"
#define retMsg7 @"新建成功"
#define retMsg8 @"修改成功"
#define retMsg9 @"成功加入购物车"
#define retMsg10 @"微信未安装"
#define retMsg11 @"没有检测到您的支付软件"
#define retMsg12 @"请完善购买信息"
#define retMsg13 @"图片修改成功"
#define retMsg14 @"图片修改失败"
#define retMsg15 @"您已经是银猩会员了，请勿重复购买"
#define retMsg16 @"您已经是红猩会员了，请勿重复购买"
#define retMsg17 @"复制成功"
#define retMsg18 @"敬请期待"
#define retMsg19 @"缓存已清除"
#define retMsg20 @"恭喜您成为银猩会员"
#define retMsg21 @"恭喜您成为红猩会员"
#define retMsg22 @"购买失败"
#define retMsg23 @"商品发生变化，请重新检查一下吧"
#define retMsg24 @"确认两次新密码输入一致"
#define retMsg25 @"最低输入5个字"
#define retMsg26 @"请输入内容不超过500个字，已自动为您截取"
#define retMsg262 @"输入的内容不能超过50个字"
#define retMsg261 @"请输入内容不超过32个字，已自动为您截取"
#define retMsg27 @"请添加评论图片"
#define retMsg28 @"反馈成功"
#define retMsg29 @"请输入反馈内容"
#define retMsg30 @"请输入您的联系方式"
#define retMsg31 @"谢谢您的反馈，我们将及时处理"
#define retMsg32 @"请输入手机验证码"
#define retMsg33 @"该手机号已经注册"
#define retMsg34 @"库存数不足，已为您改为最大库存"

#define Inline static inline
#pragma mark --设置添加图片

Inline NSString * retMsg35(int index){
    
    return [NSString stringWithFormat:@"最多只能买%d件哦",index];
}

Inline NSString * retMsg36(int index){
    
    return [NSString stringWithFormat:@"最低购买%d件，已帮您做了修改",index];
}

Inline NSString * retMsg37(int index){
    
    return [NSString stringWithFormat:@"请输入内容不超过%d个字，已自动为您截取",index];
}

#endif /* CommonVerb_h */
