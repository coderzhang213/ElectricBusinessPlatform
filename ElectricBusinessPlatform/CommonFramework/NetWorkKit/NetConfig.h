//
//  NetConfig.h
//  CAMELLIAE
//
//  Created by 张越 on 16/3/18.
//  Copyright © 2016年 张越. All rights reserved.
//

#ifndef NetConfig_h
#define NetConfig_h

//公钥
#define NewPUBKEY @"-----BEGIN PUBLIC KEY-----MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEbBYUypDl3CkNhGPjRuvWbwcj07ObwT0heTlmtRl708+UB4gC7SzUeL7AbuapajfYdq7CeSZm4AMoVXl/f69KkdDOyFugKSic9i7MvJXchwvwWlYOTQkJ8sr3rKZGyPhRwmCKupQ4h/8uvmNpV5tGf+ARzj2f/KAn/z+QLSr4pwIDAQAB-----END PUBLIC KEY-----"

//#define NewPUBKEY @"-----BEGIN PUBLIC KEY-----MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApSHKkWF3tnHcv8SzMU0Yb3in/p8IGmbndAiHJi1EvyhfSCEUSwc41982cYpdo4uH91JAOY9Vb2XBoa0LdvEsfwdvq8gzx/GBCS4vSoxMNWrlcb3KxXhkYiOXjjJvK2O3plvZj0Y18BeYZIzKRABb92uZEmh/UaqG78L49vov3YSrwOjRwS1XRI+LqT2pChixkX6XX2XdpkdnP8LkTfclvymI6nZavGNedj4crjsBYLMeCTZl0LTRr6GfLZUD2xCRJavVH1uaFhJIGdd9mLdViVFCO84N/Qii8JkVk7zCiuLjpBV/Cc2KISsQ/jDIDAmr7OaxZ/Kt3imGEzZtTZKBxQIDAQAB-----END PUBLIC KEY-----"



////appID
#define AppID               @"1471994802"
//
////微信
#define WeiXinAppID         @"wxb42cb41315f88904"
#define WeiXinAppSecret     @"5c97659ca22e2856d076ad90102d4073"
#define ZFBAppID            @"2018052960267219"
//
////新浪
//
#define SinaAppID           @"82463260"
#define SinaAppSecret       @"125179b5ea09a7d3e27b1d82912aaf4d"
//
////QQ
#define QQAppID             @"1107057730"
#define QQAppSecret         @"8nGAHktdlMWQkSj8"



//UM
#define UMAppKey            @"5cd23c9e3fc19528b40006b6"

#define JPushKey            @"dabbb1fec00381dc4becc116"


//#define NetWorkApiDomain      @"https://mapi3.sanshaoxingqiu.cn/"

//#define NetWorkApiDomain      @"https://premapi.sanshaoxingqiu.cn/"

//#define NetWorkApiDomain      @"http://devm.sanshaoxingqiu.cn/"

#define NetWorkApiDomain      @"http://testmapi.sancell.top/"

//#define NetWorkApiDomain      @"http://testmapi1.sanshaoxingqiu.cn/"

//#define NetWorkApiDomain      @"http://alanmapi.sanshaoxingqiu.cn"

//#define NetWorkApiDomain      @"https://mapi.sanshaoxingqiu.cn/"

//#define NetWorkApiDomain      @"https://mapi3.sanshaoxingqiu.cn/"

/**************************/

#define NormalRightsWebUrl      @"https://m.sanshaoxingqiu.cn/app-membership-interests/ordinary_interest_detail.html"

#define SilverRightsWebUrl      @"https://m.sanshaoxingqiu.cn/app-membership-interests/silver_interest_detail.html"

#define GoldRightsWebUrl        @"https://m.sanshaoxingqiu.cn/app-membership-interests/golden_interest_detail.html"

#define RedRightsWebUrl         @"https://m.sanshaoxingqiu.cn/app-membership-interests/red_interest_detail.html"

#define RedPacketWebUrl         @"https://m.sanshaoxingqiu.cn/app-membership-interests/red_envelope_rules.html"

#define OneBuyDollerRuleWebUrl  @"https://m.sanshaoxingqiu.cn/app-membership-interests/purchase_rules.html"

#define ShoppingCardUrl         @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/shopCard/index.html"

/*************************/


#define MemberCenterUrl           @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/memberCenter.html"

#define UserServiceAgreementUrl    @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/UserServiceAgreement.html"

#define PlatformPrivacyAgreementUrl  @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/PlatformPrivacyAgreement.html";

#define MemberAgreementUrl          @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/MemberAgreement.html"

#define RedruleUrl                  @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/redrule.html"

#define ServeUrl                    @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/activeproduct/CustomerService.html"

#define onLineLiveUserUrl           @"https://m.sanshaoxingqiu.cn/sancell-shop-app-hybrid/memberCenter/AnchorProtocol.html"

//#define ServeUrl                @"http://testm1.sanshaoxingqiu.cn/sancell-shop-app-hybrid/activeproduct/CustomerService.html"

#define AppStart                               @"api/start-up"

#define SmsCode                                @"common/sms-code"

#define MobileCode                             @"auth/mobile-code-login"

#define WeixinLogin                            @"auth/weixin-login"

#define BindMobile                             @"auth/bind-mobile"

#define MobilePassLogin                        @"auth/mobile-pass-login"

#define iOSTest                                @"api/client-checker-login"

#define CheckChangePasswordSmsCode             @"auth/check-change-password-sms-code"

#define ChangePassword                         @"auth/change-password"

#define ProductTypeList                        @"goods-type/list"
//goods/type-list

#define ProductDetail                          @"goods/detail"

#define ProductList                            @"goods/groupon-goods-list"

#define SpeedKillVIPList                       @"seckill-gift/index"

#define AllAddressList                         @"address/list"

#define AllCheckAddressList                    @"address/region-list"

#define AllAddressInfo                         @"address/all-address-info"

#define PublishAddress                         @"address/publish"

#define UpdateAddress                          @"address/update"

#define DeleteAddress                          @"address/delete"

#define YourLikeProductList                    @"site/guess-you-like"

#define HotSellList                            @"site/hot-sale"

#define RcommedList                            @"site/recomm-list"

#define AdList                                 @"ad/list"

#define ProductTags                            @"goods/tag-list"

#define ShopCarList                            @"car/list"

#define AddShopCar                             @"car/add-car-detail"

#define LastChoose                             @"address/choose-address"

#define RemveSingleProduct                     @"car/delete"

#define SelectSingleProduct                     @"car/change-selected"

#define UpdateGoodsNum                          @"car/update-car-goods-num"

#define SelectAllProduct                        @"car/change-all-selected"

#define DeleteNostock                           @"car/delete-under-stock"

#define DeleteFailure                           @"car/delete-failure"

#define DeleteBatch                             @"car/batch-delete"

//#define GetDefultAddress                        @"address/user-default-address"

#define GetDefultAddress                        @"order/user-order-pre"

#define CreateOrder                             @"order/create"

#define SpeedKillCreateOrder                    @"order/directly-create"

#define GrouponCreateOrder                      @"v2/groupon/deal"

#define RepairOrderInvoice                      @"order/repair-order-invoice"

#define OrderCheckPassword                      @"order/check-trans-pass"

#define GetWXPayMes                             @"order/wechat-pre-order"

#define GetZFBPayMes                            @"order/alipay-pre-order"

#define GetGrouponWXPayMes                      @"groupon-pay/wechat-pre-order"

#define GetGrouponZFBPayMes                     @"groupon-pay/alipay-pre-order"

#define ConfirmOrder                           @"order/confirm-pay"

#define UpLoadImage                            @"user/up-image"

#define GetUserMessage                         @"user/user-info"

#define UpUserMessage                          @"user/update"

#define OrderNumData                           @"user/order-num-data"

#define GetOrderDetail                         @"order/detail"

#define GetParcelDetail                        @"order/parcel-detail"

#define OrderList                              @"order/list"

#define Logout                                 @"user/login-out"

#define CreateVIPOrder                         @"v2/member-level/create"

#define GeVIPtWXPayMes                         @"member-level/wechat-pre-order"

#define GeVIPtZFBPayMes                        @"member-level/alipay-pre-order"

#define ConfirmVIPOrder                        @"member-level/confirm-pay"

#define CancelReason                           @"order/reason-info"

#define StartCancelReason                      @"order/cancel"

#define DeleteCurrentOrder                     @"order/delete"

#define ConfirmReceiptOrder                    @"order/confirm-receipt"


#define ParcelList                             @"order/parcel-list"

#define TempParcelList                         @"order/new-parcel-list"

#define Logistics                              @"order/logistics-detail"

#define batchAdd                               @"car/batch-add"

#define needCommentList                        @"evaluation/wait-evaluate-list"

#define AddCommentWrite                        @"evaluation/add"

#define AddCommentPic                          @"evaluation/pic-up-token-arr"

#define ProdcutCommentList                     @"evaluation/goods-evaluation-list"

#define UserAdice                              @"user/feedback"

#define ChangeUserMobile                       @"user/update-mobile"

#define CheckMobileExist                       @"auth/check-mobile-is-exist"

#define CheckMobileAndMeesgaeCode              @"user/check-old-mobile-for-update-user-mobile"

#define UploginSecret                          @"user/update-password"

#define HotSearch                              @"search/hot-v3"

#define HistorySearch                          @"search/user-history"

#define AddHistorySearch                       @"search/add-history"

#define RemoveHistorySearch                    @"search/delete-history"

#define CheckPaySecretMobileAndSmsCode         @"user/check-trade-password-sms-code"

#define FirstSetPaySecret                      @"user/set-trade-password"

#define SetPaySecret                            @"user/update-trade-password"

#define FindPaySecret                           @"user/find-trade-password-by-sms-code"

#define CheckOldPaySecret                       @"user/check-trade-password"

#define VIPBuyMes                               @"goods-gift/index"

#define MemeberLvlInfo                          @"goods-gift/get-member-vip-info"

#define HomePageSiteActivity                    @"site/activity"

#define CurrentActivityStatus                   @"site/activity-config"

#define BannerBgImageUrl                        @"https://ssxq-static.oss-cn-shanghai.aliyuncs.com/banner/background.png"//首页背景

#define TimeSpeedKillList                        @"seckill-goods/round-list"

#define OneShopList                              @"one-shop/list"

#define GetOneShopList                           @"one-shop/get-list"

#define remindSpeedKill                          @"seckill-goods/remind-seckill-goods"

#define SpeedKillList                           @"seckill-goods/list"

#define CheckUserID                             @"user/get-invite-user-info"

#define BindUserID                              @"user/bind-invite-user-id"

#define VIPBuyList                              @"v2/member-level/member-vip-order-list"

#define NewVIPRights                            @"goods-gift/member-level-interests"

#define SystemNotiList                          @"notice/list"

#define RedPacketRecordList                     @"notice/point-notice-list"

#define LogisticsNotiList                       @"notice/logistics-notice-list"

#define CenterNoti                              @"notice/all-notice"

#define pointRecordList                         @"point/list"

#define SaveCostList                            @"user/member-economy"

#define UserInvaitonList                        @"user/get-user-binding-info"

#define NewHomePageSpeedKill                    @"site/to-day-seckill-data"

#define AllVipGoodsPic                          @"goods-gift/get-vip-interests-info"

#define LogisticsList                           @"order/logistics-list"

/*红包*/
#define SSRedPacketSend                         @"community/v1/red/created"

#define SSRedPacketGrab                         @"community/v1/red/grab"

#define SSRedPacketDetail                       @"community/v1/red/detail"

#define SSRedPacketCheck                        @"community/v1/red/check"
//当前余额
#define SSUserCurrentRedPacket                  @"community/v1/red/account"

/*群组*/
#define SSGroupMine                             @"community/v1/group/my-groups"

#define SSGroupListRecommended                  @"community/v1/group/rec-list"

#define SSGroupCreate                           @"community/v1/group/create"

#define SSGroupHomeRecommended                  @"community/v1/group/rec-home"

#define SSGroupJoin                             @"community/v1/group/join-group"

#define SSGroupCheckInOtherGroup                @"community/v1/group/check-user-in-group"

/*社群*/
#define GetRecommendGroup                       @"community/v1/group/rec-home"
#define GetCommunityLiveList                    @"community/v1/live/list"
#define GetCommunityVideoList                   @"community/v1/video/list"
#define RecommendGroupList                      @"community/v1/group/rec-list"
#define Maillist                                @"community/v1/group/my-groups"
#define CommunityDetail                         @"community/v1/video/detail"
#define VideoRelationMes                        @"community/v1/video/relations-list"
#define LiveRelationMes                         @"community/v1/live/relations-list"

/*重新注册*/
#define SSRetryRegisterNIMAccount               @"community/v1/group/create-account"
/*直播间人数*/
#define SSLiveOnlineUserNumber                  @"community/v1/live/online-user"

#define ChangeOrderAddress                      @"address/edit-address"
//检测群名
#define SSGroupNameFilter                       @"community/v1/group/group-name-filter"

#define GrouponList                             @"groupon/order-list"

#define GrouponOrderDetail                      @"groupon/order-detail"

#define GrouponDetail                           @"groupon/groupon-detail"

#define CancelGrouponOrder                      @"groupon/order-cancel"

#define EditLiveStatus                          @"community/v2/live/edit-status"

#define AudienceExit                            @"community/v1/live/leave-live"

#define LiveRoomStatus                          @"community/v1/live/query-batch-status"

/*直播主页*/
//batchId列表
#define LiveRecommendList                       @"community/v1/live/get-rec-list"
//关注列表
#define LiveAttentionList                       @"community/v1/live/follow-live-list"
//首页推荐列表
#define LiveHomePageList                        @"community/v1/live/home-live-list"
//直播详情
#define LiveRoomInfo                            @"community/v1/live/get-live-batch"
//进入直播或回放
#define LiveEnterPlay                           @"community/v1/live/join-live"
//搜索
#define LiveSearch                              @"community/v1/live/search"
//清除搜索历史
#define LiveDeleteSearchHistory                 @"community/v1/live/clear-history"
//搜索历史
#define LiveSearchHistory                       @"community/v1/live/search-history"
//搜索热门
#define LiveSearchHot                           @"community/v1/live/hot-search"
//推荐直播
#define LiveTopRecommen                         @"community/v1/live/head-rec-list"
//预约
#define LiveReserve                             @"community/v1/live/reserve"
//点赞
#define LiveGiveALike                           @"community/v1/live/like"
//关注
#define LiveAttentionTo                         @"community/v1/live/follow"
//打赏
#define LiveReward                              @"community/v1/live/reward"


/*直播设置*/
//是否有未结束直播
#define LiveHasUnfinished                       @"community/v1/live/has-unfinished"
//直播设置初始化
#define LiveSettingInit                         @"community/v2/live/setting-init"
//直播设置
#define LiveSetting                             @"community/v2/live/setting"
//上传封面
#define LiveSettingUploadIcon                   @"community/v1/live/upload"
//添加关联商品和群组
#define LiveSettingAddRelation                  @"community/v1/live/add-relation"
//删除关联商品和群组
#define LiveSettingDeleteRelation               @"community/v1/live/del-relation"
//修改关联商品别名
#define LiveSettingChangeProductName            @"community/v1/live/relation-alias"

#define UpLoadLivePresonalCenterBgImage         @"community/v1/live/setting-upload-icon"

#define UpDateUserIntro                         @"community/v1/live/edit-intro"

#define UserLiveCenterMes                       @"community/v1/live/user-center-info"

#define LiveCenterFollowList                    @"community/v1/live/follow-user-list"

#define LiveCenterFanList                       @"community/v1/live/fans-user-list"

#define AttentionStateChange                    @"community/v1/live/follow"

#define PersonlLiveList                         @"community/v1/live/user-center-live-list"

#define PrsonlLikeLiveList                      @"community/v1/live/user-like-live-list"

#define UpLoadCarIDImage                        @"community/v1/live/tv-user-id-card-upload"

#define UpLoadCarIDInputMes                     @"community/v1/live/tv-user-verify"

#define LiveAnchorVerifyResult                  @"community/v1/live/tv-user-verify-status"

#define PrivateLetterList                       @"community/v1/private-msg/msg-record"

#define notiMesList                             @"community/v1/private-msg/msg-list"

#define PushUserMes                             @"community/v1/private-msg/send"

#define ProfitList                              @"community/v1/live/income-list"

#define SettingUseRelations                     @"community/v1/live/setting-use-relations"

#define CreateOrderVouchersList                 @"coupon/can-use-list"

#define UserCenterVouchersList                  @"coupon/user-owned-list"

//直播间代金券列表
#define LiveRoomCouponsList                     @"coupon/get-live-coupons-list"
//直播间领取代金券
#define LiveRoomGetCoupons                      @"coupon/receive"


/**
 2.5.0改版
 */
/**首页九宫格*/
#define SSHomeModuleList                        @"module-index/module-list"
/**子模块列表——次级首页自定义推荐商品列表*/
#define SSHomeSubModuleRecommendList            @"module-index/module-sub-list"
/**子模块列表——次级首页自定义推荐商品全部列表*/
#define SSHomeSubModulerRecommendAllList        @"module-index/module-goods-list"

#endif /* NetConfig_h */
