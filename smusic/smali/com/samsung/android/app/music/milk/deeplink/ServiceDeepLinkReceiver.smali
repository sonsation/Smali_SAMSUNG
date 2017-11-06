.class public Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceDeepLinkReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isPowerSaveModeBatteryOptimization()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 131
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 132
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    .line 133
    .local v1, "isPoserSaveMode":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    .line 136
    .local v0, "isIgnoringBatteryOptimizations":Z
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPowerSaveModeBatteryOptimization - Power save mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Battery optimization : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
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
    .line 100
    packed-switch p2, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    if-nez p3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.start_client.force_update_version"

    const-string v5, ""

    .line 104
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "updateVersionCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "currentVersion":I
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled - StoreData received, update ver. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current ver. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "updateVersion":I
    if-le v1, v0, :cond_1

    .line 115
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onApiHandled - Update exist, launch UI"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->launchMainActivity(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleServiceDeepLink(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 122
    .end local v0    # "currentVersion":I
    .end local v1    # "updateVersion":I
    .end local v2    # "updateVersionCode":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    const v4, 0x7f0a039c

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mIntent:Landroid/content/Intent;

    .line 47
    const/4 v0, 0x1

    .line 49
    .local v0, "isBackgroundAvailable":Z
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive - Broadcast received, Url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    const-string v5, "music_player_pref"

    .line 52
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 53
    .local v3, "uiPreference":Landroid/content/SharedPreferences;
    const-string v4, "legal_information_agreed"

    .line 54
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 55
    .local v1, "isLegalAgreed":Z
    const-string v4, "mobile_data_usage_notice"

    .line 56
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    .local v2, "isMobileDataAgreed":Z
    if-nez v1, :cond_2

    .line 59
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onReceive - TnC not checked"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 74
    :goto_1
    if-eqz v0, :cond_5

    .line 75
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 76
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    goto :goto_0

    .line 61
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    if-nez v2, :cond_3

    .line 64
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onReceive - Mobile data is available but setting disabled"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->isPowerSaveModeBatteryOptimization()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onReceive - Power save mode and MILK cannot ignore battery optimization."

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_4
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive - SDK version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->launchMainActivity(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceConnected - Service is connected."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->mServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreData(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 88
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    return-void
.end method
