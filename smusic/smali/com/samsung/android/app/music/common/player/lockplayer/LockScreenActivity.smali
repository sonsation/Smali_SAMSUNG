.class public final Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LockPlayer"

.field private static final MAX_DISTANCE:D = 0.8

.field private static final SWIPE_DISTANCE:D = 0.4


# instance fields
.field private activeTask:Ljava/lang/Runnable;

.field private mDownX:F

.field private mDownY:F

.field private mLockActive:Z

.field private mLockHandler:Landroid/os/Handler;

.field private mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

.field private mMaxDragDistance:F

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

.field private mUnlockDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->activeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockActive:Z

    return p1
.end method

.method public static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private isSpecialKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 218
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    :goto_0
    return v0

    .line 216
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x2d -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x6f -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x8f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xab -> :sswitch_0
    .end sparse-switch
.end method

.method private maxTransChildViewVI()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->maxTransVI()V

    .line 256
    return-void
.end method

.method private resetChildViewVI()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->resetVI()V

    .line 260
    return-void
.end method

.method private unlockScreen(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->maxTransChildViewVI()V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 225
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$3;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$4;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method private updateChildViewVI(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mMaxDragDistance:F

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->updateVI(FF)V

    .line 252
    return-void
.end method


# virtual methods
.method public addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 265
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const v0, 0x7f050010

    .line 152
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->finish()V

    .line 155
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->overridePendingTransition(II)V

    .line 156
    return-void
.end method

.method public getLastPrimaryColor()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getLastPrimaryColor()I

    move-result v0

    return v0
.end method

.method public getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 2
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 275
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$5;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x200

    .line 80
    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v3

    .line 83
    .local v3, "uiType":I
    if-nez v3, :cond_1

    .line 84
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->setRequestedOrientation(I)V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 89
    .local v2, "fm":Landroid/app/FragmentManager;
    sget-object v4, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .line 90
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    if-nez v4, :cond_0

    .line 91
    new-instance v4, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-direct {v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .line 92
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockScreenFragment:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    sget-object v7, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->TAG:Ljava/lang/String;

    .line 93
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    .local v1, "deviceWidth":I
    int-to-double v4, v1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mUnlockDistance:F

    .line 98
    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mMaxDragDistance:F

    .line 99
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    new-instance v5, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$2;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V

    invoke-direct {v4, p0, p0, v5}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .line 112
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 116
    return-void

    .line 86
    .end local v1    # "deviceWidth":I
    .end local v2    # "fm":Landroid/app/FragmentManager;
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 294
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 296
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 298
    .local v1, "queueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 303
    .local v0, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 305
    .end local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .end local v1    # "queueType":I
    :cond_0
    return-void

    .line 301
    .restart local v1    # "queueType":I
    :cond_1
    move-object v0, p0

    .restart local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->isSpecialKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->unlockScreen(Landroid/view/View;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->activeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockActive:Z

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->activeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStart()V

    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "SMUSIC-LockPlayer"

    const-string/jumbo v1, "onStart isDesktopMode true & finish"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 161
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 162
    .local v3, "currentX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 165
    .local v4, "currentY":F
    packed-switch v2, :pswitch_data_0

    .line 179
    :pswitch_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownX:F

    sub-float v5, v11, v3

    .line 180
    .local v5, "movedX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownY:F

    sub-float v10, v11, v4

    .line 181
    .local v10, "movedY":F
    float-to-double v12, v5

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 182
    .local v8, "length":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mUnlockDistance:F

    float-to-double v12, v11

    cmpl-double v11, v8, v12

    if-lez v11, :cond_0

    .line 183
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->unlockScreen(Landroid/view/View;)V

    .line 189
    .end local v5    # "movedX":F
    .end local v8    # "length":D
    .end local v10    # "movedY":F
    :goto_0
    const/4 v11, 0x0

    return v11

    .line 167
    :pswitch_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownX:F

    .line 168
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownY:F

    goto :goto_0

    .line 171
    :pswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownX:F

    sub-float v5, v11, v3

    .line 172
    .restart local v5    # "movedX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mDownY:F

    sub-float v10, v11, v4

    .line 173
    .restart local v10    # "movedY":F
    float-to-double v12, v5

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 174
    .local v6, "distance":D
    double-to-float v11, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->updateChildViewVI(F)V

    goto :goto_0

    .line 185
    .end local v6    # "distance":D
    .restart local v8    # "length":D
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->resetChildViewVI()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 270
    return-void
.end method

.method public setStaticThumbnailId(J)V
    .locals 1
    .param p1, "thumbnailId"    # J

    .prologue
    .line 279
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 280
    return-void
.end method

.method public setStaticThumbnailId(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 285
    return-void
.end method
