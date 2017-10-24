.class public Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "KeyguardWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;,
        Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;
    }
.end annotation


# static fields
.field private static final CINEMATIC_WALLPAPER_COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBackgroundImageViewHome:Landroid/widget/ImageView;

.field private mBackgroundImageViewLock:Landroid/widget/ImageView;

.field private mCapturedImageView:Landroid/widget/ImageView;

.field private mCinematicCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

.field private mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

.field private mColorInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsAodModeEnabled:Z

.field private mIsAodOptionChecked:Z

.field private mMotionCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

.field private mOptionCheckIcon:Landroid/widget/ImageView;

.field private mPackageName:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mService:Landroid/app/IWallpaperManager;

.field private mSetAsWallpaper:Z

.field private mSetAsWallpaperButton:Landroid/widget/FrameLayout;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private mWallpaperTypeIcon:Landroid/widget/ImageView;

.field private mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mOptionCheckIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->doSetAsWallpaper()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->loadAndInitCinematicBackground()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->onCinematicModeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    .line 90
    const-string/jumbo v2, "com.android.systemui.cinematic.GalaxyWallpaperService"

    .line 89
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->CINEMATIC_WALLPAPER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mMotionCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    .line 133
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    .line 75
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 776
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "dismissProgressDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 775
    :cond_0
    return-void
.end method

.method private doSetAsWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "doSetAsWallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v1, :pswitch_data_0

    .line 541
    :goto_0
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 490
    return-void

    .line 495
    :pswitch_1
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 496
    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 497
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 501
    :pswitch_2
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 502
    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 503
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setPreloadWallpaper(ILjava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 507
    :pswitch_3
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 508
    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->semSetAnimatedLockscreenWallpaper(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setAodModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "doSetAsWallpaper(): Failed to AOD on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 523
    :cond_0
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 524
    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 525
    const-string/jumbo v1, "android.wallpaper.settings_systemui_transparency"

    invoke-direct {p0, v1, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 526
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 527
    const-string/jumbo v1, "white_lockscreen_statusbar"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 528
    const-string/jumbo v1, "need_dark_font"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    const-string/jumbo v1, "need_dark_statusbar"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v1

    .line 528
    if-eqz v1, :cond_2

    .line 530
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    sget-object v2, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->CINEMATIC_WALLPAPER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)Z

    .line 533
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    if-eqz v1, :cond_4

    .line 534
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_wallpaper_applied_toast_cinematic:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 536
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_wallpaper_applied_toast_cinematic_without_aod:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getContentViewId()I
    .locals 1

    .prologue
    .line 650
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_wallpaper_preview_activity:I

    return v0
.end method

.method private getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "locType"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWallpaperTypeInteger(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", locType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string/jumbo v0, "motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cinematic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    :cond_0
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    const/4 v0, 0x1

    return v0

    .line 633
    :cond_1
    if-eqz p2, :cond_4

    const-string/jumbo v0, "preload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    const/4 v0, 0x2

    return v0

    .line 636
    :cond_2
    const-string/jumbo v0, "animated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    const/4 v0, 0x4

    return v0

    .line 640
    :cond_3
    const-string/jumbo v0, "seamless"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 641
    if-eqz p2, :cond_4

    const-string/jumbo v0, "preload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    const/4 v0, 0x5

    return v0

    .line 645
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 244
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init(): mWallpaperType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 265
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V

    .line 267
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$4;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v3, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$5;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-eq v0, v3, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initCapturedImageView()V

    .line 289
    :cond_2
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-eqz v0, :cond_4

    .line 304
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$7;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_wallpaper_preview_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_wallpapers_motion:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_wallpaper_preview_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_wallpapers_animated:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_wallpaper_preview_title_cinematic:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_wallpapers_cinematic:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mOptionCheckIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAndShowProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 756
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initAndShowProgressDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 759
    new-instance v0, Landroid/app/ProgressDialog;

    sget v1, Lcom/android/keyguard/R$style;->CircleProgressStyle:I

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 760
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 761
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 763
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$11;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 770
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private initBackgroundImageView(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 371
    return-void
.end method

.method private initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 20
    .param p1, "backgroundImageView"    # Landroid/widget/ImageView;
    .param p2, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 376
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "initBackgroundImageView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez p2, :cond_0

    .line 379
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "initBackgroundImageView(): wallpaperBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 381
    return-void

    .line 383
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 384
    .local v11, "bitmapWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 385
    .local v10, "bitmapHeight":I
    if-eqz v11, :cond_1

    if-nez v10, :cond_2

    .line 386
    :cond_1
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView(): bitmapWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bitmapHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 388
    return-void

    .line 391
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 392
    .local v19, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    .line 393
    .local v18, "viewHeight":I
    if-eqz v19, :cond_3

    if-nez v18, :cond_4

    .line 394
    :cond_3
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView(): viewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", viewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 396
    return-void

    .line 400
    :cond_4
    const/4 v15, 0x0

    .line 401
    .local v15, "scale":I
    mul-int v4, v11, v18

    mul-int v5, v19, v10

    if-le v4, v5, :cond_5

    .line 402
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v10

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 406
    :goto_0
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView: scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    mul-int v4, v11, v15

    mul-int v5, v10, v15

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 409
    .local v16, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v13, "canvas":Landroid/graphics/Canvas;
    int-to-float v4, v15

    int-to-float v5, v15

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 411
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 413
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 414
    .local v17, "scaledDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 416
    move/from16 v0, v19

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 417
    move/from16 v0, v18

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 418
    const v4, 0x3fa66666    # 1.3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 419
    const v4, 0x3fa66666    # 1.3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 423
    const/4 v4, 0x1

    .line 422
    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    .line 424
    .local v12, "blurringFilter":Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-virtual {v12, v4}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    .line 428
    const/16 v4, 0x34

    .line 427
    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 429
    .local v2, "topBlendingFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 431
    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 432
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 431
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 432
    const/4 v6, 0x0

    const v7, 0x3f5c28f6    # 0.86f

    .line 430
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 435
    const/16 v4, 0x34

    .line 434
    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 436
    .local v3, "bottomBlendingFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    invoke-virtual {v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 438
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 439
    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 438
    const/4 v4, 0x0

    const v5, 0x3e851eb8    # 0.26f

    .line 439
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 437
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 441
    new-instance v14, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v14}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    .line 442
    .local v14, "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    invoke-virtual {v14}, Lcom/samsung/android/graphics/SemImageFilterSet;->clearFilters()V

    .line 443
    invoke-virtual {v14, v12}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 444
    invoke-virtual {v14, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 445
    invoke-virtual {v14, v3}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 447
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 448
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 452
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$10;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 457
    const-wide/16 v6, 0x64

    .line 452
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 404
    .end local v2    # "topBlendingFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .end local v3    # "bottomBlendingFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .end local v12    # "blurringFilter":Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    .end local v16    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "scaledDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v5, v11

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v15

    goto/16 :goto_0
.end method

.method private initCapturedImageView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 461
    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v8, "initCapturedImageView()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "capturedBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/storage/emulated/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    const-string/jumbo v8, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "capturedPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    .end local v0    # "capturedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 485
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 486
    .local v1, "capturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    .end local v1    # "capturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void

    .line 471
    .restart local v0    # "capturedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initCapturedImageView(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isn\'t exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :try_start_0
    const-string/jumbo v7, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 474
    .local v3, "dummyUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 475
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, "capturedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 477
    .end local v0    # "capturedBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "dummyUri":Landroid/net/Uri;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 478
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 480
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreviewArea()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 313
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 312
    :cond_0
    return-void

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mPackageName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 320
    return-void

    .line 322
    :cond_1
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mMotionCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mColorInfo is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 328
    return-void

    .line 330
    :cond_2
    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mMotionCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;)V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mPackageName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 336
    return-void

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 351
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private is_16_9_Display()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 681
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 682
    .local v4, "width":I
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 684
    .local v1, "height":I
    move v0, v4

    .local v0, "gcd":I
    move v2, v1

    .local v2, "rem":I
    :goto_0
    if-lez v2, :cond_0

    .line 685
    move v3, v0

    .line 686
    .local v3, "tmp":I
    move v0, v2

    .line 687
    rem-int v2, v3, v2

    goto :goto_0

    .line 689
    .end local v3    # "tmp":I
    :cond_0
    const/16 v6, 0x78

    if-ne v0, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private loadAndInitCinematicBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 565
    const-string/jumbo v3, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v4, "loadAndInitCinematicBackground()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 568
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 570
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 572
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 574
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "cinematic_lock"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 575
    .local v1, "lockDrawableID":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    .line 576
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 575
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 578
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 580
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "cinematic_home"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 581
    .local v0, "homeDrawableID":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    .line 582
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 581
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 584
    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    if-eqz v3, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 546
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "loadAnimatedBackgroundBitmap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, -0x1

    .line 549
    .local v0, "drawableID":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 550
    .local v3, "pkgContext":Landroid/content/Context;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 551
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 554
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 555
    const/4 v6, 0x3

    .line 554
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 559
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_wallpaper"

    const-string/jumbo v6, "drawable"

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 561
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onCinematicModeChanged(I)V
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 590
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCinematicModeChanged() mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 622
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "onCinematicModeChanged(): Invalid mode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 594
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 595
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 596
    .local v0, "homeOffAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 597
    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 601
    .end local v0    # "homeOffAnim":Landroid/animation/ObjectAnimator;
    :pswitch_1
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 602
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 605
    :pswitch_2
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 606
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 607
    .local v3, "lockOnAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 612
    .end local v3    # "lockOnAnim":Landroid/animation/ObjectAnimator;
    :pswitch_3
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 613
    .local v2, "lockOffAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 614
    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 616
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 617
    .local v1, "homeOnAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 618
    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 619
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 595
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 606
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 612
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 616
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setAodModeOn()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 713
    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v8, "setAodModeOn()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    sget-boolean v7, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v7, v5, :cond_0

    move v3, v5

    .line 717
    .local v3, "isMobileKeyboardConnected":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 719
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Detach keyboard cover from device."

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 720
    return v6

    .end local v3    # "isMobileKeyboardConnected":Z
    :cond_0
    move v3, v6

    .line 715
    goto :goto_0

    .line 723
    .restart local v3    # "isMobileKeyboardConnected":Z
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 724
    const-string/jumbo v8, "accessibility"

    .line 723
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 725
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    .line 725
    if-eqz v7, :cond_2

    .line 727
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    .line 728
    .local v4, "isVoiceAssistantEnabled":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 730
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Turn off voice assistant."

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 731
    return v6

    .end local v4    # "isVoiceAssistantEnabled":Z
    :cond_2
    move v4, v6

    .line 725
    goto :goto_1

    .line 734
    .restart local v4    # "isVoiceAssistantEnabled":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 735
    const-string/jumbo v8, "accessibility_display_magnification_enabled"

    .line 734
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    .line 736
    .local v1, "isMagnificationGuesturesEnabled":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 738
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Turn off magnification gestures."

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 739
    return v6

    .end local v1    # "isMagnificationGuesturesEnabled":Z
    :cond_4
    move v1, v6

    .line 734
    goto :goto_2

    .line 742
    .restart local v1    # "isMagnificationGuesturesEnabled":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 743
    const-string/jumbo v8, "finger_magnifier"

    .line 742
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_6

    .line 744
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "FmMagnifier"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    .line 745
    .local v2, "isMagnifierWindowEnabled":Z
    :goto_3
    if-eqz v2, :cond_8

    .line 747
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Turn off magnifier window."

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 748
    return v6

    .end local v2    # "isMagnifierWindowEnabled":Z
    :cond_6
    move v2, v5

    .line 742
    goto :goto_3

    :cond_7
    move v2, v6

    .line 744
    goto :goto_3

    .line 751
    .restart local v2    # "isMagnifierWindowEnabled":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 752
    return v5
.end method

.method private setSystemSettings(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "value"    # I

    .prologue
    .line 703
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettings(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    const/4 v0, 0x1

    return v0

    .line 709
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemSettingsForUser(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v3, -0x2

    .line 693
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettingsForUser(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 697
    const/4 v0, 0x1

    return v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePreviewContainerSize()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 655
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 657
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->is_16_9_Display()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_width_16_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 664
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_height_16_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    return-void

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_width_cinematic_16_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 661
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_height_cinematic_16_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 668
    :cond_2
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-eqz v1, :cond_4

    .line 672
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 673
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 669
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_width_cinematic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 670
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_preview_container_height_cinematic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v4, "onCreate()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "themestore"

    const-string/jumbo v4, "from"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v4, "onCreate(): Invalid intent"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 150
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "locType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 151
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v1, v6, :cond_1

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v1, :cond_5

    .line 155
    :cond_1
    :goto_0
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "colorInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wallpaper"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 162
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    .line 163
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    if-nez v1, :cond_3

    .line 164
    :cond_2
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate(): mWallpaperManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    .line 168
    :cond_3
    sget v1, Lcom/android/keyguard/R$id;->root_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 169
    sget v1, Lcom/android/keyguard/R$id;->preview_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 170
    sget v1, Lcom/android/keyguard/R$id;->preview_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 171
    sget v1, Lcom/android/keyguard/R$id;->title_text_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 172
    sget v1, Lcom/android/keyguard/R$id;->wallpaper_type_icon:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    .line 173
    sget v1, Lcom/android/keyguard/R$id;->captured_image_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    .line 174
    sget v1, Lcom/android/keyguard/R$id;->background_image_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 175
    sget v1, Lcom/android/keyguard/R$id;->background_image_view_lock:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    .line 176
    sget v1, Lcom/android/keyguard/R$id;->background_image_view_home:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    .line 177
    sget v1, Lcom/android/keyguard/R$id;->set_as_wallpaper_button_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/FrameLayout;

    .line 178
    sget v1, Lcom/android/keyguard/R$id;->option_check_icon:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mOptionCheckIcon:Landroid/widget/ImageView;

    .line 180
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v1, v6, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 182
    const-string/jumbo v4, "aod_mode"

    const/4 v5, -0x2

    .line 181
    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    .line 183
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodOptionChecked:Z

    .line 184
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodModeEnabled:Z

    if-eqz v1, :cond_7

    .line 185
    sget v1, Lcom/android/keyguard/R$id;->cinematic_description:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 193
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->updatePreviewContainerSize()V

    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initAndShowProgressDialog()V

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->init()V

    .line 141
    return-void

    .line 152
    :cond_5
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v4, "onCreate(): Do not support cinematic wallpaper"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 181
    goto :goto_1

    .line 187
    :cond_7
    sget v1, Lcom/android/keyguard/R$id;->option_description:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    sget v1, Lcom/android/keyguard/R$id;->option_check_icon_line:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    .line 231
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 237
    const-wide/16 v2, 0x9c4

    .line 232
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onPause()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->onPause()V

    .line 212
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onResume()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->mCinematicView:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->onResume()V

    .line 199
    :cond_1
    return-void
.end method
