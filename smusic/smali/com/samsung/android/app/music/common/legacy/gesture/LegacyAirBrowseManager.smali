.class public Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;
.super Ljava/lang/Object;
.source "LegacyAirBrowseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String;

.field private static volatile sLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;


# instance fields
.field private mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

.field private mOnAirBrowseChangedListener:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

.field private final mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->LOG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;-><init>(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureEventChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mOnAirBrowseChangedListener:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->sLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->sLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->sLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->sLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isAirBrowseEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "air_motion_turn"

    const/4 v4, -0x2

    .line 66
    invoke-static {v0, v3, v2, v4}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static isAirBrowseOnLockScreenEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "air_motion_turn_bgm_on_lock_screen"

    const/4 v4, -0x2

    .line 80
    invoke-static {v0, v3, v2, v4}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static isAirBrowseOnNowPlayingScreenEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "air_motion_turn_now_playing_on_music"

    const/4 v4, -0x2

    .line 73
    invoke-static {v0, v3, v2, v4}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isLockScreenAirBrowseEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isAirBrowseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isAirBrowseOnLockScreenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayerAirBrowseEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isAirBrowseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isAirBrowseOnNowPlayingScreenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerAirBrowseChangedListener(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mOnAirBrowseChangedListener:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    .line 41
    return-void
.end method

.method public startAirBrowseService(Z)V
    .locals 1
    .param p1, "isSupportLandscape"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener(Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public stopAirBrowseService()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->mGestureManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->unregisterGestureListener()V

    .line 53
    :cond_0
    return-void
.end method
