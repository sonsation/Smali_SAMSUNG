.class public final Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "VolumeController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;,
        Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;,
        Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;,
        Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    }
.end annotation


# static fields
.field private static final HIDE_VOLUME_TIME:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

.field private final mActivity:Landroid/app/Activity;

.field private final mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

.field private final mContext:Landroid/content/Context;

.field private final mControlListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

.field private final mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private mDmrVolumeControl:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

.field private final mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field private mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

.field private final mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private mNormalVolumeControl:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

.field private mPlayerType:I

.field private final mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

.field private final mSmartViewVolumeControlEnabled:Z

.field private mSoundPath:I

.field private mVolumeButton:Landroid/view/View;

.field private mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

.field private final mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

.field private final mVolumePanelHideHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mPlayerType:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSoundPath:I

    .line 320
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mControlListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    .line 349
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$4;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumePanelHideHandler:Landroid/os/Handler;

    .line 93
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$000(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActivity:Landroid/app/Activity;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$100(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    .line 96
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$200(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    .line 97
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$300(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 98
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$400(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$500(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$600(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$700(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewVolumeControlSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSmartViewVolumeControlEnabled:Z

    .line 106
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$800(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->createVolumeButton(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->changeVolumeControl()V

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$100(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 110
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->access$900(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->toggleVolumePanel()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/volume/VolumeController;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isSmallScreenAndLandscape(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->resetVolumePanelHideTimer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    return-object v0
.end method

.method private changeVolumeControl()V
    .locals 7

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isDmrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mDmrVolumeControl:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mControlListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mDmrVolumeControl:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mDmrVolumeControl:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalVolumeControl:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    if-nez v0, :cond_2

    .line 302
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mControlListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/BackgroundWorker;Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalVolumeControl:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalVolumeControl:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mNormalVolumeControl:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    goto :goto_0
.end method

.method private createVolumeButton(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    const v0, 0x7f120056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$2;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->setAirView(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    const v2, 0x7f0a0205

    .line 137
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 139
    :cond_0
    return-void
.end method

.method private isDmrMode()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mPlayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmallScreenAndLandscape(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 312
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportVolumeButton()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSmartViewVolumeControlEnabled:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isDmrMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVolumeButtonEnabled()Z
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isSupportVolumeButton()Z

    move-result v0

    .line 169
    .local v0, "enabled":Z
    if-nez v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const v1, 0x3ebd70a4    # 0.37f

    goto :goto_1
.end method

.method static isVolumeKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 357
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetVolumePanelHideTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumePanelHideHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumePanelHideHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    return-void
.end method

.method private setAirView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 152
    :cond_0
    return-void
.end method

.method private toggleVolumePanel()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->isShowingPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->hidePanel()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->showPanel()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;->changeVolume()V

    goto :goto_0
.end method


# virtual methods
.method public getDexVolumeController()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 0

    .prologue
    .line 271
    return-object p0
.end method

.method public hideVolumePanel()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->hidePanel()V

    .line 267
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->hideVolumePanel()V

    .line 231
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 219
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isSupportVolumeButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isSupportVolumeButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 253
    :cond_1
    :goto_0
    return v0

    .line 246
    :cond_2
    const/4 v0, 0x0

    .line 247
    .local v0, "handled":Z
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeMute(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isVolumeKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 191
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "needToUpdate":Z
    iget v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mPlayerType:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mPlayerType:I

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->changeVolumeControl()V

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSoundPath:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mSoundPath:I

    .line 205
    const/4 v0, 0x1

    .line 207
    :cond_1
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->updateVolumeUi()V

    .line 210
    :cond_2
    return-void
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
    .line 215
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isVolumeButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->updateIcon()V

    .line 226
    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public setOnPanelVisibilityChangedListener(Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    .line 318
    return-void
.end method

.method public toggleMuteOnDex()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->toggleMute()V

    .line 287
    return-void
.end method

.method public updateVolumeUi()V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isVolumeButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->updateIcon()V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->updatePanel()V

    .line 262
    :cond_0
    return-void
.end method

.method public volumeDownOnDex()Z
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->adjustVolume(ZI)Z

    move-result v0

    return v0
.end method

.method public volumeUpOnDex()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->mVolumeControl:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->adjustVolume(ZI)Z

    move-result v0

    return v0
.end method
