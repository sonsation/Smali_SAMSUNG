.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;
.super Ljava/lang/Object;
.source "ScreenSharingVolumeManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

.field private final mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    .line 21
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->initialize()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->registerDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->setOnVolumeListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public initializeMute()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->getMute()V

    .line 35
    return-void
.end method

.method public onSetVolume(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVolumeListener - onSetVolume() level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setWifiDisplayVolume(Landroid/hardware/display/DisplayManager;I)V

    .line 47
    return-void
.end method

.method public onUpdateMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVolumeListener - onUpdateMute() mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semSetWifiDisplayVolumeMuted(Landroid/hardware/display/DisplayManager;Z)V

    .line 53
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->setOnVolumeListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->unregisterDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    .line 41
    return-void
.end method
