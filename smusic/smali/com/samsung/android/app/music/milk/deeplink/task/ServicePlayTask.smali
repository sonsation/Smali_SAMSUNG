.class public Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ServicePlayTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ServicePlayTask"


# instance fields
.field private mOption:Ljava/lang/String;

.field private mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mTrackId:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mOption:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 46
    return-void
.end method

.method private showToast(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 134
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NO_FEEDBACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mOption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "ServicePlayTask"

    const-string/jumbo v2, "showToast : No feedback option exist, dn not show toast"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0a039e

    .line 141
    .local v0, "strId":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 139
    .end local v0    # "strId":I
    :cond_2
    const v0, 0x7f0a039d

    goto :goto_1
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->launchMainActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "ServicePlayTask"

    return-object v0
.end method

.method protected ignoreMyMusicMode()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    if-nez p3, :cond_4

    .line 101
    const/16 v1, 0xc9

    if-ne p2, v1, :cond_2

    .line 102
    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_1

    move-object v0, p4

    .line 103
    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 104
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v1, "ServicePlayTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Station exist in server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->replaceDeepLinkStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    .line 127
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v1, "ServicePlayTask"

    const-string v2, "onApiHandled : API success, but invalid data received"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->showToast(Z)V

    goto :goto_0

    .line 111
    :cond_2
    const/16 v1, 0xe0

    if-ne p2, v1, :cond_0

    .line 112
    if-eqz p4, :cond_3

    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_3

    move-object v0, p4

    .line 113
    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 114
    .restart local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v1, "ServicePlayTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Station saved as deeplink station : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->showToast(Z)V

    goto :goto_0

    .line 119
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_3
    const-string v1, "ServicePlayTask"

    const-string v2, "onApiHandled : API success, but invalid data received"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->showToast(Z)V

    goto :goto_0

    .line 124
    :cond_4
    const-string v1, "ServicePlayTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : API failed, req : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rsp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->showToast(Z)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->isRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "ServicePlayTask"

    const-string/jumbo v1, "onServiceConnected : meta data radio"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "ServicePlayTask"

    const-string/jumbo v1, "onServiceConnected : meta data not radio"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isVisibleStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "ServicePlayTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : Station visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mTrackId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->showToast(Z)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "ServicePlayTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : Station id not visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;->mStationId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    return-void
.end method
