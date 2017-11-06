.class public Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;
.source "EdgeLightingNotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;,
        Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final mBlockNotiTouch_for_NA:Z


# instance fields
.field private final DEFAULT_EDGE_COLOR:I

.field private final MSG_DISMISS_CONTAINER:I

.field private final MSG_HIDE_ITEM:I

.field private final MSG_HIDE_LIGHTING_ITEM:I

.field private final MSG_SHOW_ITEM:I

.field private mAODManager:Lcom/samsung/android/aod/AODManager;

.field mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mInfiniteLighting:Z

.field private mIsShowMorphView:Z

.field mKgm:Landroid/app/KeyguardManager;

.field private mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

.field private mLightingDuration:J

.field private mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field mPm:Landroid/os/PowerManager;

.field private mShowOnlyToast:Z

.field private mToastDuration:J

.field private mUsingBlackBG:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_BlockDoubleTapNotiOnLockScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mBlockNotiTouch_for_NA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 44
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->DEFAULT_EDGE_COLOR:I

    .line 46
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_SHOW_ITEM:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_ITEM:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_DISMISS_CONTAINER:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_LIGHTING_ITEM:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mShowOnlyToast:Z

    .line 61
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mToastDuration:J

    .line 63
    const-wide/16 v0, 0xce4

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightingDuration:J

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    .line 217
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->DEFAULT_EDGE_COLOR:I

    .line 46
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_SHOW_ITEM:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_ITEM:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_DISMISS_CONTAINER:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_LIGHTING_ITEM:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mShowOnlyToast:Z

    .line 61
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mToastDuration:J

    .line 63
    const-wide/16 v0, 0xce4

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightingDuration:J

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    .line 217
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->DEFAULT_EDGE_COLOR:I

    .line 46
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_SHOW_ITEM:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_ITEM:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_DISMISS_CONTAINER:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->MSG_HIDE_LIGHTING_ITEM:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mShowOnlyToast:Z

    .line 61
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mToastDuration:J

    .line 63
    const-wide/16 v0, 0xce4

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightingDuration:J

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    .line 217
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->init()V

    .line 99
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->launchPendingIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/MorphView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    return-object v0
.end method

.method private hideLightingEffect(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x4

    .line 397
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "hideLightingEffect infinite Noti Type "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private hideTickerTextAnimation(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x2

    .line 386
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    if-eqz v0, :cond_1

    .line 390
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "hideTickerTextAnimation onGoing Noti Type "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private launchMultiWindow()V
    .locals 5

    .prologue
    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.quicklaunch.QuickLaunchService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "pendingIntent"

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    return-void
.end method

.method private launchPendingIntent()V
    .locals 7

    .prologue
    .line 184
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 187
    .local v2, "isInteractive":Z
    if-nez v2, :cond_0

    .line 188
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->semWakeUp(JI)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 192
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "fillInIntent":Landroid/content/Intent;
    const-string v3, "afterKeyguardGone"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    sget-boolean v3, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mBlockNotiTouch_for_NA:Z

    if-eqz v3, :cond_3

    .line 197
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getKeyguardManager()Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;->setBendedPendingIntent(Ljava/lang/Object;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 207
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-interface {v3}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;->onClickToast()V

    .line 214
    .end local v2    # "isInteractive":Z
    :cond_2
    :goto_2
    return-void

    .line 199
    .restart local v1    # "fillInIntent":Landroid/content/Intent;
    .restart local v2    # "isInteractive":Z
    :cond_3
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "isInteractive":Z
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "isInteractive":Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showTickerTextAnimation()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->hide()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_2

    .line 283
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " remove edge  tsp  rect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIII)V

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->unregisterAODReceiver()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    return-void
.end method

.method public getScreenSizeRateFromPhysical()F
    .locals 12

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 516
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_1

    .line 517
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 518
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 519
    .local v0, "density":F
    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v9

    .line 520
    .local v1, "densityDpi":F
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v7, v9

    .line 521
    .local v7, "width":F
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getIWindowManagerStub()Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getServiceManager()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    move-result-object v10

    const-string/jumbo v11, "window"

    invoke-virtual {v10, v11}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;

    move-result-object v8

    .line 523
    .local v8, "wm":Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
    const/high16 v3, 0x44b40000    # 1440.0f

    .line 524
    .local v3, "pWidth":F
    if-eqz v8, :cond_0

    .line 525
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 526
    .local v6, "size":Landroid/graphics/Point;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 529
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v9

    .line 533
    .end local v6    # "size":Landroid/graphics/Point;
    :cond_0
    cmpl-float v9, v3, v7

    if-ltz v9, :cond_1

    div-float v4, v3, v7

    .line 537
    .end local v0    # "density":F
    .end local v1    # "densityDpi":F
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "pWidth":F
    .end local v7    # "width":F
    .end local v8    # "wm":Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
    :cond_1
    return v4
.end method

.method public init()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->init()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_notification_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    sget v1, Lcom/samsung/android/edgelighting/R$id;->edge_lighting_effect:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .line 108
    sget v1, Lcom/samsung/android/edgelighting/R$id;->noti_morph_view:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/MorphView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mVibrator:Landroid/os/Vibrator;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-instance v2, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setScreenSize(II)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setScreenSize(II)V

    .line 150
    return-void

    .line 144
    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->onSizeChanged(IIII)V

    .line 419
    if-nez p3, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-object v1, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onSizeChanged w : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->toast_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 425
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/edgelighting/view/MorphView;->updateRefreshUI(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sec_e-pen"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->launchPendingIntent()V

    .line 159
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerAODReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    if-nez v1, :cond_0

    .line 465
    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;)V

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    .line 466
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 467
    .local v0, "updateFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    const-string v3, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 470
    .end local v0    # "updateFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setEffectColors([I)V
    .locals 4
    .param p1, "effectColors"    # [I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    .line 293
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->setEffectColors([I)V

    .line 294
    const v0, -0xf0551d

    .line 295
    .local v0, "color":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 296
    const/4 v1, 0x0

    aget v1, p1, v1

    or-int v0, v3, v1

    .line 297
    array-length v1, p1

    if-le v1, v2, :cond_0

    aget v1, p1, v2

    if-eqz v1, :cond_0

    .line 298
    aget v1, p1, v2

    or-int/2addr v1, v3

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setMainColor(I)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setToastColor(I)V

    .line 304
    return-void
.end method

.method public setLightingDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightingDuration:J

    .line 412
    return-void
.end method

.method public setNotificationInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mUsingBlackBG:Z

    if-eqz v0, :cond_1

    .line 340
    iput-boolean v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setNotificationInfo([Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getFillFullColor()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setFillToastColor(Z)V

    .line 348
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setEffectColors([I)V

    .line 350
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeWidth(F)V

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getInfiniteLighting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    .line 354
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getToastDuration()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 355
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getToastDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mToastDuration:J

    .line 357
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    .line 358
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setLightingDuration(J)V

    .line 360
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getToastStyle()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 361
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->changeToastStyle(I)V

    .line 363
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mShowOnlyToast:Z

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getShowOnlyToast()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 364
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getShowOnlyToast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mShowOnlyToast:Z

    .line 366
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setRotateDuration(J)V

    .line 369
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setRadiusWeight(F)V

    .line 373
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    .line 374
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeAlpha(F)V

    .line 376
    :cond_9
    return-void
.end method

.method public setNotificationInfo([Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "tickerText"    # [Ljava/lang/String;
    .param p2, "appIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    if-eqz p1, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->setNotiText([Ljava/lang/String;)V

    .line 322
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 326
    :goto_0
    if-eqz p2, :cond_0

    .line 327
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    .line 328
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/edgelighting/view/MorphView;->setNotiIcon(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_0
    if-eqz p3, :cond_1

    .line 331
    invoke-virtual {p0, p3}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 333
    :cond_1
    return-void

    .line 324
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    goto :goto_0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 379
    return-void
.end method

.method public setToastDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 407
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mToastDuration:J

    .line 408
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 245
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->show()V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " aod show . update tsp  W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getMaxWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getMaxWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getMinWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v3}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v4}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIII)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->registerAODReceiver()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->addTouchInsector()V

    .line 258
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->show()V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->showTickerTextAnimation()V

    .line 267
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mInfiniteLighting:Z

    if-nez v0, :cond_3

    .line 268
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mLightingDuration:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->hideLightingEffect(J)V

    .line 270
    :cond_3
    return-void
.end method

.method public unregisterAODReceiver()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    .line 482
    :cond_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAODReceiver: unable to unregister Receiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateText()V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->show()V

    .line 317
    return-void
.end method
