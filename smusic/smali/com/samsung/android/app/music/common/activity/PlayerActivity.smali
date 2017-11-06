.class public Lcom/samsung/android/app/music/common/activity/PlayerActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;


# static fields
.field private static final EXTRA_LAUNCH_WITH_QUEUE:Ljava/lang/String; = "extra_launch_with_queue"


# instance fields
.field private mActivityTransitionEnabled:Z

.field private final mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFinishCount:I

.field private mIsActionbarMenuOpened:Z

.field private mIsFinishAfterTransition:Z

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

.field private mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsActionbarMenuOpened:Z

    .line 311
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getPlayerFragment()Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    return-object v0
.end method

.method private isDLNAConnected(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isDmrPlaying()Z

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

.method private isNeedNetworkManager()Z
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    return v0
.end method

.method private registerEasyModeReceiver()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "loggingExtra"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method private static startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "loggingExtra"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    const-string v2, "is_enable_transition"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    const/16 v1, 0x32b

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 134
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ENFP"

    invoke-static {v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static startActivityClearTop(Landroid/app/Activity;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 103
    const/high16 v0, 0x4000000

    invoke-static {p0, v1, v1, v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public static startActivityWithQueue(Landroid/app/Activity;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_enable_transition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v1, "extra_launch_with_queue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public static startActivityWithoutAnimation(Landroid/app/Activity;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v1, "is_enable_transition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public static supportUpscalerInArtwork(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 307
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 365
    :cond_0
    return-void
.end method

.method public addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 326
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsFinishAfterTransition:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public finishAfterTransition()V
    .locals 4

    .prologue
    .line 245
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishAfterTransition() - mFinishCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    if-eqz v1, :cond_4

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsFinishAfterTransition:Z

    .line 249
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    if-nez v1, :cond_0

    .line 253
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    .line 260
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 266
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    .line 267
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->setResult(I)V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getPlayerFragment()Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    move-result-object v0

    .line 270
    .local v0, "fg":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setExitTransitionView()V

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->isActivityTranslucent()Z

    move-result v1

    if-nez v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->finishActivityAfterConvertToTranslucent()V

    .line 283
    .end local v0    # "fg":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    :goto_0
    return-void

    .line 277
    .restart local v0    # "fg":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    if-nez v1, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->finish()V

    goto :goto_0

    .line 282
    .end local v0    # "fg":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->finishAfterTransition()V

    goto :goto_0
.end method

.method public getLastPrimaryColor()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getLastPrimaryColor()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method public getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 2
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 336
    return-void
.end method

.method public isActivityTransitionEnabled()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    return v0
.end method

.method public isMenuOpened()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsActionbarMenuOpened:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 232
    const-string v1, "UiPlayer"

    const-string/jumbo v2, "onBackPressed()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 235
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mFinishCount:I

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getPlayerFragment()Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    move-result-object v0

    .line 238
    .local v0, "fg":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->handleBackPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onBackPressed()V

    .line 241
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    if-eqz v4, :cond_0

    .line 154
    if-eqz p1, :cond_6

    .line 155
    const-string/jumbo v4, "saved_instance_state_activiy_transition_enabled"

    .line 156
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    .line 161
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setPlayerTransition(Landroid/view/Window;)V

    .line 164
    new-instance v4, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .line 165
    if-nez p1, :cond_0

    .line 166
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->convertToTranslucent()V

    .line 170
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2015A:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_N:Z

    if-eqz v4, :cond_2

    .line 171
    :cond_1
    const v4, 0x7f0f00c1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->setTheme(I)V

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->isNeedNetworkManager()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    new-instance v4, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 176
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 179
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getPlayerFragment()Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    move-result-object v4

    if-nez v4, :cond_4

    .line 182
    if-eqz v2, :cond_8

    const-string v4, "extra_launch_with_queue"

    .line 183
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move v3, v5

    .line 184
    .local v3, "launchWithQueue":Z
    :goto_1
    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->newInstance(Z)Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    move-result-object v1

    .line 185
    .local v1, "fg":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    sget-object v6, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    .line 186
    invoke-virtual {v4, v5, v1, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 188
    .end local v1    # "fg":Landroid/app/Fragment;
    .end local v3    # "launchWithQueue":Z
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->registerEasyModeReceiver()V

    .line 189
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BARGE_IN:Z

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 190
    new-instance v4, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 192
    :cond_5
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/app/music/common/activity/PlayerActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerActivity;)V

    invoke-direct {v4, v5, p0, v6}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .line 204
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 209
    return-void

    .line 158
    :cond_6
    if-eqz v2, :cond_7

    const-string v4, "is_enable_transition"

    .line 159
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    goto/16 :goto_0

    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    move v3, v6

    .line 183
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 228
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 393
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 395
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "queueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 402
    .local v0, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 404
    .end local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .end local v1    # "queueType":I
    :cond_0
    return-void

    .line 400
    .restart local v1    # "queueType":I
    :cond_1
    move-object v0, p0

    .restart local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 377
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsActionbarMenuOpened:Z

    .line 380
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 385
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mIsActionbarMenuOpened:Z

    .line 388
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 389
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    const-string/jumbo v0, "saved_instance_state_activiy_transition_enabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mActivityTransitionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStart()V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->finish()V

    .line 222
    :cond_0
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 373
    :cond_0
    return-void
.end method

.method public removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 331
    return-void
.end method

.method public setStaticThumbnailId(J)V
    .locals 1
    .param p1, "thumbnailId"    # J

    .prologue
    .line 340
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 341
    return-void
.end method

.method public setStaticThumbnailId(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 346
    return-void
.end method
