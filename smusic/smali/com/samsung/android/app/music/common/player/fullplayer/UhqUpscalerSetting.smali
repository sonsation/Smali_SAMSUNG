.class public Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;
.super Landroid/database/ContentObserver;
.source "UhqUpscalerSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;
    }
.end annotation


# static fields
.field private static final UHQ_OFF:I = 0x0

.field private static final UHQ_ON_HIGH:I = 0x1

.field private static final UHQ_ON_MID:I = 0x2

.field private static final UHQ_SETTING_KEY:Ljava/lang/String; = "k2hd_effect"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

.field private mObserving:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method

.method private isUhqaOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "k2hd_effect"

    sget v4, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_CURRENT:I

    .line 66
    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 67
    .local v0, "settingsValue":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mObserving:Z

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "k2hd_effect"

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->onChange(Z)V

    .line 75
    return-void
.end method

.method private stopObserving()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mObserving:Z

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    return-void
.end method


# virtual methods
.method public isUhqUpscalerEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isOwnerUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportSecureFolder(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mObserving:Z

    if-eqz v0, :cond_3

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mEnabled:Z

    goto :goto_0

    .line 95
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->isUhqaOn()Z

    move-result v0

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->isUhqaOn()Z

    move-result v1

    .line 57
    .local v1, "valueEnabled":Z
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mEnabled:Z

    if-eq v2, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 58
    .local v0, "needToUpdate":Z
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mEnabled:Z

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mEnabled:Z

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;->onChangeUhqUpscaler(ZZ)V

    .line 62
    :cond_1
    return-void

    .line 57
    .end local v0    # "needToUpdate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnContentChangeListener(Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->mListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->startObserving()V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->stopObserving()V

    goto :goto_0
.end method
