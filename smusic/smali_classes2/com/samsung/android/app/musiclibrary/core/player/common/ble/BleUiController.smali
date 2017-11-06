.class public final Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;
.super Ljava/lang/Object;
.source "BleUiController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-UiPlayer"

.field private static final TAG:Ljava/lang/String; = "UiPlayer"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

.field private final mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

.field private mBleIcon:Landroid/widget/ImageView;

.field private mForceHide:Z

.field private final mIsScreenSharingSupported:Z

.field private mIsWfdConnected:Z

.field private final mOnIconLifecycleCallback:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;

.field private final mOnTvStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

.field private mPlayerType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onIconLifecycleCallback"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;
    .param p3, "bleConnection"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;
    .param p4, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mPlayerType:I

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    .line 231
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnTvStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mActivity:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnIconLifecycleCallback:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .line 68
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsScreenSharingSupported:Z

    .line 70
    invoke-interface {p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->setBleConnectButtonVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->hideBleConnectButton()V

    return-void
.end method

.method private hideBleConnectButton()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hideBleConnectButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnIconLifecycleCallback:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;->onDestroyIcon()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    .line 149
    return-void
.end method

.method private isSmartViewConnected()Z
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mPlayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAirView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->BOTTOM_UNDER:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 110
    :cond_0
    return-void
.end method

.method private setBleConnectButtonVisibility(Z)V
    .locals 1
    .param p1, "isWfdConnected"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsScreenSharingSupported:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->isSmartViewConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    if-eqz v0, :cond_2

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->hideBleConnectButton()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->showBleConnectButton()V

    goto :goto_0
.end method

.method private showBleConnectButton()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showBleConnectButton isDetected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->isDetectedTv()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mForceHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->isDetectedTv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnIconLifecycleCallback:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;->onCreateIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->updateBleConnectButtonInternal()V

    goto :goto_0
.end method

.method private updateBleConnectButtonInternal()V
    .locals 6

    .prologue
    .line 86
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v3, "UiPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateBleConnectButton - isConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 94
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->blur_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->setAirView(Landroid/content/Context;)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleIcon:Landroid/widget/ImageView;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_smart_view:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->reset()V

    .line 169
    :cond_0
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 229
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 202
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "needToUpdate":Z
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mPlayerType:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mPlayerType:I

    .line 209
    const/4 v1, 0x1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 212
    .local v0, "isWfdConnected":Z
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    if-eq v2, v0, :cond_1

    .line 213
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    .line 214
    const/4 v1, 0x1

    .line 216
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsScreenSharingSupported:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 217
    const-string v2, "UiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onPlaybackStateChanged() isWfdConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->setBleConnectButtonVisibility(Z)V

    .line 220
    :cond_2
    return-void

    .line 211
    .end local v0    # "isWfdConnected":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnTvStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->addOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->isDetectedTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mActivity:Landroid/app/Activity;

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    .line 175
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->setBleConnectButtonVisibility(Z)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->hideBleConnectButton()V

    goto :goto_0
.end method

.method public onStopCalled()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mOnTvStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->removeOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;)V

    .line 193
    return-void
.end method

.method public updateBleConnectButton(Z)V
    .locals 3
    .param p1, "forceHide"    # Z

    .prologue
    .line 74
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateBleConnectButton - forceHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsWfdConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mForceHide:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->hideBleConnectButton()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->mIsWfdConnected:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->setBleConnectButtonVisibility(Z)V

    goto :goto_0
.end method
