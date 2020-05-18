//
//  RetDataObj.h
//  SanCell
//
//  Created by Owen on 2019/6/23.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TagInfoObj.h"
#import "UserObj.h"
#import "SSAttrInfo.h"
#import "SSServerInfoObj.h"
//#import "SSSearchDataObj.h"

@class SSOneBuyUserInfo;

@class MActivityData;

@class SSSystemObj;

@class SSRedPacketRecordObj;

@class SSLogisticsNoticeInfoObj;

@class SSAddressObj;

@class SSlogisticsInfoObj;

@class SSOrderAddressInfo;

@class SSOrderIndoObj;

@class SSlikeDataObj;

@class SSAgreementUrlInfoObj;

@class SSNavigationInfo;

@class SSImageObj;

@class UserOrderObj;

@class SSOrderInvoiceInfo;

@class SSHomePageActivityObj;

@class SSDetaillEveRightsObj;

@class OrderReceiveInfoObj;

@class SSDetaillOneDollerObj;

@class SSUserInvationObj;

@class SSRedPackSendObj;

@class SSRedPackGetObj;

@class SSActivityConfig;

@class GoodsRegion;

@class GroupInfoObj;

@class SSNewGrouponProductMesObj;

@class SSGrouponInviteDataObj;

@class SSSearchDataObj;

@class SSLiveSearchObj;

@class SSLiveInfoObj;

@class SSLiveLikeRoomInfo;

@class SSLivePushDataObj;

@class SSLiveSettingObj;

@class SSLiveInviteDataObj;

@class SSHasliveInfoObj;

@class SSLiveRoomInfoRecIdListObj;

@class SSInstitutionsInfoObj;

NS_ASSUME_NONNULL_BEGIN

@interface RetDataObj : NSObject

@property (nonatomic, strong) NSNumber *seckillStockNum;

@property (nonatomic, strong) NSNumber *seckillStatus;

@property (nonatomic, strong) NSNumber *seckillGoodsStatus;

@property (nonatomic, copy) NSString *seckillGoodsStatusStr;

@property (nonatomic, strong) NSNumber *economyMoneyE2;

@property (nonatomic, strong) SSHomePageActivityObj *seckillInfo;

@property (nonatomic, strong) SSlikeDataObj *seckillRoundInfo;

@property (nonatomic, strong) SSlikeDataObj *headlinesInfo;

@property (nonatomic, strong) SSlikeDataObj *navInfo;

@property (nonatomic, strong) SSHomePageActivityObj *capsuleInfo;

@property (nonatomic, strong) SSOrderInvoiceInfo *orderInvoiceInfo;

@property (nonatomic, strong) NSNumber *isNeedInvoice;

@property (nonatomic, strong) SSSystemObj *noticeInfo;

@property (nonatomic, strong) SSRedPacketRecordObj *userPointNoticeInfo;

@property (nonatomic, strong) SSLogisticsNoticeInfoObj *logisticsNoticeInfo;

@property (nonatomic, copy) NSString *vipPeriodOfValidity;

@property (nonatomic, strong) NSNumber *isLogin;

@property (nonatomic, copy) NSString *mobileRule;

@property (nonatomic, copy) NSString *passwordRule;

@property (nonatomic, copy) NSString *skey;

@property (nonatomic, copy) NSString *yunxin_accid;

@property (nonatomic, copy) NSString *yunxin_token;

@property (nonatomic, copy) NSString *yunxin_name;

@property (nonatomic, strong) UserObj *user;

@property (nonatomic, strong) NSNumber *isBandingMobile;

@property (nonatomic, strong) NSNumber *dataCount;

@property (nonatomic, strong) NSArray *dataList;

@property (nonatomic, copy) NSString *accessKeyId;

@property (nonatomic, copy) NSString *accessKeySecret;

@property (nonatomic, copy) NSString *securityToken;

@property (nonatomic, copy) NSString *backName;

@property (nonatomic, copy) NSString *keyName;

@property (nonatomic, copy) NSString *endpoint;

@property (nonatomic, strong) NSNumber *addressVersion;

@property (nonatomic, strong) NSNumber *currentID;

@property (nonatomic, strong) NSNumber *skuId;

@property (nonatomic, strong) NSNumber *goodsTypeOne;

@property (nonatomic, strong) NSNumber *goodsTypeTwo;

@property (nonatomic, strong) NSNumber *goodsTypeThree;

@property (nonatomic, copy) NSString *supplierId;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, strong) NSNumber *stockNumber;

@property (nonatomic, strong) NSNumber *userRealPriceE2;

@property (nonatomic, strong) NSNumber *activitySectionId;

@property (nonatomic, strong) NSNumber *status;

@property (nonatomic, copy) NSString *coverPic;

@property (nonatomic, strong) NSNumber *memberLevelOnePriceE2;

@property (nonatomic, strong) NSNumber *minPriceE2;

@property (nonatomic, strong) NSNumber *memberLevelTwoPriceE2;

@property (nonatomic, strong) NSNumber *memberLevelThreePriceE2;

@property (nonatomic, strong) NSNumber *marketPriceE2;

@property (nonatomic, strong) NSNumber *lv0ProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv1ProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv2ProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv3ProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv0RecommProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv1RecommProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv2RecommProfitSharingE2;

@property (nonatomic, strong) NSNumber *lv3RecommProfitSharingE2;

@property (nonatomic, strong) NSNumber *refundStatus;

@property (nonatomic, copy) NSString *refundDays;

@property (nonatomic, copy) NSString *specification;

@property (nonatomic, strong) TagInfoObj *tagInfo;

@property (nonatomic, strong) NSArray *bannerPicArr;

@property (nonatomic, strong) NSArray *detailPicArr;

@property (nonatomic, strong) SSServerInfoObj *serverInfo;

@property (nonatomic, strong) SSAttrInfo *attrInfo;

@property (nonatomic, strong) SSlikeDataObj *likeData;

@property (nonatomic, strong) SSlikeDataObj *hotSaleData;

@property (nonatomic, strong) SSlikeDataObj *boutiqueData;

@property (nonatomic, strong) SSlikeDataObj *normalGoodsData;

@property (nonatomic, strong) SSlikeDataObj *underStockGoodsData;

@property (nonatomic, strong) SSlikeDataObj *failureGoodsData;

@property (nonatomic, copy) NSString *moduleName;

@property (nonatomic, strong) NSNumber *userId;

@property (nonatomic, copy) NSString *consignee;

@property (nonatomic, strong) NSNumber *isDefault;

@property (nonatomic, strong) NSNumber *streetId;

@property (nonatomic, strong) NSNumber *provinceId;

@property (nonatomic, strong) NSNumber *cityId;

@property (nonatomic, strong) NSNumber *areasId;

@property (nonatomic, copy) NSString *address;

@property (nonatomic, copy) NSString *mobile;

@property (nonatomic, strong) NSNumber *isTestStatus;

@property (nonatomic, copy) NSString *markName;

@property (nonatomic, copy) NSString *codeString;

@property (nonatomic, copy) NSString *provinceName;

@property (nonatomic, copy) NSString *cityName;

@property (nonatomic, copy) NSString *areasName;

@property (nonatomic, copy) NSString *streetName;

@property (nonatomic, copy) NSString *alipaySign;

@property (nonatomic, copy) NSString *alipaySignToken;

@property (nonatomic, strong) NSNumber *retData;

@property (nonatomic, copy) NSNumber *orderId;

@property (nonatomic, copy) NSNumber *parcelId;

@property (nonatomic, strong) SSAddressObj *addressInfo;

@property (nonatomic, copy) NSString *gravatar;

@property (nonatomic, copy) NSString *nickName;

@property (nonatomic, strong) NSNumber *memberLevel;

@property (nonatomic, strong) NSNumber *realMemberLevel;

@property (nonatomic, strong) NSNumber *deliveryState;

@property (nonatomic, strong) NSNumber *orderPayEndTime;

@property (nonatomic, strong) NSNumber *payState;

@property (nonatomic, strong) NSNumber *confirmState;

@property (nonatomic, strong) NSNumber *orderState;

@property (nonatomic, strong) NSNumber *state;

@property (nonatomic, copy) NSString *orderNumber;

@property (nonatomic, copy) NSString *contactPhone;

@property (nonatomic, copy) NSString *contactName;

@property (nonatomic, strong) NSNumber *payEndTime;

@property (nonatomic, strong) NSNumber *payClientTypeId;

@property (nonatomic, strong) NSNumber *totalAmtE2;

@property (nonatomic, strong) NSNumber *freightE2;

@property (nonatomic, strong) NSNumber *orderTime;

@property (nonatomic, strong) NSNumber *clientId;

@property (nonatomic, strong) SSlikeDataObj *parcelInfo;

@property (nonatomic, strong) SSOrderIndoObj *orderInfo;

@property (nonatomic, strong) SSlikeDataObj *orderDetail;

@property (nonatomic, strong) SSlikeDataObj *memberVipData;

@property (nonatomic, strong) SSlikeDataObj *vipInterestsIntroduceData;

@property (nonatomic, strong) NSArray *myInviteInfo;

@property (nonatomic, strong) NSNumber *inviteCount;

@property (nonatomic, strong) SSUserInvationObj *inviteFromInfo;

@property (nonatomic, strong) NSArray *data;

@property (nonatomic, strong) SSlogisticsInfoObj *expressInfo;

@property (nonatomic, strong) NSNumber *createdAt;

@property (nonatomic, copy) NSString *nu;

@property (nonatomic, copy) NSString *com;

@property (nonatomic, strong) SSAgreementUrlInfoObj *agreementUrlInfo;

@property (nonatomic, strong) NSNumber *isTestLoginStatus;

@property (nonatomic, strong) NSNumber *goodsMinBuyNum;

@property (nonatomic, strong) NSNumber *minBuyNum;

@property (nonatomic, strong) NSNumber *evaluationId;

@property (nonatomic, strong) NSString *defaultSearchName;

@property (nonatomic, strong) SSNavigationInfo *navigationInfo;

@property (nonatomic, copy) NSString *evaluationPercentageStr;

@property (nonatomic, strong) NSNumber *isEvaluation;

@property (nonatomic, strong) NSNumber *waitPayOrderCount;

@property (nonatomic, strong) NSNumber *waitDeliveryCount;

@property (nonatomic, strong) NSNumber *hadDeliveryCount;

@property (nonatomic,strong) NSNumber *finishCount;

@property (nonatomic, strong) NSNumber *waitEvaluationCount;

@property (nonatomic, copy) NSString *moduleDesc;

@property (nonatomic, strong) SSImageObj *modulePicData;

@property (nonatomic, copy) NSString *bannerCoverPic;

@property (nonatomic, strong) NSArray *giftData;

@property (nonatomic, strong) NSNumber *orderParcelId;

@property (nonatomic, strong) UserOrderObj *memberVipOrderParcelInfo;

@property (nonatomic, strong) NSNumber *freezePointE2;

@property (nonatomic, strong) NSNumber *pointRollE2;

@property (nonatomic,strong) NSNumber *couponCount;

@property (nonatomic, strong) NSNumber *pointE2;

@property (nonatomic, strong) NSNumber *goodsFlag;

@property (nonatomic, strong) NSNumber *isOldUser;

@property (nonatomic, strong) NSNumber *inviteFromUid;

@property (nonatomic, strong) NSNumber *totalMoneyAmtE2;

@property (nonatomic, strong) MActivityData *mActivityData;

@property (nonatomic, strong) MActivityData *mActivityOneDollarData;

@property (nonatomic, strong) MActivityData *mActivityInviteData;

@property (nonatomic, strong) MActivityData *goodsDetailShare;

@property (nonatomic, strong) NSNumber *totalPointAmtE2;

@property (nonatomic, strong) NSNumber *rewardPointE2;

@property (nonatomic, copy) NSString *requestUrl;

@property (nonatomic, strong) SSDetaillEveRightsObj *vipInterestsIndex;

@property (nonatomic, strong) OrderReceiveInfoObj *orderReceiveInfo;

@property (nonatomic, strong) NSNumber *isNewUser;

@property (nonatomic, strong) SSOneBuyUserInfo *userInfo;

@property (nonatomic, strong) NSArray *goodsInfo;

@property (nonatomic, strong) SSDetaillOneDollerObj *oneShop;

@property (nonatomic, strong) SSRedPackSendObj *redPackSendObj;

@property (nonatomic, copy) NSString *goodsSpecification;

@property (nonatomic, strong) NSNumber *commVideoId;

@property (nonatomic, strong) NSNumber *type;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, copy) NSString *videoUrl;

@property (nonatomic, strong) NSNumber *showFormat;

@property (nonatomic, strong) NSNumber *relationGoods;

@property (nonatomic, strong) NSNumber *relationGroup;

@property (nonatomic, copy) NSString *beRelationType;

@property (nonatomic, strong) NSNumber *allSpendingE2;

@property (nonatomic, strong) NSNumber *allIncomeE2;

@property (nonatomic, strong) SSActivityConfig *activityConfig;

/****/
@property (nonatomic, copy) NSString *partnerid;
@property (nonatomic, copy) NSString *prepayid;
@property (nonatomic, copy) NSString *noncestr;
@property (nonatomic, strong) NSNumber *timestamp;
@property (nonatomic, copy) NSString *package;
@property (nonatomic, copy) NSString *sign;

//发红包
@property (nonatomic, strong) NSNumber *redId;
//抢红包
@property (nonatomic, strong) NSNumber *grabMoney;

@property (nonatomic, copy)   NSString *redUserName;

@property (nonatomic, strong) NSNumber *redReceviceSumNum;

@property (nonatomic, strong) NSNumber *redType;
//检查
@property (nonatomic, strong) NSNumber *getMoney;

@property (nonatomic, strong) NSNumber *valid;

@property (nonatomic, strong) NSNumber *isGet;

//红包详情
@property (nonatomic, strong) NSNumber *accid;

@property (nonatomic, strong) NSNumber *redNum;

@property (nonatomic, strong) NSNumber *receiveDetailCount;

@property (nonatomic, strong) NSNumber *redLastNum;

@property (nonatomic, copy)   NSString *redSerial;

@property (nonatomic, strong) NSNumber *redSingleMoney;

@property (nonatomic, strong) NSNumber *redSumMoney;

@property (nonatomic, strong) NSNumber *redRemainder;

@property (nonatomic, copy)   NSString *showInfo;

@property (nonatomic, strong) NSNumber *redStatus;

@property (nonatomic, strong) NSArray *receiveDetail;

//创建群组
@property (nonatomic, strong) NSNumber *ownerAccid;

@property (nonatomic, strong) NSNumber *ownerUserId;

@property (nonatomic, strong) NSNumber *tid;

@property (nonatomic, strong) NSNumber *announcement;

@property (nonatomic, strong) NSNumber *groupName;

//余额
@property (nonatomic, strong) NSNumber *balance;
//直播间人数
@property (nonatomic, strong) NSNumber *count;

@property (nonatomic, strong) NSNumber *liveCount;

@property (nonatomic, strong) GoodsRegion *goodsRegion;

@property (nonatomic, strong) NSArray *inRange;

@property (nonatomic, strong) NSArray *notInRange;

@property (nonatomic, strong) NSNumber *addressId;

@property (nonatomic, strong) NSNumber *hasGroupon;

@property (nonatomic, strong) GroupInfoObj *grouponInfo;

@property (nonatomic, copy) NSString *grouponChildNo;

@property (nonatomic, copy) NSString *remark;

@property (nonatomic, strong) NSNumber *orderCreateTime;

@property (nonatomic, strong) NSNumber *payPlatform;

@property (nonatomic, copy) NSString *grouponNo;

@property (nonatomic, strong) NSNumber *payAmtE2;

@property (nonatomic, strong) NSNumber *payPointAmtE2;

@property (nonatomic, strong) SSNewGrouponProductMesObj *goods;

@property (nonatomic, strong) NSNumber *buyerOrderId;

@property (nonatomic, strong) NSNumber *pageStatus;

@property (nonatomic, strong) NSNumber *payMoneyAmtE2;

@property (nonatomic, strong) NSNumber *grouponNum;

@property (nonatomic, strong) NSNumber *finishTime;

@property (nonatomic, strong) NSNumber *currentTime;

@property (nonatomic, strong) NSNumber *grouponSuccessUser;

@property (nonatomic, strong) NSArray *grouponUsersInfo;

@property (nonatomic, strong) NSNumber *grouponOrderStatus;

@property (nonatomic, strong) NSNumber *lastUserNum;

@property (nonatomic, strong) NSNumber *isActivityGoods;

@property (nonatomic, strong) NSNumber *stockStatus;

@property (nonatomic, strong) NSNumber *currentUserIsOwner;

@property (nonatomic, strong) NSNumber *grouponOwnerBonus;

@property (nonatomic, strong) NSNumber *payStatus;

@property (nonatomic, strong) NSNumber *currentUserStatus;

@property (nonatomic, strong) NSNumber *buyOrderId;

//未绑定邀请人的提示信息-
//@property (nonatomic,copy)   NSString *remark;
//是否需要显示绑定按钮 0：不显示，1：显示
@property (nonatomic, strong) NSNumber *isBindUser;

@property (nonatomic, copy) NSString *grouponFinishHour;

@property (nonatomic, strong) SSGrouponInviteDataObj *grouponInviteData;

//搜索-默认文字
@property (nonatomic, copy)   NSString *defaultName;
//直播
@property (nonatomic, strong) NSNumber *roomId;

@property (nonatomic, copy)   NSString *channelName;

@property (nonatomic, copy)   NSString *pushUrl;

@property (nonatomic, strong) NSNumber *cid;

@property (nonatomic, copy)   NSString *roomName;

@property (nonatomic, strong) NSNumber *batchId;

@property (nonatomic, strong) NSNumber *isUse;

@property (nonatomic, strong) SSLivePushDataObj *pushData;

@property (nonatomic, strong) SSLiveSearchObj *tvUserList;//主播列表

@property (nonatomic, strong) SSLiveSearchObj *lives;//主播列表

@property (nonatomic, strong) SSLiveSettingObj *hisData;//主播列表

@property (nonatomic, copy)   NSString *keywords;//直播搜索热门

@property (nonatomic, strong) SSLiveInfoObj *batchInfo;

@property (nonatomic, strong) SSLiveLikeRoomInfo *liveRoomInfo;

@property (nonatomic, strong) SSLiveInviteDataObj *liveInviteData;

@property (nonatomic, strong) SSLiveRoomInfoRecIdListObj *recList;

@property (nonatomic, strong) SSHasliveInfoObj *liveInfo;

@property (nonatomic, strong) NSNumber *isFollow;

@property (nonatomic, strong) NSNumber *isLike;

@property (nonatomic, strong) NSNumber *isReserve;

@property (nonatomic, strong) NSNumber *reserveCount;

@property (nonatomic, copy) NSString *tvUserName;

@property (nonatomic, copy) NSString *tvUserGravatar;

@property (nonatomic, strong) NSNumber *isVip;

@property (nonatomic, strong) NSNumber *hasLiveing;

@property (nonatomic, copy) NSString *backgroundImg;

@property (nonatomic, strong) NSNumber *likeCount;

@property (nonatomic, strong) NSNumber *followCount;

@property (nonatomic, strong) NSNumber *fansCount;

@property (nonatomic, copy) NSString *userIntro;

@property (nonatomic, strong) NSNumber *isTvUser;

@property (nonatomic, strong) NSNumber *mutual;

@property (nonatomic, strong) NSNumber *tvUserNumber;

@property (nonatomic, strong) NSNumber *sumMoney;

@property (nonatomic, strong) NSNumber *objId;

@property (nonatomic, strong) NSNumber *has;

@property (nonatomic, strong) NSNumber *attendance;

@property (nonatomic, strong) NSNumber *astrictPointE2;

@property (nonatomic, strong) NSNumber *onlineUserCount;

@property (nonatomic, strong) NSNumber *replayUserCount;
//直播间状态 2 直播中 3已结束 1预告 4 时间段内未直播 5.急停
@property (nonatomic, strong) NSNumber *batchStatus;

@property (nonatomic, strong) NSNumber *pushFlag;//判断是否是特殊直播

@property (nonatomic,strong) NSNumber *canUseCouponCount;

@property (nonatomic,strong) SSlikeDataObj *canUsed;

@property (nonatomic, strong) NSNumber *isBindingCoupon;//是否关联代金券

@property (nonatomic,strong) SSInstitutionsInfoObj *institutionsInfo;



@end

NS_ASSUME_NONNULL_END
