//
//  BaseModelManager.m
//  SanCell
//
//  Created by Owen on 2019/5/14.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseModelManager.h"
#import "UserObj.h"
#import "UserOrderObj.h"
#import "SSActivityConfig.h"

@implementation BaseModelManager

//- (void) saveUserMessage:(BaseResultObj *) obj{
//
//
//    if (obj.retData.user.vipPeriodOfValidity.length > 0) {
//
//        [[DataManager lightData] saveVipPeriodOfValidity:obj.retData.user.vipPeriodOfValidity];
//    }
//
//    [[DataManager lightData] saveAddTransactionPasswdStatus:obj.retData.user.addTransactionPasswdStatus];
//    [[DataManager lightData] saveAddPasswordStatus:obj.retData.user.addPasswordStatus];
//    [[DataManager lightData] saveUserImage:obj.retData.user.gravatar];
//    [[DataManager lightData] saveMemberLevel:obj.retData.user.realMemberLevel];
//    [[DataManager lightData] saveMobile:obj.retData.user.mobile];
//    [[DataManager lightData] saveNickName:obj.retData.user.nickName];
//    [[DataManager lightData] saveUserId:obj.retData.user.userId];
//    [[DataManager lightData] saveBirthday:obj.retData.user.userInfo.birthday];
//    [[DataManager lightData] saveUserGender:obj.retData.user.userInfo.gender];
//    [[DataManager lightData] saveUserGenderStr:obj.retData.user.userInfo.genderStr];
//    [[DataManager lightData] saveCurrentOrderID:obj.retData.memberVipOrderParcelInfo.orderId];
//    [[DataManager lightData] saveCurrentParcelID:obj.retData.memberVipOrderParcelInfo.parcelId];
//    if (obj.retData.user) {
//        [[DataManager lightData] savePointE2:obj.retData.user.pointE2];
//        [[DataManager lightData] saveFreezePointE2:obj.retData.user.freezePointE2];
//        [[DataManager lightData] savePointRollE2:obj.retData.user.pointRollE2];
//        [[DataManager lightData] saveCurrentVouchersNum:obj.retData.user.couponCount];
//    } else {
//        [[DataManager lightData] savePointE2:obj.retData.pointE2];
//        [[DataManager lightData] saveFreezePointE2:obj.retData.freezePointE2];
//        [[DataManager lightData] savePointRollE2:obj.retData.pointRollE2];
//        [[DataManager lightData] saveCurrentVouchersNum:obj.retData.couponCount];
//    }
//    [[DataManager lightData] saveUserSaveCost:obj.retData.economyMoneyE2];
//    [[DataManager lightData] saveisOldUser:obj.retData.isOldUser];
//    [[DataManager lightData] saveinviteFromUid:obj.retData.inviteFromUid];
//    [[DataManager lightData] saveMActivityDataTitle:obj.retData.mActivityData.title];
//    [[DataManager lightData] saveMActivityDataDesc:obj.retData.mActivityData.desc];
//    [[DataManager lightData] saveMActivityDataLink:obj.retData.mActivityData.link];
//    [[DataManager lightData] saveMActivityDataPicTitle:obj.retData.mActivityData.picTitle];
//    [[DataManager lightData] saveMActivityDataLogoUrl:obj.retData.mActivityData.logoUrl];
//    [[DataManager lightData] saveMActivityDataIsShow:obj.retData.mActivityData.isShow];
//    [[DataManager lightData] saveMOneDollarLogoUrl:obj.retData.mActivityOneDollarData.logoUrl];
//    [[DataManager lightData] saveMOneDollarDataTitle:obj.retData.mActivityOneDollarData.title];
//    [[DataManager lightData] saveMOneDollarDataDesc:obj.retData.mActivityOneDollarData.desc];
//    [[DataManager lightData] saveMOneDollarDataLink:obj.retData.mActivityOneDollarData.link];
//    [[DataManager lightData] saveMActivityInviteDataDesc:obj.retData.mActivityInviteData.desc];
//    [[DataManager lightData] saveMActivityInviteDataLink:obj.retData.mActivityInviteData.link];
//    [[DataManager lightData] saveMActivityInviteDataTitle:obj.retData.mActivityInviteData.title];
//    [[DataManager lightData] saveMActivityInviteDataIsShow:obj.retData.mActivityInviteData.isShow];
//
//
//
//    if (obj.retData.mActivityInviteData.codeUrl.length > 0 && ![obj.retData.mActivityInviteData.codeUrl isEqualToString:[[DataManager lightData] readMActivityInviteCodeUrl]]) {
//
//        [[DataManager lightData] saveMActivityInviteCodeUrl:obj.retData.mActivityInviteData.codeUrl];
//
//        NSString*path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) lastObject];
//        // 拼接图片名为"currentImage.png"的路径
//
//        NSString*imageFilePath = [path stringByAppendingPathComponent:@"posterImage.png"];
//        //获取网络请求中的url地址
//
//        NSString*url = obj.retData.mActivityInviteData.codeUrl;
//
//        NSData*data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
//
//        //转换为图片保存到以上的沙盒路径中
//
//        UIImage* currentImage = [UIImage imageWithData:data];
//
//        //其中参数0.5表示压缩比例，1表示不压缩，数值越小压缩比例越大
//        [UIImageJPEGRepresentation(currentImage, 1) writeToFile:imageFilePath  atomically:YES];
//
//    }
//
//}

//- (void) removeAllUserInfo{
//    
//    
//    [[DataManager lightData] removeSkey];
//    [[DataManager lightData] removeAddTransactionPasswdStatus];
//    [[DataManager lightData] removeAddPasswordStatus];
//    [[DataManager lightData] removeGravatar];
//    [[DataManager lightData] removeMemberLevel];
//    [[DataManager lightData] removeMobile];
//    [[DataManager lightData] removeNickName];
//    [[DataManager lightData] removeUserId];
//    [[DataManager lightData] removeBirthday];
//    [[DataManager lightData] removeGender];
//    [[DataManager lightData] removeGenderStr];
//    [[DataManager lightData] removeinviteFromUid];
//    [[DataManager lightData] removeCurrentOrderID];
//    [[DataManager lightData] removeCurrentParcelID];
//    [[DataManager lightData] removePointE2];
//    [[DataManager lightData] removeFreezePointE2];
//    [[DataManager lightData] removeisOldUser];
//    [[DataManager lightData] removemActivityDataIsShow];
//    [[DataManager lightData] removeMActivityDataTitle];
//    [[DataManager lightData] removemActivityDataDesc];
//    [[DataManager lightData] removemActivityDataLink];
//    [[DataManager lightData] removemActivityDataPicTitle];
//    [[DataManager lightData] removemActivityDataLogUrl];
//    [[DataManager lightData] removeMActivityInviteDataTitle];
//    [[DataManager lightData]removemActivityInviteDataDesc];
//    [[DataManager lightData] removemActivityInviteDataLink];
//    [[DataManager lightData] removemActivityInviteDataIsShow];
//    
//}
@end
