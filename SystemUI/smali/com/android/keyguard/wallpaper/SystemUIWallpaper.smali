.class public Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.super Landroid/view/View;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field protected mResumed:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field protected mStatusBarHeight:I

.field protected mUnlockStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IWallpaperManager;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 42
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mService:Landroid/app/IWallpaperManager;

    .line 43
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    const v2, 0x1050017

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mStatusBarHeight:I

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 47
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mResumed:Z

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mResumed:Z

    .line 59
    return-void
.end method

.method public onUnlock()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    .line 69
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    .line 74
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
