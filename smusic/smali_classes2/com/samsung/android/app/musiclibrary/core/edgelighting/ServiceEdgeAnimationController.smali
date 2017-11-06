.class public final Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
.super Ljava/lang/Object;
.source "ServiceEdgeAnimationController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;


# static fields
.field private static final ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field private static final ACTION_MIRROR_LINK_STATE:Ljava/lang/String; = "com.samsung.android.mirrorlink.ML_STATE"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFIX_LOG_TAG:Ljava/lang/String;

.field private static final sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

.field private static sCurrentEdgeLightningColors:[I

.field private static sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;


# instance fields
.field private mBouncerShowing:Z

.field private final mCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

.field private mCocktailBarListenerRegistered:Z

.field private final mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentCallbackCount:I

.field private mDisabled:Z

.field private mEdgeLightingSettingEnabled:Z

.field private mEdgeLightningColors:[I

.field private mEdgePanelOpen:Z

.field private mIsClearCoverOpen:Z

.field private mIsInMultiWindow:Z

.field private mIsPlaying:Z

.field private final mKeyguardStateListener:Landroid/content/BroadcastReceiver;

.field private mKeyguardStateUpdaterListenerRegistered:Z

.field private mMirrorLinkActive:Z

.field private final mMirrorLinkStateListener:Landroid/content/BroadcastReceiver;

.field private mMirrorLinkStateUpdaterRegistered:Z

.field private final mResPolicy:Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

.field private final mSettingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field private final mUpdateColorsAfterRotation:Ljava/lang/Runnable;

.field private final mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private final sEdgeLightningLock:Ljava/lang/Object;

.field private sIsEdgeAnimationPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    .line 79
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setStrokeAlpha(F)V

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setRotateDuration(J)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "center"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    .param p3, "settingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .param p4, "policy"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightningLock:Ljava/lang/Object;

    .line 99
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateUpdaterListenerRegistered:Z

    .line 103
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mBouncerShowing:Z

    .line 105
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkActive:Z

    .line 107
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateListener:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateListener:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 193
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    .line 195
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUpdateColorsAfterRotation:Ljava/lang/Runnable;

    .line 204
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$6;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 439
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mSettingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    .line 127
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

    .line 128
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 129
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getEdgeLighting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightingSettingEnabled:Z

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mSettingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "edge_lighting"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 139
    .local v0, "onCoverStateChangeListener":Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsClearCoverOpen:Z

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterCocktailBarListener()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterKeyguardStateUpdater()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterMirrorLinkStateUpdater()V

    .line 144
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->applyCurrentState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->updateEdgeAnimation(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->doStopEdgeLightning()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->doStartEdgeLightning()V

    return-void
.end method

.method static synthetic access$1300()Lcom/samsung/android/edgelighting/IEdgeLightingController;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightingSettingEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkActive:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsClearCoverOpen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgePanelOpen:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgePanelOpen:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCurrentCallbackCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->stopEdgeLightning()V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
    .param p1, "x1"    # [I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    return-object v0
.end method

.method private applyCurrentState()V
    .locals 4

    .prologue
    .line 261
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightingSettingEnabled:Z

    if-nez v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->stopEdgeLightning()V

    .line 275
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterKeyguardStateUpdater()V

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterCocktailBarListener()V

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->tryRegisterMirrorLinkStateUpdater()V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 269
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCurrentCallbackCount:I

    if-lez v1, :cond_1

    .line 270
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 271
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 270
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->updateColors(IJ)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->stopEdgeLightning()V

    goto :goto_0
.end method

.method private checkEdgeLightningStopCondition()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isInMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgePanelOpen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mBouncerShowing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkActive:Z

    if-nez v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isClearCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doStartEdgeLightning()V
    .locals 3

    .prologue
    .line 378
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartEdgeLightning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sIsEdgeAnimationPlaying:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    const-string v1, "first stop old animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingController;->stopApplication()V

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->ensureController()V

    .line 384
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;->getStrokeWithResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 384
    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setStrokeWidth(F)V

    .line 386
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setEffectColors([I)V

    .line 387
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/edgelighting/IEdgeLightingController;->startApplication(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V

    .line 388
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingController;->refreshBackground()V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sIsEdgeAnimationPlaying:Z

    .line 390
    return-void
.end method

.method private doStopEdgeLightning()V
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    const-string v1, "doStopEdgeLightning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingController;->stopApplication()V

    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sIsEdgeAnimationPlaying:Z

    .line 322
    return-void
.end method

.method private ensureController()V
    .locals 3

    .prologue
    .line 368
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    if-nez v0, :cond_1

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    .line 373
    :cond_0
    monitor-exit v1

    .line 375
    :cond_1
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleDisable(Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;)V
    .locals 3
    .param p1, "parcelable"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;->isDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mDisabled:Z

    .line 418
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private handleEdgeAnimationState(Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;)V
    .locals 3
    .param p1, "parcelable"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;->isMultiWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsInMultiWindow:Z

    .line 423
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInMultiWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsInMultiWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private isClearCoverOpen()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsClearCoverOpen:Z

    return v0
.end method

.method private isCocktailBarManagerAvailable()Z
    .locals 2

    .prologue
    .line 450
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x316a2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInMultiWindow()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsInMultiWindow:Z

    return v0
.end method

.method private isUiThread()Z
    .locals 4

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEdgeLightning()V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->doStopEdgeLightning()V

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$7;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tryRegisterCocktailBarListener()V
    .locals 2

    .prologue
    .line 214
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarListenerRegistered:Z

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isCocktailBarManagerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    move-result-object v0

    .line 220
    .local v0, "cocktailBarManager":Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 221
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->registerStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarListenerRegistered:Z

    goto :goto_0

    .line 224
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarListenerRegistered:Z

    goto :goto_0
.end method

.method private tryRegisterKeyguardStateUpdater()V
    .locals 3

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateUpdaterListenerRegistered:Z

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateUpdaterListenerRegistered:Z

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private tryRegisterMirrorLinkStateUpdater()V
    .locals 3

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateUpdaterRegistered:Z

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateUpdaterRegistered:Z

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterKeyguardStateUpdater()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateUpdaterListenerRegistered:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateUpdaterListenerRegistered:Z

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mKeyguardStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private unregisterMirrorLinkStateUpdater()V
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateUpdaterRegistered:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateUpdaterRegistered:Z

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mMirrorLinkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private updateColors(IJ)V
    .locals 8
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;->convertCpAttrsToUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 254
    .local v3, "baseUri":Landroid/net/Uri;
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateColors cpAttrs = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], albumId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;

    .line 256
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;->getImageSizeResId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    .line 258
    return-void
.end method

.method private updateEdgeAnimation(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 329
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->PREFIX_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEdgeAnimation() called with: isPlaying = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->checkEdgeLightningStopCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->stopEdgeLightning()V

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    if-eqz v0, :cond_1

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sIsEdgeAnimationPlaying:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sCurrentEdgeLightningColors:[I

    .line 336
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mEdgeLightningColors:[I

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sCurrentEdgeLightningColors:[I

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->doStartEdgeLightning()V

    goto :goto_0

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$8;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 348
    :cond_5
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    if-eqz v0, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->sEdgeLightingController:Lcom/samsung/android/edgelighting/IEdgeLightingController;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingController;->refreshBackground()V

    goto :goto_0

    .line 352
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$9;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCallbackCountChange(I)V
    .locals 4
    .param p1, "currentCallbackCount"    # I

    .prologue
    .line 394
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackCountChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCurrentCallbackCount:I

    .line 396
    if-nez p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUpdateColorsAfterRotation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mUpdateColorsAfterRotation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->applyCurrentState()V

    .line 401
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 250
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->applyCurrentState()V

    .line 231
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsPlaying:Z

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mIsPlaying:Z

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->applyCurrentState()V

    .line 239
    :cond_0
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
    .line 245
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->isCocktailBarManagerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 430
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->unregisterStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->unregisterKeyguardStateUpdater()V

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->unregisterMirrorLinkStateUpdater()V

    .line 434
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mSettingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "edge_lighting"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    .line 437
    return-void
.end method

.method public setEdgeAnimationState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 405
    :try_start_0
    instance-of v2, p1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;

    if-eqz v2, :cond_1

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->handleEdgeAnimationState(Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;)V

    .line 410
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->applyCurrentState()V

    .line 414
    :goto_1
    return-void

    .line 407
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;

    if-eqz v2, :cond_0

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->handleDisable(Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong edge animation state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
