.class public final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;
.super Ljava/lang/Object;
.source "ScreenOffMusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils$HeadsetConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static canStartService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isOwnerUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 31
    const-string v4, "SOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onReceive(), but ignore it because not in call idle."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    .line 38
    .local v3, "viewCoverManager":Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v4

    if-nez v4, :cond_3

    .line 39
    const-string v4, "SOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onReceive(), but ignore it because cover is close."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v3    # "viewCoverManager":Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
    :cond_3
    const-string v4, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const-string/jumbo v4, "state"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "state":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "checker":Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->hasPlayingSession()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    const-string v4, "power"

    .line 53
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 53
    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->wakeUp(Landroid/os/PowerManager;J)V

    .line 55
    const/4 v0, 0x0

    .line 59
    .local v0, "canStart":Z
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->release()V

    goto/16 :goto_0

    .line 57
    .end local v0    # "canStart":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "canStart":Z
    goto :goto_1
.end method
