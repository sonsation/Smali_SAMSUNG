.class public abstract Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.super Landroid/app/Service;
.source "BaseScreenOffMusicService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;,
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SOM"

.field private static final NOTIFY_EXTRA_VISIBLE:Ljava/lang/String; = "visible"

.field private static final TAG:Ljava/lang/String; = "ScreenOffMusicService"


# instance fields
.field private mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationStater:Ljava/lang/Runnable;

.field private mCancel:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mDecorView:Landroid/view/View;

.field private final mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mFinished:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

.field private mPlayingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

.field private mScreenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

.field private mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

.field private mScreenOffMusicView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mFinished:Z

    .line 365
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mAnimationStater:Ljava/lang/Runnable;

    .line 403
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 437
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyDown(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getScreenOffMusicView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->goToSleep()V

    return-void
.end method

.method private cancelScreenOff()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mAnimationStater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method private createViewComponents(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 158
    const-string v6, "layout_inflater"

    .line 159
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 160
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_screen_off_music_common:I

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, "view":Landroid/view/View;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->control_buttons:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    .local v0, "controlButton":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getControlButtonsLayoutResId()I

    move-result v6

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->createWindowAttributes(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 166
    .local v5, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/app/Dialog;

    const v6, 0x10301e3

    invoke-direct {v1, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 168
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 170
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 171
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 173
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 174
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 175
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 177
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    .line 178
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mWindowManager:Landroid/view/WindowManager;

    .line 179
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    invoke-interface {v6, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 181
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    or-int/lit8 v7, v7, 0x2

    sget v8, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    or-int/2addr v7, v8

    sget v8, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    or-int/2addr v7, v8

    sget v8, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    or-int/2addr v7, v8

    .line 182
    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 189
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setOnKeyListener(Landroid/app/Dialog;)V

    .line 190
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->initializeViews(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    return-void
.end method

.method private createWindowAttributes(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/16 v1, 0x7d9

    .line 195
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x12407a0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 204
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 205
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 212
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    return-object v0

    .line 208
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private finishImmediate()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService finishImmediate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancelScreenOff()V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->stopSelf()V

    .line 391
    return-void
.end method

.method private getScreenOffMusicView()Landroid/view/View;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    return-object v0
.end method

.method private goToSleep()V
    .locals 4

    .prologue
    .line 378
    const-string v0, "SOM"

    const-string v1, "ScreenOffMusicService goToSleep()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService goToSleep() but it is already canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 383
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->goToSleep(Landroid/os/PowerManager;J)V

    goto :goto_0
.end method

.method private initializeViews(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 325
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->screen_off_music_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    .line 328
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getBrandNameStringResId()I

    move-result v2

    invoke-direct {v1, p1, p2, v2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    .line 333
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->setControllerClickListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;)V

    .line 347
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V

    .line 350
    .local v0, "extraController":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 356
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mAnimationStater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method private isMediaKeycode(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 304
    sparse-switch p1, :sswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 312
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private listenCallState(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 415
    const-string v1, "phone"

    .line 416
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 417
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz p1, :cond_0

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyVisibleStatus(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getNotifyAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private performKeyDown(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 245
    const/4 v1, 0x1

    .line 246
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, "context":Landroid/content/Context;
    sparse-switch p1, :sswitch_data_0

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isMediaKeycode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    .line 275
    const/4 v1, 0x0

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 249
    :sswitch_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    .line 251
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->isGoingToScreenOff()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v2, "GSOM"

    const-string v3, "Power Key"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->goToSleep()V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancelScreenOff()V

    goto :goto_0

    .line 262
    :sswitch_1
    const-string v2, "GSOM"

    const-string v3, "Home Key"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    .line 267
    :sswitch_2
    const-string v2, "GSOM"

    const-string v3, "Back Key"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private performKeyUp(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 296
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isMediaKeycode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->isGoingToScreenOff()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    .line 288
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffMusicView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 423
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    return-void
.end method

.method private requestSystemKeyEvent(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;->requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V

    .line 224
    return-void

    .line 222
    :array_0
    .array-data 4
        0x1a
        0x3
    .end array-data
.end method

.method private setOnKeyListener(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 227
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 242
    return-void
.end method

.method private unregisterEventReceiver()V
    .locals 1

    .prologue
    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mScreenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 527
    return-void
.end method

.method protected abstract getBrandNameStringResId()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method protected abstract getControlButtonsLayoutResId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNotifyAction()Ljava/lang/String;
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCloseClick()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyDown(I)Z

    .line 521
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    const-string v1, "SMUSIC-SOM"

    const-string v2, "ScreenOffMusicService onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .line 117
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mComponentName:Landroid/content/ComponentName;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->onCreateActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    .line 119
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->createViewComponents(Landroid/content/Context;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onActivityStarted(Landroid/app/Activity;)V

    .line 124
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->requestSystemKeyEvent(Z)V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->registerEventReceiver()V

    .line 126
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->notifyVisibleStatus(Z)V

    .line 127
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->listenCallState(Z)V

    .line 131
    return-void
.end method

.method protected abstract onCreateActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mDecorView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onActivityStopped(Landroid/app/Activity;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 150
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->listenCallState(Z)V

    .line 151
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->requestSystemKeyEvent(Z)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->unregisterEventReceiver()V

    .line 153
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->notifyVisibleStatus(Z)V

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 155
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 516
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 503
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 507
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
    .line 512
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 135
    const-string v0, "SOM"

    const-string v1, "ScreenOffMusicService onStartCommand()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mCancel:Z

    .line 138
    const/4 v0, 0x2

    return v0
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 468
    return-void
.end method

.method protected final setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1
    .param p1, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 531
    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 473
    return-void
.end method
