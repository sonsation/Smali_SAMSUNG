.class public Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ServicePauseTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ServicePauseTask"


# instance fields
.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 37
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "ServicePauseTask"

    return-object v0
.end method

.method protected ignoreMyMusicMode()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->isRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "ServicePauseTask"

    const-string/jumbo v1, "onServiceConnected : meta data radio"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->pauseRadio()V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 51
    :cond_0
    return-void

    .line 45
    :cond_1
    const-string v0, "ServicePauseTask"

    const-string/jumbo v1, "onServiceConnected : meta data not radio"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->pause()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 55
    return-void
.end method
