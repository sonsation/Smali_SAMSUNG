.class public Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CheckCountryWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/CheckCountryInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "msgId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 23
    const/16 v4, 0x10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/CheckCountryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "doWorkInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "mcc":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "mnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->hasEasterEgg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, "1"

    .line 34
    .local v5, "testYn":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getShortenPackageName()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->IsRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "1"

    .line 36
    .local v7, "isRoaming":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 37
    invoke-static {v2, v8}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 36
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;->checkCountry(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 33
    .end local v5    # "testYn":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "isRoaming":Ljava/lang/String;
    :cond_0
    const-string v5, "0"

    goto :goto_0

    .line 35
    .restart local v5    # "testYn":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v7, "0"

    goto :goto_1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/CheckCountryInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/CheckCountryInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 52
    packed-switch p2, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-nez p3, :cond_0

    .line 58
    move-object v0, p4

    .line 59
    .local v0, "info":Lcom/samsung/android/app/music/common/model/CheckCountryInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.countrycode"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 19
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/CheckCountryInfo;I)V

    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 19
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/CheckCountryInfo;I)V

    return-void
.end method
