.class public Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;
.super Ljava/lang/Object;
.source "UnifiedPaymentDataUtil.java"


# static fields
.field private static final ADD_GIFTCARD_URL:Ljava/lang/String; = "method/giftcardncoupon"

.field private static final APP_KEY_FOR_SERVER:Ljava/lang/String; = "sm"

.field private static final GET_GIFTCARD_URL:Ljava/lang/String; = "giftcardncoupons"

.field private static final LOG_TAG:Ljava/lang/String; = "UnifiedPaymentDataUtil"

.field private static final MAX_PRODUCT_TITLE:I = 0x64

.field private static final NORIFY_URL:Ljava/lang/String; = "order/method/completeOrder"

.field private static final REQUEST_URL:Ljava/lang/String; = "order/method/requestOrder"

.field private static final SELECTED_VOUCHER_ID:Ljava/lang/String; = "selectedVoucherId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringToPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strl"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->doubleToPrice(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createtUnifiedPaymentData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/app/music/common/model/UserInfo;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .locals 34
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "saUserInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/UserInfo;",
            ")",
            "Lcom/sec/android/app/billing/helper/UnifiedPaymentData;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    const-string v30, "UnifiedPaymentDataUtil"

    const-string v31, "createtUnifiedPaymentData is called"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 72
    .local v17, "paymentdata":Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    move-result-object v11

    .line 73
    .local v11, "info":Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getPricing()Lcom/samsung/android/app/music/common/model/purchase/PricingType;

    move-result-object v18

    .line 76
    .local v18, "pricing":Lcom/samsung/android/app/music/common/model/purchase/PricingType;
    new-instance v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    invoke-direct {v14}, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;-><init>()V

    .line 78
    .local v14, "newPayment":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    const-string v30, "12yndwlwd1"

    move-object/from16 v0, v30

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->appServiceID:Ljava/lang/String;

    .line 79
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "sm"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->storeRequestID:Ljava/lang/String;

    .line 82
    new-instance v19, Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-direct/range {v19 .. v19}, Lcom/sec/android/app/billing/helper/ProductInfo;-><init>()V

    .line 85
    .local v19, "productInfo":Lcom/sec/android/app/billing/helper/ProductInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [Lcom/sec/android/app/billing/helper/DetailProductInfos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    .line 87
    const-wide/16 v24, 0x0

    .line 88
    .local v24, "totalAmount":D
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/purchase/PricingType;->getPaymentPrice()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-double v24, v24, v30

    .line 90
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    .line 91
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getTaxAdded()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getCurrency()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    .line 95
    new-instance v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    invoke-direct {v6}, Lcom/sec/android/app/billing/helper/DetailProductInfos;-><init>()V

    .line 96
    .local v6, "detailProduct":Lcom/sec/android/app/billing/helper/DetailProductInfos;
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productID:Ljava/lang/String;

    .line 97
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v20

    .line 98
    .local v20, "productname":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 99
    const/16 v30, 0x0

    const/16 v31, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 101
    :cond_0
    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productName:Ljava/lang/String;

    .line 102
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/purchase/PricingType;->getPaymentPrice()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->amount:Ljava/lang/String;

    .line 103
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getTax()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->tax:Ljava/lang/String;

    .line 104
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/purchase/PricingType;->getPricingTypeCode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->pricingTypeCode:Ljava/lang/String;

    .line 107
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getOptional1()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/sec/android/app/billing/helper/DetailProductInfos;->optional1:Ljava/lang/String;

    .line 116
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v6, v30, v31

    .line 118
    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->productInfo:Lcom/sec/android/app/billing/helper/ProductInfo;

    .line 121
    new-instance v27, Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-direct/range {v27 .. v27}, Lcom/sec/android/app/billing/helper/UserInfo;-><init>()V

    .line 122
    .local v27, "userInfo":Lcom/sec/android/app/billing/helper/UserInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/UserInfo;->userID:Ljava/lang/String;

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/UserInfo;->userEmail:Ljava/lang/String;

    .line 124
    const-string v30, "12yndwlwd1"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/UserInfo;->authAppID:Ljava/lang/String;

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getSAtoken()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/UserInfo;->accessToken:Ljava/lang/String;

    .line 126
    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    .line 129
    new-instance v4, Lcom/sec/android/app/billing/helper/BillingServerInfo;

    invoke-direct {v4}, Lcom/sec/android/app/billing/helper/BillingServerInfo;-><init>()V

    .line 131
    .local v4, "billingServer":Lcom/sec/android/app/billing/helper/BillingServerInfo;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->getBillingServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 132
    .local v26, "upserver":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 133
    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/sec/android/app/billing/helper/BillingServerInfo;->upServerURL:Ljava/lang/String;

    .line 134
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "createtUnifiedPaymentData upserver : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iput-object v4, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->billingServerInfo:Lcom/sec/android/app/billing/helper/BillingServerInfo;

    .line 139
    new-instance v21, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    invoke-direct/range {v21 .. v21}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;-><init>()V

    .line 140
    .local v21, "serviceStoreInfo":Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->country:Ljava/lang/String;

    .line 142
    new-instance v5, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    invoke-direct {v5}, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;-><init>()V

    .line 145
    .local v5, "billingUrl":Lcom/sec/android/app/billing/helper/BillingInterfaceURL;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getStoreUrl()Ljava/lang/String;

    move-result-object v23

    .line 146
    .local v23, "storeUrl":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getReqestUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->requestOrderURL:Ljava/lang/String;

    .line 147
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getNotifyUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->notiPaymentResultURL:Ljava/lang/String;

    .line 148
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getAddGiftcardUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->addGiftCardnCouponURL:Ljava/lang/String;

    .line 149
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getGetGiftcardUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getGiftCardnCouponURL:Ljava/lang/String;

    .line 150
    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->billingInterfaceURL:Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    .line 152
    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->serviceStoreInfo:Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    .line 155
    new-instance v7, Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-direct {v7}, Lcom/sec/android/app/billing/helper/DeviceInfo;-><init>()V

    .line 156
    .local v7, "deviceInfo":Lcom/sec/android/app/billing/helper/DeviceInfo;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceUID:Ljava/lang/String;

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->channelID:Ljava/lang/String;

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getShopId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->shopID:Ljava/lang/String;

    .line 160
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v30

    .line 161
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccSimOperator()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "mcc":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 163
    iput-object v12, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->mcc:Ljava/lang/String;

    .line 165
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v30

    .line 166
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncSimOperator()Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, "mnc":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 168
    iput-object v13, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->mnc:Ljava/lang/String;

    .line 171
    :cond_3
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "createtUnifiedPaymentData mcc : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mnc : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 175
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const-string/jumbo v31, "window"

    .line 176
    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/WindowManager;

    .line 177
    .local v29, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 180
    .local v10, "height":I
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    .line 181
    .local v28, "width":I
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "|"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/sec/android/app/billing/helper/DeviceInfo;->displayType:Ljava/lang/String;

    .line 183
    iput-object v7, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    .line 186
    new-instance v16, Lcom/sec/android/app/billing/helper/PaymentInfo;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/app/billing/helper/PaymentInfo;-><init>()V

    .line 187
    .local v16, "paymentInfo":Lcom/sec/android/app/billing/helper/PaymentInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getPaymentType()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    .line 189
    const-string v30, "SUB"

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/purchase/PricingType;->getOrderType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 190
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getCurTime()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionStartDate:Ljava/lang/String;

    .line 193
    :cond_4
    const-string v30, "Y"

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/PaymentInfo;->giftCardnCouponYN:Ljava/lang/String;

    .line 195
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getExceptionPaymentMethods()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 196
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getExceptionPaymentMethods()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    .line 197
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "createtUnifiedPaymentData  exceptionPaymentMethods : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_5
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->paymentInfo:Lcom/sec/android/app/billing/helper/PaymentInfo;

    .line 203
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "createtUnifiedPaymentData paymentInfo.paymentType : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v22, Lcom/sec/android/app/billing/helper/SignatureInfo;

    invoke-direct/range {v22 .. v22}, Lcom/sec/android/app/billing/helper/SignatureInfo;-><init>()V

    .line 208
    .local v22, "signatureInfo":Lcom/sec/android/app/billing/helper/SignatureInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/SignatureInfo;->timeStamp:Ljava/lang/String;

    .line 209
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getBaseString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/SignatureInfo;->baseString:Ljava/lang/String;

    .line 210
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getSignature()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/billing/helper/SignatureInfo;->signature:Ljava/lang/String;

    .line 211
    move-object/from16 v0, v22

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->signatureInfo:Lcom/sec/android/app/billing/helper/SignatureInfo;

    .line 215
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_6

    const-string v30, "0"

    .line 216
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 218
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v15, "obj":Lorg/json/JSONObject;
    const-string/jumbo v30, "selectedVoucherId"

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    .line 221
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "extraData : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v14, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v15    # "obj":Lorg/json/JSONObject;
    :cond_6
    :goto_0
    const-string v30, "UnifiedPaymentDataUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "createtUnifiedPaymentData"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-object v14

    .line 222
    :catch_0
    move-exception v9

    .line 223
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static doubleToPrice(D)Ljava/lang/String;
    .locals 2
    .param p0, "dbl"    # D

    .prologue
    .line 232
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 233
    .local v0, "n":Ljava/text/NumberFormat;
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method private static getBillingServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 257
    .local v0, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    const-string v1, ""

    .line 258
    .local v1, "server":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 259
    const-string v2, "billingserver"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_0
    return-object v1
.end method

.method private static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const-string v0, "M|"

    .line 240
    .local v0, "dtype":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 241
    .local v1, "uiType":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    const-string v2, "UnifiedPaymentDataUtil"

    const-string/jumbo v3, "table type of billing ui requested"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "T|"

    .line 246
    :cond_1
    return-object v0
.end method
