//
//  LightDataController.m
//  CAMELLIAE
//
//  Created by 张越 on 16/3/18.
//  Copyright © 2016年 张越. All rights reserved.
//

#import "LightDataController.h"

@interface LightDataController ()

@property (nonatomic,strong) NSUserDefaults *defaults;
@end

@implementation LightDataController

- (instancetype)init{

    self = [super init];
    
    if (self) {
        self.defaults = [NSUserDefaults standardUserDefaults];
    }
    
    return self;
}

/**保存skey*/
- (void)saveSkey:(NSString *)skey{
        [self.defaults setObject:skey forKey:@"skeyOfSANCELL"];
        [self.defaults synchronize];
}
- (NSString *)readSkey{
        return [self.defaults objectForKey:@"skeyOfSANCELL"];
}
- (void)removeSkey{
        [self.defaults removeObjectForKey:@"skeyOfSANCELL"];
}

- (void) saveAbsoluteString:(NSString *) absoluteString{
    
    [self.defaults setObject:absoluteString forKey:@"absoluteString"];
    [self.defaults synchronize];
}
- (NSString *)readAbsoluteString{
    
    return [self.defaults objectForKey:@"absoluteString"];
}
- (void)removeAbsoluteString{
    
    return [self.defaults removeObjectForKey:@"absoluteString"];
}

/***手机号码正则***/
- (void)saveMobileRule:(NSString *)mobileRule{
    
    [self.defaults setObject:mobileRule forKey:@"mobileRule"];
    [self.defaults synchronize];
}
- (NSString *)readMobileRule{
    
    return [self.defaults objectForKey:@"mobileRule"];
}
- (void)removeMobileRule{
    
    [self.defaults removeObjectForKey:@"mobileRule"];
}

/***密码正则***/
- (void)savePasswordRule:(NSString *)passwordRule{
    
    [self.defaults setObject:passwordRule forKey:@"passwordRule"];
    [self.defaults synchronize];
    
}
- (NSString *)readPasswordRule{
    
    return [self.defaults objectForKey:@"passwordRule"];
    
}
- (void)removePasswordRule{
    
    [self.defaults removeObjectForKey:@"passwordRule"];
}

- (void)saveUserId:(NSNumber *)userId{
    
    [self.defaults setObject:userId forKey:@"userId"];
    [self.defaults synchronize];
}
- (NSNumber *)readUserId{
    
    return [self.defaults objectForKey:@"userId"];
}
- (void)removeUserId{
    
    [self.defaults removeObjectForKey:@"userId"];
}

- (void)saveMobile:(NSString *)mobile{
    
    [self.defaults setObject:mobile forKey:@"mobile"];
    [self.defaults synchronize];
}
- (NSString *)readMobile{
    
    return [self.defaults objectForKey:@"mobile"];
}
- (void)removeMobile{
    
     [self.defaults removeObjectForKey:@"mobile"];
}

- (void)saveIsBandingMobile:(NSNumber *)isBandingMobile{
    
    [self.defaults setObject:isBandingMobile forKey:@"isBandingMobile"];
    [self.defaults synchronize];
}
- (NSNumber *)readIsBandingMobile{
    
    return [self.defaults objectForKey:@"isBandingMobile"];
}
- (void)removeIsBandingMobile{
    
    [self.defaults removeObjectForKey:@"isBandingMobile"];
}

- (void)saveAddressVersion:(NSNumber *)addressVersion{
    
    [self.defaults setObject:addressVersion forKey:@"addressVersion"];
    [self.defaults synchronize];
    
}
- (NSNumber *)readAddressVersion{
    
    return [self.defaults objectForKey:@"addressVersion"];
}
- (void)removeAddressVersion{
    
    [self.defaults removeObjectForKey:@"addressVersion"];
}

- (void)saveAddressUpLoad:(NSNumber *)isUpload{
    
    [self.defaults setObject:isUpload forKey:@"isUpload"];
    [self.defaults synchronize];
}
- (NSNumber *)readAddressUpLoad{
    
    return [self.defaults objectForKey:@"isUpload"];
}

- (void) saveUserImage:(NSString *)gravatar{
    
    if (gravatar) {
       
        [self.defaults setObject:gravatar forKey:@"gravatar"];
        [self.defaults synchronize];
    }
}
- (NSString *) readGravatar{
    
    return [self.defaults objectForKey:@"gravatar"];
}

- (void) removeGravatar{
    
    [self.defaults removeObjectForKey:@"gravatar"];
}

- (void) saveBirthday:(NSNumber *) birthday{
    
    if (birthday != nil) {
        
        [self.defaults setObject:birthday forKey:@"birthday"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readBirthday{
    
    return [self.defaults objectForKey:@"birthday"];
}

- (void) removeBirthday{
    
    [self.defaults removeObjectForKey:@"birthday"];
}

- (void) saveVipPeriodOfValidity:(NSString *) vipPeriodOfValidity{
    
    if (vipPeriodOfValidity) {
        
        [self.defaults setObject:vipPeriodOfValidity forKey:@"vipPeriodOfValidity"];
        [self.defaults synchronize];
    }
}
- (NSString *) readVipPeriodOfValidity{
    
     return [self.defaults objectForKey:@"vipPeriodOfValidity"];
    
}
- (void) removeVipPeriodOfValidity{
    
    [self.defaults removeObjectForKey:@"vipPeriodOfValidity"];
}


- (void) saveNickName:(NSString *) nickName{
    
    if (nickName) {
        
        [self.defaults setObject:nickName forKey:@"nickName"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readNickName{
    
    return [self.defaults objectForKey:@"nickName"];
}

- (void) removeNickName{
    
    [self.defaults removeObjectForKey:@"nickName"];
}

- (void) saveUserGender:(NSNumber *) gender{
    
    if (gender != nil) {
        
        [self.defaults setObject:gender forKey:@"gender"];
        [self.defaults synchronize];
    }
    
}
- (NSNumber *) readGender{
    
    return [self.defaults objectForKey:@"gender"];
}

- (void) removeGender{
    
    [self.defaults removeObjectForKey:@"gender"];
    
}

- (void) saveUserGenderStr:(NSString *) genderStr{
    
    if (genderStr) {
        
        [self.defaults setObject:genderStr forKey:@"genderStr"];
        [self.defaults synchronize];
    }
}
- (NSString *) readGenderStr{
    
    return [self.defaults objectForKey:@"genderStr"];
    
}

- (void) removeGenderStr{
    
    [self.defaults removeObjectForKey:@"genderStr"];
}

- (void) saveMemberLevel:(NSNumber *) memberLevel{
    
    if (memberLevel != nil) {
        
        [self.defaults setObject:memberLevel forKey:@"memberLevel"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readMemberLevel{
    
    return [self.defaults objectForKey:@"memberLevel"];
}

- (void) removeMemberLevel{
    
    [self.defaults removeObjectForKey:@"memberLevel"];
}

- (void) saveUserAgreementUrl:(NSString *) userAgreementUrl{
    
    if (userAgreementUrl) {
        
        [self.defaults setObject:userAgreementUrl forKey:@"userAgreementUrl"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readUserAgreementUrl{
    
    return [self.defaults objectForKey:@"userAgreementUrl"];
}

- (void) removeUserAgreementUrl{
 
    [self.defaults removeObjectForKey:@"userAgreementUrl"];
}

- (void) savePrivacyAgreementUrl:(NSString *) privacyAgreementUrl{
    
    if (privacyAgreementUrl) {
        
        [self.defaults setObject:privacyAgreementUrl forKey:@"privacyAgreementUrl"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readPrivacyAgreementUrl{
    
    return [self.defaults objectForKey:@"privacyAgreementUrl"];
}
- (void) removePrivacyAgreementUrl{
    
    [self.defaults removeObjectForKey:@"privacyAgreementUrl"];
}

- (void) saveAppTestState:(NSNumber *) testState{
    
    if (testState != nil) {
        
        [self.defaults setObject:testState forKey:@"testState"];
        [self.defaults synchronize];
    }
    
}
- (NSNumber *)readTestState{
    
    return [self.defaults objectForKey:@"testState"];
}

- (void) saveUserSaveCost:(NSNumber *) userSaveCost{
    
    if (userSaveCost != nil) {
        
        [self.defaults setObject:userSaveCost forKey:@"userSaveCost"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readUserSaveCost{
    
    return [self.defaults objectForKey:@"userSaveCost"];
}

- (void) saveAppTestLoginState:(NSNumber *) testLoginState{
    
    if (testLoginState != nil) {
        
        [self.defaults setObject:testLoginState forKey:@"testLoginState"];
        [self.defaults synchronize];
    }
    
}
- (NSNumber *) readTestLoginState{
    
     return [self.defaults objectForKey:@"testLoginState"];
}

- (void) saveDefaultSearchName:(NSString *) defaultSearchName{
    if (defaultSearchName) {
        [self.defaults setObject:defaultSearchName forKey:@"defaultSearchName"];
        [self.defaults synchronize];
    }
}

- (NSString *) readDefaultSearchName{
    return [self.defaults objectForKey:@"defaultSearchName"];
}

- (void) removeDefaultSearchName{
    [self.defaults removeObjectForKey:@"defaultSearchName"];
}

//次级默认搜索
- (void)saveSecondarySearchName:(NSString *)secondarySearchName {
    if (secondarySearchName) {
        [self.defaults setObject:secondarySearchName forKey:@"secondarySearchName"];
        [self.defaults synchronize];
    }
}

- (NSString *)readSecondarySearchName {
    return [self.defaults objectForKey:@"secondarySearchName"];
}

- (void)removeSecondarySearchName {
    [self.defaults removeObjectForKey:@"secondarySearchName"];
}

- (void) saveDefaultVIPLvlMes:(NSDictionary *) dic{
    
    if (dic) {
        
        [self.defaults setObject:dic forKey:@"dic"];
        [self.defaults synchronize];
    }
}


- (NSDictionary *) readDefaultVIPLvlMes{
    
     return [self.defaults objectForKey:@"dic"];
}

- (NSString *) getSanCellAddressPlist{
    
    NSBundle*bundle = [NSBundle mainBundle];
    
    NSString*path = [bundle pathForResource:@"SanCellAddress"ofType:@"plist"];
    
    return path;
   
}

- (void) saveAddPasswordStatus:(NSNumber *) addPasswordStatus{
    
    if (addPasswordStatus != nil) {
        
        [self.defaults setObject:addPasswordStatus forKey:@"addPasswordStatus"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readAddPasswordStatus{
    
    return [self.defaults objectForKey:@"addPasswordStatus"];
}

- (void) removeAddPasswordStatus{
    
    [self.defaults removeObjectForKey:@"addPasswordStatus"];
}

- (void) saveCurrentOrderID:(NSNumber *) orderID{
    
    if (orderID != nil) {
        
        [self.defaults setObject:orderID forKey:@"orderID"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readCurrentOrderID{
    
    return [self.defaults objectForKey:@"orderID"];
}

- (void) removeCurrentOrderID{
    
    [self.defaults removeObjectForKey:@"orderID"];
}


- (void) saveCurrentParcelID:(NSNumber *) orderID{
    
    if (orderID != nil) {
        
        [self.defaults setObject:orderID forKey:@"parcelID"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readCurrentParcelID{
    
    return [self.defaults objectForKey:@"parcelID"];
}

- (void) removeCurrentParcelID{
    
    [self.defaults removeObjectForKey:@"parcelID"];
}


- (void) saveAddTransactionPasswdStatus:(NSNumber *) addTransactionPasswdStatus{
    
    if (addTransactionPasswdStatus != nil) {
        
        [self.defaults setObject:addTransactionPasswdStatus forKey:@"addTransactionPasswdStatus"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readAddTransactionPasswdStatus{
    
    return [self.defaults objectForKey:@"addTransactionPasswdStatus"];
}

- (void) removeAddTransactionPasswdStatus{
    
    [self.defaults removeObjectForKey:@"addTransactionPasswdStatus"];
}


- (void) saveNavigationInfo:(NSDictionary *)navigationInfo{
    
    if (navigationInfo) {
        
        [self.defaults setObject:navigationInfo forKey:@"navigationInfo"];
        [self.defaults synchronize];
    }
}
- (NSDictionary *) readNavigationInfo{
    
    return [self.defaults objectForKey:@"navigationInfo"];
}

- (void) removeNavigationInfo{
    
    [self.defaults removeObjectForKey:@"navigationInfo"];
}

- (void) savePointE2:(NSNumber *) points{
    
    if (points != nil) {
        
        [self.defaults setObject:points forKey:@"points"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readPointE2{
    
    return [self.defaults objectForKey:@"points"];
}
- (void) removePointE2{
    
    [self.defaults removeObjectForKey:@"points"];
}

- (void) saveCurrentVouchersNum:(NSNumber *) vouchersNum{
    
    [self.defaults setObject:vouchersNum forKey:@"vouchersNum"];
    [self.defaults synchronize];
}
- (NSNumber *) readVouchersNum{
    
    return [self.defaults objectForKey:@"vouchersNum"];
}
- (void) removeVouchersNum{
    
    [self.defaults removeObjectForKey:@"vouchersNum"];
}

- (void) saveFreezePointE2:(NSNumber *) freePoints{
    
    if (freePoints != nil) {
        
        [self.defaults setObject:freePoints forKey:@"freePoints"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readFreezePointE2{
    
    return [self.defaults objectForKey:@"freePoints"];
}

- (void) removeFreezePointE2{
    
    [self.defaults removeObjectForKey:@"freePoints"];
}

- (void) savePointRollE2:(NSNumber *) pointRollE2{
    
    if (pointRollE2 != nil) {
        
        [self.defaults setObject:pointRollE2 forKey:@"pointRollE2"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readPointRollE2{
    
    return [self.defaults objectForKey:@"pointRollE2"];
}
- (void) removePointRollE2{
    
    [self.defaults removeObjectForKey:@"pointRollE2"];
}

- (void) saveisOldUser:(NSNumber *) isOldUser{
    
    if (isOldUser != nil) {
        
        [self.defaults setObject:isOldUser forKey:@"isOldUser"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readisOldUser{
    
    return [self.defaults objectForKey:@"isOldUser"];
}

- (void) removeisOldUser{
    
    [self.defaults removeObjectForKey:@"isOldUser"];
}

- (void) saveinviteFromUid:(NSNumber *) inviteFromUid{
  
    if (inviteFromUid != nil) {
        
        [self.defaults setObject:inviteFromUid forKey:@"inviteFromUid"];
        [self.defaults synchronize];
    }
    
}
- (NSNumber *) readinviteFromUid{
    
    return [self.defaults objectForKey:@"inviteFromUid"];
}

- (void) removeinviteFromUid{
    
    [self.defaults removeObjectForKey:@"inviteFromUid"];
}


- (void) saveMActivityDataTitle:(NSString *) mActivityDataTitle{
    
    if (mActivityDataTitle) {
        
        [self.defaults setObject:mActivityDataTitle forKey:@"mActivityDataTitle"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readMActivityDataTitle{
    
    return [self.defaults objectForKey:@"mActivityDataTitle"];
}

- (void) removeMActivityDataTitle{
    
    [self.defaults removeObjectForKey:@"mActivityDataTitle"];
    
}



- (void) saveMActivityDataDesc:(NSString *) mActivityDataDesc{
    
    if (mActivityDataDesc) {
        
        [self.defaults setObject:mActivityDataDesc forKey:@"mActivityDataDesc"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readmActivityDataDesc{
    
    return [self.defaults objectForKey:@"mActivityDataDesc"];
}

- (void) removemActivityDataDesc{
    
    [self.defaults removeObjectForKey:@"mActivityDataDesc"];
    
}

- (void) saveMActivityDataLink:(NSString *) mActivityDataLink{
    
    if (mActivityDataLink) {
        
        [self.defaults setObject:mActivityDataLink forKey:@"mActivityDataLink"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readmActivityDataLink{
    
    return [self.defaults objectForKey:@"mActivityDataLink"];
}

- (void) removemActivityDataLink{
    
    [self.defaults removeObjectForKey:@"mActivityDataLink"];
    
}


- (void) saveMActivityDataPicTitle:(NSString *) mActivityDataPicTitle{
    
    if (mActivityDataPicTitle) {
        
        [self.defaults setObject:mActivityDataPicTitle forKey:@"mActivityDataPicTitle"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readmActivityDataPicTitle{
    
    return [self.defaults objectForKey:@"mActivityDataPicTitle"];
}

- (void) removemActivityDataPicTitle{
    
     [self.defaults removeObjectForKey:@"mActivityDataPicTitle"];
    
}

- (void) saveMActivityDataLogoUrl:(NSString *) mActivityDataLogoUrl{
    
    if (mActivityDataLogoUrl) {
        
        [self.defaults setObject:mActivityDataLogoUrl forKey:@"mActivityDataLogoUrl"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readmActivityDataLogoUrl{
    
    return [self.defaults objectForKey:@"mActivityDataLogoUrl"];
}

- (void) removemActivityDataLogUrl{
    
    [self.defaults removeObjectForKey:@"mActivityDataLogoUrl"];
}

- (void) saveMActivityDataIsShow:(NSNumber *) mActivityDataIsShow{
    
    if (mActivityDataIsShow != nil) {
        
        [self.defaults setObject:mActivityDataIsShow forKey:@"mActivityDataIsShow"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readmActivityDataIsShow{
    
    return [self.defaults objectForKey:@"mActivityDataIsShow"];
}
- (void) removemActivityDataIsShow{
    
    [self.defaults removeObjectForKey:@"mActivityDataIsShow"];
    
}

- (void) saveMActivityInviteDataTitle:(NSString *) mActivityInviteDataTitle{
    
    if (mActivityInviteDataTitle) {
        
        [self.defaults setObject:mActivityInviteDataTitle forKey:@"mActivityInviteDataTitle"];
        [self.defaults synchronize];
    }
}
- (NSString *) readMActivityInviteDataTitle{
    
    return [self.defaults objectForKey:@"mActivityInviteDataTitle"];
}
- (void) removeMActivityInviteDataTitle{
    
    [self.defaults removeObjectForKey:@"mActivityInviteDataTitle"];
}

- (void) saveMActivityInviteCodeUrl:(NSString *) mActivityInviteCodeurl{
    
    if (mActivityInviteCodeurl) {
        
        [self.defaults setObject:mActivityInviteCodeurl forKey:@"mActivityInviteCodeurl"];
        [self.defaults synchronize];
    }
}
- (NSString *) readMActivityInviteCodeUrl{
    
    return [self.defaults objectForKey:@"mActivityInviteCodeurl"];
}
- (void) removeMActivityInviteCodeUrl{
    
    [self.defaults removeObjectForKey:@"mActivityInviteCodeurl"];
}

- (void) saveMActivityInviteDataDesc:(NSString *) mActivityInviteDataDesc{
    
    if (mActivityInviteDataDesc) {
        
        [self.defaults setObject:mActivityInviteDataDesc forKey:@"mActivityInviteDataDesc"];
        [self.defaults synchronize];
    }
}
- (NSString *) readmActivityInviteDataDesc{
    
    return [self.defaults objectForKey:@"mActivityInviteDataDesc"];
}
- (void) removemActivityInviteDataDesc{
    
    [self.defaults removeObjectForKey:@"mActivityInviteDataDesc"];
}

- (void) saveMOneDollarLogoUrl:(NSString *) mOneDollarLogoUrl{
    
    if (mOneDollarLogoUrl) {
        
        [self.defaults setObject:mOneDollarLogoUrl forKey:@"mOneDollarLogoUrl"];
        [self.defaults synchronize];
    }
}
- (NSString *) readmOneDollarLogoUrl{
    
    return [self.defaults objectForKey:@"mOneDollarLogoUrl"];
}
- (void) removemOneDollarLogUrl{
    
    [self.defaults removeObjectForKey:@"mOneDollarLogoUrl"];
}

- (void) saveMOneDollarDataTitle:(NSString *) mOneDollarDataTitle{
    
    if (mOneDollarDataTitle) {
        
        [self.defaults setObject:mOneDollarDataTitle forKey:@"mOneDollarDataTitle"];
        [self.defaults synchronize];
    }
}
- (NSString *) readMOneDollarDataTitle{
    
    return [self.defaults objectForKey:@"mOneDollarDataTitle"];
}
- (void) removeMOneDollarDataTitle{
    
    [self.defaults removeObjectForKey:@"mOneDollarDataTitle"];
}

- (void) saveMOneDollarDataDesc:(NSString *) mOneDollarDesc{
    
    if (mOneDollarDesc) {
        
        [self.defaults setObject:mOneDollarDesc forKey:@"mOneDollarDesc"];
        [self.defaults synchronize];
    }
    
}
- (NSString *) readmOneDollarDataDesc{
    
    return [self.defaults objectForKey:@"mOneDollarDesc"];
    
}
- (void) removemOneDollarDataDesc{
    
    [self.defaults removeObjectForKey:@"mOneDollarDesc"];
}

- (void) saveMOneDollarDataLink:(NSString *) mOneDollarDataLink{
    
    if (mOneDollarDataLink) {
        
        [self.defaults setObject:mOneDollarDataLink forKey:@"mOneDollarDataLink"];
        [self.defaults synchronize];
    }
}
- (NSString *) readmOneDollarDataLink{
    
    return [self.defaults objectForKey:@"mOneDollarDataLink"];
}
- (void) removemOneDollarDataLink{
    
    [self.defaults removeObjectForKey:@"mOneDollarDataLink"];
}

- (void) saveMActivityInviteDataLink:(NSString *) mActivityInviteDataLink{
    
    if (mActivityInviteDataLink) {
        
        [self.defaults setObject:mActivityInviteDataLink forKey:@"mActivityInviteDataLink"];
        [self.defaults synchronize];
    }
}
- (NSString *) readmActivityInviteDataLink{
    
    return [self.defaults objectForKey:@"mActivityInviteDataLink"];
}
- (void) removemActivityInviteDataLink{
    
    [self.defaults removeObjectForKey:@"mActivityInviteDataLink"];
}


- (void) saveMActivityInviteDataIsShow:(NSNumber *) mActivityInviteDataIsShow{
    
    if (mActivityInviteDataIsShow != nil) {
        
        [self.defaults setObject:mActivityInviteDataIsShow forKey:@"mActivityInviteDataIsShow"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readmActivityInviteDataIsShow{
    
     return [self.defaults objectForKey:@"mActivityInviteDataIsShow"];
}
- (void) removemActivityInviteDataIsShow{
    
    [self.defaults removeObjectForKey:@"mActivityInviteDataIsShow"];
}

- (void) saveSpeedKillModuleIsShow:(NSNumber *) speedKillModuleIsShow{
    
    if (speedKillModuleIsShow != nil) {
        
        [self.defaults setObject:speedKillModuleIsShow forKey:@"speedKillModuleIsShow"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readSpeedKillModuleIsShow{
    
     return [self.defaults objectForKey:@"speedKillModuleIsShow"];
}
- (void) removeSpeedKillModuleIsShow{
    
    [self.defaults removeObjectForKey:@"speedKillModuleIsShow"];
}


- (void) saveLeadPageVersion:(NSString *) pageVersion{
    
    if (pageVersion) {
        
        [self.defaults setObject:pageVersion forKey:@"pageVersion"];
        [self.defaults synchronize];
    }
}

- (NSString *) readLeadPageVersion{
    
    return [self.defaults objectForKey:@"pageVersion"];
}

//云信绑定信息
- (void)saveNIMAccid:(NSString *)accid {
    [self.defaults setObject:accid forKey:@"yunxin_accid"];
    [self.defaults synchronize];
}
- (NSString *)readNIMAccid {
    return [self.defaults objectForKey:@"yunxin_accid"];
}
- (void)removeNIMAccid {
    [self.defaults removeObjectForKey:@"yunxin_accid"];
}

- (void)saveNIMToken:(NSString *)token {
    [self.defaults setObject:token forKey:@"yunxin_token"];
    [self.defaults synchronize];
}
- (NSString *)readNIMToken {
    return [self.defaults objectForKey:@"yunxin_token"];
}
- (void)removeNIMToken {
    [self.defaults removeObjectForKey:@"yunxin_token"];
}

- (void)saveNIMName:(NSString *)name {
    [self.defaults setObject:name forKey:@"yunxin_name"];
    [self.defaults synchronize];
}
- (NSString *)readNIMName {
    return [self.defaults objectForKey:@"yunxin_name"];
}
- (void)removeNIMName {
    [self.defaults removeObjectForKey:@"yunxin_name"];
}

- (void)saveNIMEncryptToken:(NSString *)encryptToken {
    [self.defaults setObject:encryptToken forKey:@"yunxin_encrypt_token"];
    [self.defaults synchronize];
}
- (NSString *)readNIMEncryptToken {
    return [self.defaults objectForKey:@"yunxin_encrypt_token"];
}
- (void)removeNIMEncryptToken {
    [self.defaults removeObjectForKey:@"yunxin_encrypt_token"];
}

//云信登录成功：1 失败：0
- (void)saveIsLoginNIM:(NSNumber *)isLoginNIM {
    [self.defaults setObject:isLoginNIM forKey:@"isLoginNIM"];
    [self.defaults synchronize];
}
- (NSNumber *)readIsLoginNIM {
    return [self.defaults objectForKey:@"isLoginNIM"];
}
- (void)removeIsLoginNIM {
    [self.defaults removeObjectForKey:@"isLoginNIM"];
}

- (void) saveUserConfirmPrivacyProtocolState:(NSNumber *) state{
    
    if (state != nil) {
        
        [self.defaults setObject:state forKey:@"PrivacyProtocolState"];
        [self.defaults synchronize];
    }
    
}
- (NSNumber *) readUserConfirmPrivacyProtocolState{
    
     return [self.defaults objectForKey:@"PrivacyProtocolState"];
}

- (void) saveCurrentActivityID:(NSNumber *) activityID{
    
    if (activityID != nil) {
        
        [self.defaults setObject:activityID forKey:@"CurrentActivityID"];
        [self.defaults synchronize];
    }
}
- (NSNumber *) readCurrentActivityID{
    
    return [self.defaults objectForKey:@"CurrentActivityID"];
}
- (void) removeCurrentActivityID{
    
    [self.defaults removeObjectForKey:@"CurrentActivityID"];
}

- (void) saveCurrentActivityBannerPic:(NSString *) BannerPic{
    
    if (BannerPic) {
        
        [self.defaults setObject:BannerPic forKey:@"CurrentActivityBannerPic"];
        [self.defaults synchronize];
    }
}
- (NSString *) readCurrentActivityBannerPic{
    
    return [self.defaults objectForKey:@"CurrentActivityBannerPic"];
}
- (void) removeCurrentActivityBannerPic{
    
    [self.defaults removeObjectForKey:@"CurrentActivityBannerPic"];
}
- (void) saveCurrentActivityRealUrl:(NSString *) realUrl{
    
    if (realUrl) {
        
        [self.defaults setObject:realUrl forKey:@"CurrentActivityRealUrl"];
        [self.defaults synchronize];
    }
}
- (NSString *) readCurrentActivityRealUrl{
    
    return [self.defaults objectForKey:@"CurrentActivityRealUrl"];
}
- (void) removeCurrentActivityRealUrl{
    
    [self.defaults removeObjectForKey:@"CurrentActivityRealUrl"];
}

//首页
- (void)saveBannerBgUrl:(NSString *)realUrl {
    if (realUrl) {
        [self.defaults setObject:realUrl forKey:@"BannerBgUr"];
        [self.defaults synchronize];
    }
}
- (NSString *)readBannerBgUrl {
    return [self.defaults objectForKey:@"BannerBgUr"];
}
- (void)removeBannerBgUrl {
    [self.defaults removeObjectForKey:@"BannerBgUr"];
}

//活动title
- (void)saveCurrentActivityTitle:(NSString *)currentActivityTitle {
    if (currentActivityTitle) {
        [self.defaults setObject:currentActivityTitle forKey:@"currentActivityTitle"];
        [self.defaults synchronize];
    }
}
- (NSString *)readCurrentActivityTitle {
    return [self.defaults objectForKey:@"currentActivityTitle"];
}
- (void)removeCurrentActivityTitle {
    [self.defaults removeObjectForKey:@"currentActivityTitle"];
}

- (void)saveCurrentScrollVideoIndex:(NSNumber *)currentScrollVideoIndex {
    if (currentScrollVideoIndex != nil) {
        [self.defaults setObject:currentScrollVideoIndex forKey:@"currentScrollVideoIndex"];
        [self.defaults synchronize];
    }
}
- (NSNumber *)readCurrentScrollVideoIndex {
    return [self.defaults objectForKey:@"currentScrollVideoIndex"];
}
- (void)removeCurrentScrollVideoIndex {
    [self.defaults removeObjectForKey:@"currentScrollVideoIndex"];
}

//是否验证
- (void)saveAnchorIsSubmitVerify:(NSNumber *)isVerify {
    if (isVerify != nil) {
        [self.defaults setObject:isVerify forKey:@"AnchorIsSubmitVerify"];
        [self.defaults synchronize];
    }
}
- (NSNumber *)readAnchorIsSubmitVerify {
    return [self.defaults objectForKey:@"AnchorIsSubmitVerify"];
}
- (void)removeAnchorIsSubmitVerify {
    [self.defaults removeObjectForKey:@"AnchorIsSubmitVerify"];
}

//是否预约
- (void)saveCurrentIsReserve:(NSNumber *)isReserve {
    if (isReserve != nil) {
        [self.defaults setObject:isReserve forKey:@"CurrentIsReserve"];
        [self.defaults synchronize];
    }
}
- (NSNumber *)readCurrentIsReserve {
    return [self.defaults objectForKey:@"CurrentIsReserve"];
}
- (void)removeCurrentIsReserve {
    [self.defaults removeObjectForKey:@"CurrentIsReserve"];
}

//简洁模式
- (void)saveConciseState:(NSNumber *)conciseState {
    [self.defaults setObject:conciseState forKey:@"conciseState"];
    [self.defaults synchronize];
}
- (NSNumber *)readConciseState {
    return [self.defaults objectForKey:@"conciseState"];
}
- (void)removeConciseState {
    [self.defaults removeObjectForKey:@"conciseState"];
}

//
- (void)saveBatchId:(NSNumber *)currentBatchId {
    [self.defaults setObject:currentBatchId forKey:@"currentBatchId"];
    [self.defaults synchronize];
}
- (NSNumber *)readBatchId {
    return [self.defaults objectForKey:@"currentBatchId"];
}
- (void)removeBatchId {
    [self.defaults removeObjectForKey:@"currentBatchId"];
}

//清晰度-1-2-3
- (void)saveQuality:(NSNumber *)currentQuality {
    [self.defaults setObject:currentQuality forKey:@"currentQuality"];
    [self.defaults synchronize];
}
- (NSNumber *)readQuality {
    return [self.defaults objectForKey:@"currentQuality"];
}
- (void)removeQuality {
    [self.defaults removeObjectForKey:@"currentQuality"];
}


- (void) savePullBlack:(NSDictionary *) pullBlackDic{
    
    [self.defaults setObject:pullBlackDic forKey:@"pullBlackDic"];
    [self.defaults synchronize];
}
- (NSDictionary *) readPullBlackDic{
   
     return [self.defaults objectForKey:@"pullBlackDic"];
}
- (void) removePullBlackDic{
   
    [self.defaults removeObjectForKey:@"pullBlackDic"];
}

- (void) saveInstitutionsInfoAddress:(NSString *) institutionsInfoAddress{
    
    [self.defaults setObject:institutionsInfoAddress forKey:@"institutionsInfoAddress"];
    [self.defaults synchronize];
}
- (NSString *) readInstitutionsInfoAddress{
    
    return [self.defaults objectForKey:@"institutionsInfoAddress"];
}
- (void) removeInstitutionsInfoAddress{
    
    [self.defaults removeObjectForKey:@"institutionsInfoAddress"];
}


- (void) saveInstitutionsInfoLink:(NSString *) institutionsInfoLink{
    
    [self.defaults setObject:institutionsInfoLink forKey:@"institutionsInfoLink"];
    [self.defaults synchronize];
}
- (NSString *) readInstitutionsInfoLink{
    
    return [self.defaults objectForKey:@"institutionsInfoLink"];
}
- (void) removeInstitutionsInfoLink{
    
    [self.defaults removeObjectForKey:@"institutionsInfoLink"];
}


- (void) saveInstitutionsInfoPhone:(NSString *) institutionsInfoPhone{
    
    [self.defaults setObject:institutionsInfoPhone forKey:@"institutionsInfoPhone"];
    [self.defaults synchronize];
}
- (NSString *) readInstitutionsInfoPhone{
    
    return [self.defaults objectForKey:@"institutionsInfoPhone"];
}
- (void) removeInstitutionsInfoPhone{
    
    [self.defaults removeObjectForKey:@"institutionsInfoPhone"];
}


- (void) saveInstitutionsInfoTitle:(NSString *) institutionsInfoTitle{
    
    [self.defaults setObject:institutionsInfoTitle forKey:@"institutionsInfoTitle"];
    [self.defaults synchronize];
}
- (NSString *) readInstitutionsInfoTitle{
    
     return [self.defaults objectForKey:@"institutionsInfoTitle"];
}
- (void) removeInstitutionsInfoTitle{
    
    [self.defaults removeObjectForKey:@"institutionsInfoTitle"];
}

@end

