.class public Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "StoreDataWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreData;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "msgId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 19
    const/16 v4, 0x9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->storeData(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 14
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreData;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreData;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreData;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 36
    if-nez p3, :cond_0

    .line 37
    move-object v0, p4

    .line 38
    .local v0, "storeData":Lcom/samsung/android/app/music/common/model/milkstore/StoreData;
    if-eqz v0, :cond_0

    .line 40
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.dormancycount"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getDormancyCount()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.start_client.force_update_version"

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getPartnerAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.currency.sign"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getCurrencySign()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.smart_station_guide_url"

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getJustForYouGuideUrl()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.smart_station_support_type"

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getJustForYouSupportType()I

    move-result v5

    .line 46
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.store.support_bixby_search_remove"

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->isSupportBixbySearchDelimiterRemoveFeature()Z

    move-result v5

    .line 48
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.store.bixbyconfig_search_play_type"

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyConfigListType()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.store.bixbyconfig_search_play_count"

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyConfigListCount()I

    move-result v5

    .line 52
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.store.bixbyconfig_on_device_search_keword_max_count"

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyOnDeviceSearchKeywordMaxCount()I

    move-result v5

    .line 54
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v4, "GOOGLE_PLAY_STORE_UPLOADED"

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyConfigGoogleUpdate()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 56
    :goto_0
    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_BIXBY_PROMOTION_RESET_TIME"

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyPromotionResetTime()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_BIXBY_PROMOTION_RESET_DISPLAY"

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->isBixbyPromotionResetDisplay()Z

    move-result v4

    .line 60
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_BIXBY_EXCUTABLE_SEARCH_RESULT_MAX_COUNT"

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getBixbyExcutableResultMaxCount()I

    move-result v4

    .line 62
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getConfigs()Lcom/samsung/android/app/music/common/model/StoreDataConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->getCopyRight()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_PURCHASE_POPUP_TEXT"

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getConfigs()Lcom/samsung/android/app/music/common/model/StoreDataConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->getPurchasePopupText()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_MEMBERS_PREBODY"

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getConfigs()Lcom/samsung/android/app/music/common/model/StoreDataConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->getMembersPrebody()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getAdInterval()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->parsePattern(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getAdInterval()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_INTERVAL"

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getVideoAdIntervalTime()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_CP"

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getConfigs()Lcom/samsung/android/app/music/common/model/StoreDataConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->getVideoAdDefaultCp()I

    move-result v4

    .line 76
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    .end local v0    # "storeData":Lcom/samsung/android/app/music/common/model/milkstore/StoreData;
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 81
    return-void

    .restart local v0    # "storeData":Lcom/samsung/android/app/music/common/model/milkstore/StoreData;
    :cond_1
    move v1, v2

    .line 57
    goto/16 :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 14
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreData;I)V

    return-void
.end method
