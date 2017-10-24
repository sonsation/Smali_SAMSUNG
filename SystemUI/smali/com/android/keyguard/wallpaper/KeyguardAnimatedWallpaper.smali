.class public Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardAnimatedWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;
    }
.end annotation


# instance fields
.field private mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mScreenOn:Z

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "isPreview"    # Z
    .param p4, "viewWidth"    # I
    .param p5, "viewHeight"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x44200000    # 640.0f

    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v0, 0x40800000    # 4.0f

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    .line 67
    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    .line 68
    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    .line 69
    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    .line 71
    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    .line 72
    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    .line 73
    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    .line 81
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 100
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 101
    iput-boolean p3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 102
    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    .line 103
    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    .line 104
    invoke-direct {p0, p2}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 969
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 973
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 109
    const-string/jumbo v8, "KeyguardAnimatedWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "XmlName = animation;Default package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/high16 v8, -0x1000000

    invoke-virtual {p0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->setBackgroundColor(I)V

    .line 112
    :try_start_0
    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "apkContext":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v8}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "apkContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 121
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v1

    .line 119
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_5
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 115
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 963
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 965
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    .line 962
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 937
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 153
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 932
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 931
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 926
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 925
    return-void
.end method

.method public onUnlock()V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 137
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 132
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0
.end method

.method public parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    .locals 31
    .param p1, "apkContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/16 v28, 0x0

    .line 200
    .local v28, "view":Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
    const/4 v13, 0x0

    .line 202
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    const/16 v23, 0x0

    .line 203
    .local v23, "res":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 205
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, -0x2

    .line 206
    .local v29, "width":I
    const/16 v18, -0x2

    .line 208
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    .line 209
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    .line 211
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    .line 216
    :goto_0
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeviceWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDeviceHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 219
    .local v23, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "animation"

    const-string/jumbo v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 220
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v30, :cond_1

    .line 221
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    .line 222
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    const-string/jumbo v6, "null xml returned"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5

    .line 213
    .local v23, "res":Landroid/content/res/Resources;
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    .line 214
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    goto :goto_0

    .line 226
    .local v23, "res":Landroid/content/res/Resources;
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v5, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    .line 228
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 229
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v28    # "view":Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
    .local v16, "eventType":I
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_df

    .line 230
    if-nez v16, :cond_3

    .line 918
    :cond_2
    :goto_2
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_1

    .line 232
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_d0

    .line 233
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 234
    .local v25, "startName":Ljava/lang/String;
    const-string/jumbo v5, "screen"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 235
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 236
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 237
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 238
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 239
    .local v27, "value":Ljava/lang/String;
    const-string/jumbo v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 240
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    .line 241
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 242
    :cond_5
    const-string/jumbo v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 243
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    .line 244
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 245
    :cond_6
    const-string/jumbo v5, "density"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    .line 247
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 250
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "view"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 252
    new-instance v28, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;-><init>(Landroid/content/Context;)V

    .line 254
    .local v28, "view":Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 255
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 256
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 257
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 258
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "img"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 259
    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_8
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 261
    :cond_9
    const-string/jumbo v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 262
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setX(F)V

    goto :goto_6

    .line 263
    :cond_a
    const-string/jumbo v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 264
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setY(F)V

    goto :goto_6

    .line 265
    :cond_b
    const-string/jumbo v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 266
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    goto :goto_6

    .line 267
    :cond_c
    const-string/jumbo v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 268
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    goto :goto_6

    .line 269
    :cond_d
    const-string/jumbo v5, "pivotX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 270
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotX(F)V

    goto/16 :goto_6

    .line 271
    :cond_e
    const-string/jumbo v5, "pivotY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 272
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotY(F)V

    goto/16 :goto_6

    .line 273
    :cond_f
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 274
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setAlpha(F)V

    goto/16 :goto_6

    .line 275
    :cond_10
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 276
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleX(F)V

    goto/16 :goto_6

    .line 277
    :cond_11
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 278
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleY(F)V

    goto/16 :goto_6

    .line 281
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    .end local v28    # "view":Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
    :cond_12
    const-string/jumbo v5, "scene"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 283
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 284
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 285
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 286
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 287
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 288
    const-string/jumbo v5, "snow"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 290
    new-instance v24, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    .line 291
    .local v24, "snow":Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    .line 292
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    .line 284
    .end local v24    # "snow":Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;
    :cond_13
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 293
    :cond_14
    const-string/jumbo v5, "rain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 295
    new-instance v22, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v22, "rain":Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    .line 297
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    .line 298
    .end local v22    # "rain":Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;
    :cond_15
    const-string/jumbo v5, "leaf"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 300
    new-instance v20, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    .line 301
    .local v20, "leaf":Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    .line 302
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    .line 303
    .end local v20    # "leaf":Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;
    :cond_16
    const-string/jumbo v5, "flower"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 305
    new-instance v17, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v17, "flower":Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    .line 307
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    .line 311
    .end local v14    # "count":I
    .end local v17    # "flower":Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_17
    const-string/jumbo v5, "rotate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 312
    const/4 v13, 0x0

    .line 313
    .restart local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 314
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 315
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_9
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 316
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 317
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 318
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 319
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 315
    :cond_18
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 320
    :cond_19
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 321
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_a

    .line 322
    :cond_1a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 323
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_a

    .line 324
    :cond_1b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 325
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_a

    .line 326
    :cond_1c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 327
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_a

    .line 328
    :cond_1d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 329
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_a

    .line 330
    :cond_1e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 331
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 332
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_a

    .line 334
    :cond_1f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    .line 336
    :cond_20
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 337
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 338
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    .line 340
    :cond_21
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    .line 342
    :cond_22
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 343
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    .line 344
    :cond_23
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 345
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    .line 348
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_24
    const-string/jumbo v5, "parabola"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 349
    const/4 v13, 0x0

    .line 350
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 351
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 352
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_b
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 353
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 354
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 355
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 356
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    .line 352
    :cond_25
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 357
    :cond_26
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 358
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_c

    .line 359
    :cond_27
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 360
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_c

    .line 361
    :cond_28
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 362
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_c

    .line 363
    :cond_29
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 364
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_c

    .line 365
    :cond_2a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 366
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_c

    .line 367
    :cond_2b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 368
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_c

    .line 369
    :cond_2c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 370
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_c

    .line 371
    :cond_2d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 372
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_c

    .line 373
    :cond_2e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 374
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 375
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 377
    :cond_2f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 379
    :cond_30
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 380
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 381
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 383
    :cond_31
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 385
    :cond_32
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 386
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 387
    :cond_33
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 388
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    .line 392
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_34
    const-string/jumbo v5, "sinX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 393
    const/4 v13, 0x0

    .line 394
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 395
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 396
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_d
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 397
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 398
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 399
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 400
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    .line 396
    :cond_35
    :goto_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    .line 401
    :cond_36
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 402
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_e

    .line 403
    :cond_37
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 404
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_e

    .line 405
    :cond_38
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 406
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_e

    .line 407
    :cond_39
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 408
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_e

    .line 409
    :cond_3a
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 410
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_e

    .line 411
    :cond_3b
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 412
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_e

    .line 413
    :cond_3c
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 414
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_e

    .line 415
    :cond_3d
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 416
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_e

    .line 417
    :cond_3e
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 418
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_e

    .line 419
    :cond_3f
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 420
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 421
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 423
    :cond_40
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 425
    :cond_41
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 426
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 427
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 429
    :cond_42
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 431
    :cond_43
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 432
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 433
    :cond_44
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 434
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    .line 437
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_45
    const-string/jumbo v5, "sinY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 438
    const/4 v13, 0x0

    .line 439
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 440
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 441
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_f
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 442
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 443
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 444
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 445
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    .line 441
    :cond_46
    :goto_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    .line 446
    :cond_47
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 447
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_10

    .line 448
    :cond_48
    const-string/jumbo v5, "yFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 449
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_10

    .line 450
    :cond_49
    const-string/jumbo v5, "yTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 451
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_10

    .line 452
    :cond_4a
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 453
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_10

    .line 454
    :cond_4b
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 455
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_10

    .line 456
    :cond_4c
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 457
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_10

    .line 458
    :cond_4d
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 459
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_10

    .line 460
    :cond_4e
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 461
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_10

    .line 462
    :cond_4f
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 463
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_10

    .line 464
    :cond_50
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 465
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 466
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 468
    :cond_51
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 470
    :cond_52
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 471
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 472
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 474
    :cond_53
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 476
    :cond_54
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 477
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 478
    :cond_55
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 479
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    .line 482
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_56
    const-string/jumbo v5, "round"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 483
    const/4 v13, 0x0

    .line 484
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 485
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 486
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_11
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 487
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 488
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 489
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "r"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 490
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    .line 486
    :cond_57
    :goto_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    .line 491
    :cond_58
    const-string/jumbo v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 492
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_12

    .line 493
    :cond_59
    const-string/jumbo v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 494
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_12

    .line 495
    :cond_5a
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 496
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_12

    .line 497
    :cond_5b
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 498
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_12

    .line 499
    :cond_5c
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 500
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_12

    .line 501
    :cond_5d
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 502
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_12

    .line 503
    :cond_5e
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 504
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_12

    .line 505
    :cond_5f
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 506
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_12

    .line 507
    :cond_60
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 508
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 509
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 511
    :cond_61
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 513
    :cond_62
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 514
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 515
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 517
    :cond_63
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 519
    :cond_64
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 520
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 521
    :cond_65
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 522
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    .line 526
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_66
    const-string/jumbo v5, "ellipse"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 527
    const/4 v13, 0x0

    .line 528
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 529
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 530
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_13
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 531
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 532
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 533
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "ra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 534
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->ra:F

    .line 530
    :cond_67
    :goto_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    .line 535
    :cond_68
    const-string/jumbo v5, "rb"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 536
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->rb:F

    goto :goto_14

    .line 537
    :cond_69
    const-string/jumbo v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 538
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_14

    .line 539
    :cond_6a
    const-string/jumbo v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 540
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_14

    .line 541
    :cond_6b
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 542
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_14

    .line 543
    :cond_6c
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 544
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_14

    .line 545
    :cond_6d
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 546
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_14

    .line 547
    :cond_6e
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 548
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_14

    .line 549
    :cond_6f
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 550
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_14

    .line 551
    :cond_70
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 552
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_14

    .line 553
    :cond_71
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 554
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 555
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 557
    :cond_72
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 559
    :cond_73
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 560
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 561
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 563
    :cond_74
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 565
    :cond_75
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 566
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 567
    :cond_76
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 568
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    .line 572
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_77
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 573
    const/4 v13, 0x0

    .line 574
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 575
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 576
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_15
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 577
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 578
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 579
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 580
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 576
    :cond_78
    :goto_16
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 581
    :cond_79
    const-string/jumbo v5, "toAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 582
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_16

    .line 583
    :cond_7a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 584
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_16

    .line 585
    :cond_7b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 586
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_16

    .line 587
    :cond_7c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 588
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_16

    .line 589
    :cond_7d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 590
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_16

    .line 591
    :cond_7e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 592
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 593
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_16

    .line 595
    :cond_7f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    .line 597
    :cond_80
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 598
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 599
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    .line 601
    :cond_81
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    .line 603
    :cond_82
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 604
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    .line 605
    :cond_83
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 606
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    .line 610
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_84
    const-string/jumbo v5, "translateX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 611
    const/4 v13, 0x0

    .line 612
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 613
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 614
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_17
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 615
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 616
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 617
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 618
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 614
    :cond_85
    :goto_18
    add-int/lit8 v19, v19, 0x1

    goto :goto_17

    .line 619
    :cond_86
    const-string/jumbo v5, "toXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 620
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_18

    .line 621
    :cond_87
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 622
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_18

    .line 623
    :cond_88
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 624
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_18

    .line 625
    :cond_89
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 626
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_18

    .line 627
    :cond_8a
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 628
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_18

    .line 629
    :cond_8b
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 630
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 631
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_18

    .line 633
    :cond_8c
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    .line 635
    :cond_8d
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 636
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 637
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    .line 639
    :cond_8e
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    .line 641
    :cond_8f
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 642
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    .line 643
    :cond_90
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 644
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    .line 647
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_91
    const-string/jumbo v5, "translateY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 648
    const/4 v13, 0x0

    .line 649
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 650
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 651
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_19
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 652
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 653
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 654
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 655
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 651
    :cond_92
    :goto_1a
    add-int/lit8 v19, v19, 0x1

    goto :goto_19

    .line 656
    :cond_93
    const-string/jumbo v5, "toYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 657
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1a

    .line 658
    :cond_94
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 659
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1a

    .line 660
    :cond_95
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 661
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1a

    .line 662
    :cond_96
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 663
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1a

    .line 664
    :cond_97
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 665
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1a

    .line 666
    :cond_98
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 667
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 668
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    .line 670
    :cond_99
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    .line 672
    :cond_9a
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 673
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 674
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    .line 676
    :cond_9b
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    .line 678
    :cond_9c
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 679
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    .line 680
    :cond_9d
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 681
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    .line 684
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_9e
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 685
    const/4 v13, 0x0

    .line 686
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 687
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 688
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1b
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 689
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 690
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 691
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 692
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 688
    :cond_9f
    :goto_1c
    add-int/lit8 v19, v19, 0x1

    goto :goto_1b

    .line 693
    :cond_a0
    const-string/jumbo v5, "toXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 694
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1c

    .line 695
    :cond_a1
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 696
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1c

    .line 697
    :cond_a2
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 698
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1c

    .line 699
    :cond_a3
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 700
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1c

    .line 701
    :cond_a4
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 702
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1c

    .line 703
    :cond_a5
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 704
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 705
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1c

    .line 707
    :cond_a6
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    .line 709
    :cond_a7
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 710
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 711
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    .line 713
    :cond_a8
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    .line 715
    :cond_a9
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 716
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    .line 717
    :cond_aa
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 718
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    .line 721
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_ab
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 722
    const/4 v13, 0x0

    .line 723
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 724
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 725
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1d
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 726
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 727
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 728
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "fromYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 729
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 725
    :cond_ac
    :goto_1e
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    .line 730
    :cond_ad
    const-string/jumbo v5, "toYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 731
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1e

    .line 732
    :cond_ae
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 733
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1e

    .line 734
    :cond_af
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 735
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1e

    .line 736
    :cond_b0
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 737
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1e

    .line 738
    :cond_b1
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 739
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1e

    .line 740
    :cond_b2
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 741
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 742
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1e

    .line 744
    :cond_b3
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    .line 745
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 744
    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    .line 747
    :cond_b4
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 748
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 749
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    .line 751
    :cond_b5
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    .line 753
    :cond_b6
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 754
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    .line 755
    :cond_b7
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 756
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    .line 759
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_b8
    const-string/jumbo v5, "ImageResource"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 760
    const/4 v13, 0x0

    .line 761
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 762
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 763
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1f
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 764
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 765
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 766
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "length"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 767
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    .line 763
    :cond_b9
    :goto_20
    add-int/lit8 v19, v19, 0x1

    goto :goto_1f

    .line 768
    :cond_ba
    const-string/jumbo v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 771
    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 770
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    goto :goto_20

    .line 773
    :cond_bb
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 774
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_20

    .line 775
    :cond_bc
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 776
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_20

    .line 777
    :cond_bd
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 778
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_20

    .line 779
    :cond_be
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 780
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_20

    .line 781
    :cond_bf
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 782
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 783
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 785
    :cond_c0
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 787
    :cond_c1
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 788
    const-string/jumbo v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 789
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 791
    :cond_c2
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 793
    :cond_c3
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 794
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 795
    :cond_c4
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 796
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    .line 800
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_c5
    const-string/jumbo v5, "frame"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 801
    const/4 v13, 0x0

    .line 802
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    .line 803
    .local v13, "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 804
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_21
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 805
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 806
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 807
    .local v26, "value":I
    const-string/jumbo v5, "top"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 808
    move/from16 v0, v26

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    .line 804
    :cond_c6
    :goto_22
    add-int/lit8 v19, v19, 0x1

    goto :goto_21

    .line 809
    :cond_c7
    const-string/jumbo v5, "minInterval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 810
    move/from16 v0, v26

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    goto :goto_22

    .line 814
    .end local v13    # "animation":Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "value":I
    :cond_c8
    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 816
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 817
    .restart local v14    # "count":I
    if-eqz v13, :cond_2

    .line 818
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_23
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 819
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 820
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 821
    .restart local v27    # "value":Ljava/lang/String;
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string/jumbo v5, "frameSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 823
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_c9
    :goto_24
    add-int/lit8 v19, v19, 0x1

    goto :goto_23

    .line 824
    :cond_ca
    const-string/jumbo v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 825
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string/jumbo v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 827
    :cond_cb
    const-string/jumbo v5, "background"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 828
    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    goto :goto_24

    .line 830
    :cond_cc
    const-string/jumbo v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 831
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 832
    :cond_cd
    const-string/jumbo v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 833
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 834
    :cond_ce
    const-string/jumbo v5, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 835
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 836
    :cond_cf
    const-string/jumbo v5, "startIndex"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 837
    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 843
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v25    # "startName":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_d0
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_2

    .line 844
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 845
    .local v15, "endName":Ljava/lang/String;
    const-string/jumbo v5, "view"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    .line 847
    const/16 v29, -0x2

    .line 848
    const/16 v18, -0x2

    goto/16 :goto_2

    .line 849
    :cond_d1
    const-string/jumbo v5, "rotate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 850
    if-eqz v13, :cond_2

    .line 851
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "rotation"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 853
    :cond_d2
    const-string/jumbo v5, "parabola"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 854
    if-eqz v13, :cond_2

    .line 855
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 857
    :cond_d3
    const-string/jumbo v5, "sinX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 858
    if-eqz v13, :cond_2

    .line 859
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 861
    :cond_d4
    const-string/jumbo v5, "sinY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 862
    if-eqz v13, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 865
    :cond_d5
    const-string/jumbo v5, "round"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 866
    if-eqz v13, :cond_2

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "round"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 869
    :cond_d6
    const-string/jumbo v5, "ellipse"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 870
    if-eqz v13, :cond_2

    .line 871
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 873
    :cond_d7
    const-string/jumbo v5, "alpha"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 874
    if-eqz v13, :cond_2

    .line 875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 877
    :cond_d8
    const-string/jumbo v5, "translateX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 878
    if-eqz v13, :cond_2

    .line 879
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 881
    :cond_d9
    const-string/jumbo v5, "translateY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 882
    if-eqz v13, :cond_2

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "y"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 885
    :cond_da
    const-string/jumbo v5, "scaleX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 886
    if-eqz v13, :cond_2

    .line 887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 889
    :cond_db
    const-string/jumbo v5, "scaleY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 890
    if-eqz v13, :cond_2

    .line 891
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 893
    :cond_dc
    const-string/jumbo v5, "ImageResource"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 894
    if-eqz v28, :cond_dd

    .line 895
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setApkContext(Landroid/content/Context;)V

    .line 898
    :cond_dd
    if-eqz v13, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    .line 902
    :cond_de
    const-string/jumbo v5, "frame"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 903
    const/4 v4, 0x0

    .line 904
    .local v4, "mFrame":Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;
    if-eqz v13, :cond_2

    .line 906
    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    .end local v4    # "mFrame":Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;
    iget v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    .line 907
    iget-object v7, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    .line 908
    iget-object v9, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    .line 909
    iget-object v12, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    .line 906
    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 911
    .local v4, "mFrame":Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;
    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setTop(I)V

    .line 912
    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setMinInterval(I)V

    .line 913
    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    .line 914
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;)V

    goto/16 :goto_2

    .line 921
    .end local v4    # "mFrame":Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;
    .end local v15    # "endName":Ljava/lang/String;
    :cond_df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->playAnimation()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->stopAnimation()V

    .line 183
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 948
    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    const-string/jumbo v2, "update New Animation wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getCurrentOpenThemeXmlPackageName()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "packagename":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    .line 952
    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    goto :goto_0
.end method
