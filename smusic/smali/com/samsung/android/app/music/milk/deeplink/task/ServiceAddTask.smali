.class public Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ServiceAddTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ServiceAddTask"


# instance fields
.field private mIsPlay:Z

.field private mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPlay"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mIsPlay:Z

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mStationId:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mTrackId:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 54
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "ServiceAddTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 80
    const/16 v0, 0xd4

    if-eq p2, v0, :cond_0

    const/16 v0, 0xca

    if-ne p2, v0, :cond_2

    .line 82
    :cond_0
    const-string v0, "ServiceAddTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : Add to my station : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    packed-switch p3, :pswitch_data_0

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 95
    :cond_2
    return-void

    .line 86
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mIsPlay:Z

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mStationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mTrackId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 58
    const-string v1, "ServiceAddTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected : Service connnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mStationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 60
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mTrackId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mIsPlay:Z

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "ServiceAddTask"

    const-string/jumbo v2, "onServiceConnected : Station ID not exist in DB"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    return-void
.end method
