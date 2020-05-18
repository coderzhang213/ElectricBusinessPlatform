//
//  LightDataController.h
//  CAMELLIAE
//
//  Created by 张越 on 16/3/18.
//  Copyright © 2016年 张越. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SSNavigationInfo.h"
#import "SSImageObj.h"

@interface LightDataController : NSObject

/**保存skey*/
- (void)saveSkey:(NSString *)skey;
- (NSString *)readSkey;
- (void)removeSkey;

- (void) saveAbsoluteString:(NSString *) absoluteString;
- (NSString *)readAbsoluteString;
- (void)removeAbsoluteString;

/***手机号码正则***/
- (void)saveMobileRule:(NSString *)mobileRule;
- (NSString *)readMobileRule;
- (void)removeMobileRule;

/***密码正则***/
- (void)savePasswordRule:(NSString *)passwordRule;
- (NSString *)readPasswordRule;
- (void)removePasswordRule;

- (void)saveUserId:(NSNumber *)userId;
- (NSNumber *)readUserId;
- (void)removeUserId;

- (void)saveMobile:(NSString *)mobile;
- (NSString *)readMobile;
- (void)removeMobile;

- (void)saveIsBandingMobile:(NSNumber *)isBandingMobile;
- (NSNumber *)readIsBandingMobile;
- (void)removeIsBandingMobile;


- (void)saveAddressVersion:(NSNumber *)addressVersion;
- (NSNumber *)readAddressVersion;
- (void)removeAddressVersion;


- (void)saveAddressUpLoad:(NSNumber *)isUpload;
- (NSNumber *)readAddressUpLoad;

- (void) saveUserImage:(NSString *)gravatar;
- (NSString *) readGravatar;
- (void) removeGravatar;

- (void) saveVipPeriodOfValidity:(NSString *) vipPeriodOfValidity;
- (NSString *) readVipPeriodOfValidity;
- (void) removeVipPeriodOfValidity;

- (void) saveBirthday:(NSNumber *) birthday;
- (NSNumber *) readBirthday;
- (void) removeBirthday;

- (void) saveNickName:(NSString *) nickName;
- (NSString *) readNickName;
- (void) removeNickName;

- (void) saveUserGender:(NSNumber *) gender;
- (NSNumber *) readGender;
- (void) removeGender;

- (void) saveUserGenderStr:(NSString *) genderStr;
- (NSString *) readGenderStr;
- (void) removeGenderStr;

- (void) saveMemberLevel:(NSNumber *) memberLevel;
- (NSNumber *) readMemberLevel;
- (void) removeMemberLevel;

- (void) saveUserAgreementUrl:(NSString *) userAgreementUrl;
- (NSString *) readUserAgreementUrl;
- (void) removeUserAgreementUrl;

- (void) savePrivacyAgreementUrl:(NSString *) privacyAgreementUrl;
- (NSString *) readPrivacyAgreementUrl;
- (void) removePrivacyAgreementUrl;

- (void) saveAppTestState:(NSNumber *) testState;
- (NSNumber *) readTestState;

- (void) saveUserSaveCost:(NSNumber *) userSaveCost;
- (NSNumber *) readUserSaveCost;

- (void) saveAppTestLoginState:(NSNumber *) testLoginState;
- (NSNumber *) readTestLoginState;

- (void) saveDefaultSearchName:(NSString *) defaultSearchName;
- (NSString *) readDefaultSearchName;
- (void) removeDefaultSearchName;

- (void) saveDefaultVIPLvlMes:(NSDictionary *) dic;
- (NSDictionary *) readDefaultVIPLvlMes;

- (void) saveAddPasswordStatus:(NSNumber *) addPasswordStatus;
- (NSNumber *) readAddPasswordStatus;
- (void) removeAddPasswordStatus;

- (void) saveAddTransactionPasswdStatus:(NSNumber *) addTransactionPasswdStatus;
- (NSNumber *) readAddTransactionPasswdStatus;
- (void) removeAddTransactionPasswdStatus;

- (void) saveNavigationInfo:(NSDictionary *)navigationInfo;
- (NSDictionary *) readNavigationInfo;
- (void) removeNavigationInfo;


- (NSString *) getSanCellAddressPlist;

- (void) saveCurrentOrderID:(NSNumber *) orderID;
- (NSNumber *) readCurrentOrderID;
- (void) removeCurrentOrderID;

- (void) saveCurrentParcelID:(NSNumber *) orderID;
- (NSNumber *) readCurrentParcelID;
- (void) removeCurrentParcelID;

- (void) savePointE2:(NSNumber *) points;
- (NSNumber *) readPointE2;
- (void) removePointE2;

- (void) saveCurrentVouchersNum:(NSNumber *) vouchersNum;
- (NSNumber *) readVouchersNum;
- (void) removeVouchersNum;


- (void) saveFreezePointE2:(NSNumber *) freePoints;
- (NSNumber *) readFreezePointE2;
- (void) removeFreezePointE2;

- (void) savePointRollE2:(NSNumber *) pointRollE2;
- (NSNumber *) readPointRollE2;
- (void) removePointRollE2;

- (void) saveisOldUser:(NSNumber *) isOldUser;
- (NSNumber *) readisOldUser;
- (void) removeisOldUser;

- (void) saveinviteFromUid:(NSNumber *) inviteFromUid;
- (NSNumber *) readinviteFromUid;
- (void) removeinviteFromUid;


- (void) saveMActivityDataTitle:(NSString *) mActivityDataTitle;
- (NSString *) readMActivityDataTitle;
- (void) removeMActivityDataTitle;

- (void) saveMActivityDataDesc:(NSString *) mActivityDataDesc;
- (NSString *) readmActivityDataDesc;
- (void) removemActivityDataDesc;

- (void) saveMActivityDataLink:(NSString *) mActivityDataLink;
- (NSString *) readmActivityDataLink;
- (void) removemActivityDataLink;

- (void) saveMActivityDataPicTitle:(NSString *) mActivityDataPicTitle;
- (NSString *) readmActivityDataPicTitle;
- (void) removemActivityDataPicTitle;

- (void) saveMActivityDataLogoUrl:(NSString *) mActivityDataLogoUrl;
- (NSString *) readmActivityDataLogoUrl;
- (void) removemActivityDataLogUrl;

- (void) saveMActivityDataIsShow:(NSNumber *) mActivityDataIsShow;
- (NSNumber *) readmActivityDataIsShow;
- (void) removemActivityDataIsShow;

- (void) saveMActivityInviteDataTitle:(NSString *) mActivityInviteDataTitle;
- (NSString *) readMActivityInviteDataTitle;
- (void) removeMActivityInviteDataTitle;

- (void) saveMActivityInviteCodeUrl:(NSString *) mActivityInviteCodeurl;
- (NSString *) readMActivityInviteCodeUrl;
- (void) removeMActivityInviteCodeUrl;

- (void) saveMActivityInviteDataDesc:(NSString *) mActivityInviteDataDesc;
- (NSString *) readmActivityInviteDataDesc;
- (void) removemActivityInviteDataDesc;

- (void) saveMActivityInviteDataLink:(NSString *) mActivityInviteDataLink;
- (NSString *) readmActivityInviteDataLink;
- (void) removemActivityInviteDataLink;

- (void) saveMOneDollarLogoUrl:(NSString *) mOneDollarLogoUrl;
- (NSString *) readmOneDollarLogoUrl;
- (void) removemOneDollarLogUrl;

- (void) saveMOneDollarDataTitle:(NSString *) mOneDollarDataTitle;
- (NSString *) readMOneDollarDataTitle;
- (void) removeMOneDollarDataTitle;

- (void) saveMOneDollarDataDesc:(NSString *) mOneDollarDesc;
- (NSString *) readmOneDollarDataDesc;
- (void) removemOneDollarDataDesc;

- (void) saveMOneDollarDataLink:(NSString *) mOneDollarDataLink;
- (NSString *) readmOneDollarDataLink;
- (void) removemOneDollarDataLink;


- (void) saveMActivityInviteDataIsShow:(NSNumber *) mActivityInviteDataIsShow;
- (NSNumber *) readmActivityInviteDataIsShow;
- (void) removemActivityInviteDataIsShow;

- (void) saveSpeedKillModuleIsShow:(NSNumber *) speedKillModuleIsShow;
- (NSNumber *) readSpeedKillModuleIsShow;
- (void) removeSpeedKillModuleIsShow;

- (void) saveLeadPageVersion:(NSString *) pageVersion;
- (NSString *) readLeadPageVersion;

//云信绑定信息
- (void)saveNIMAccid:(NSString *)accid;
- (NSString *)readNIMAccid;
- (void)removeNIMAccid;

- (void)saveNIMToken:(NSString *)token;
- (NSString *)readNIMToken;
- (void)removeNIMToken;

- (void)saveNIMName:(NSString *)name;
- (NSString *)readNIMName;
- (void)removeNIMName;

- (void)saveNIMEncryptToken:(NSString *)encryptToken;
- (NSString *)readNIMEncryptToken;
- (void)removeNIMEncryptToken;

//云信登录成功：1 失败：0
- (void)saveIsLoginNIM:(NSNumber *)isLoginNIM ;
- (NSNumber *)readIsLoginNIM;
- (void)removeIsLoginNIM;

- (void) saveUserConfirmPrivacyProtocolState:(NSNumber *) state;
- (NSNumber *) readUserConfirmPrivacyProtocolState;

- (void) saveCurrentActivityID:(NSNumber *) activityID;
- (NSNumber *) readCurrentActivityID;
- (void) removeCurrentActivityID;

- (void) saveCurrentActivityBannerPic:(NSString *) BannerPic;
- (NSString *) readCurrentActivityBannerPic;
- (void) removeCurrentActivityBannerPic;

- (void) saveCurrentActivityRealUrl:(NSString *) realUrl;
- (NSString *) readCurrentActivityRealUrl;
- (void) removeCurrentActivityRealUrl;

//首页
- (void)saveBannerBgUrl:(NSString *)realUrl;
- (NSString *)readBannerBgUrl;
- (void)removeBannerBgUrl;

//活动title
- (void)saveCurrentActivityTitle:(NSString *)currentActivityTitle;
- (NSString *)readCurrentActivityTitle;
- (void)removeCurrentActivityTitle;

//次级默认搜索
- (void)saveSecondarySearchName:(NSString *)secondarySearchName;
- (NSString *)readSecondarySearchName;
- (void)removeSecondarySearchName;

- (void)saveCurrentScrollVideoIndex:(NSNumber *)currentScrollVideoIndex;
- (NSNumber *)readCurrentScrollVideoIndex;
- (void)removeCurrentScrollVideoIndex;

//是否验证
- (void)saveAnchorIsSubmitVerify:(NSNumber *)isVerify;
- (NSNumber *)readAnchorIsSubmitVerify;
- (void)removeAnchorIsSubmitVerify;

//是否预约
- (void)saveCurrentIsReserve:(NSNumber *)isReserve;
- (NSNumber *)readCurrentIsReserve;
- (void)removeCurrentIsReserve;

//简洁模式
- (void)saveConciseState:(NSNumber *)conciseState;
- (NSNumber *)readConciseState;
- (void)removeConciseState;

- (void)saveBatchId:(NSNumber *)currentBatchId;
- (NSNumber *)readBatchId;
- (void)removeBatchId;

//清晰度-1-2-3-高清-标清-超清
- (void)saveQuality:(NSNumber *)currentQuality;
- (NSNumber *)readQuality;
- (void)removeQuality;

- (void) savePullBlack:(NSDictionary *) pullBlackDic;
- (NSDictionary *) readPullBlackDic;
- (void) removePullBlackDic;

- (void) saveInstitutionsInfoAddress:(NSString *) institutionsInfoAddress;
- (NSString *) readInstitutionsInfoAddress;
- (void) removeInstitutionsInfoAddress;


- (void) saveInstitutionsInfoLink:(NSString *) institutionsInfoLink;
- (NSString *) readInstitutionsInfoLink;
- (void) removeInstitutionsInfoLink;


- (void) saveInstitutionsInfoPhone:(NSString *) institutionsInfoPhone;
- (NSString *) readInstitutionsInfoPhone;
- (void) removeInstitutionsInfoPhone;


- (void) saveInstitutionsInfoTitle:(NSString *) institutionsInfoTitle;
- (NSString *) readInstitutionsInfoTitle;
- (void) removeInstitutionsInfoTitle;


@end
