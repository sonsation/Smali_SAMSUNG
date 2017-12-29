.class public Lcom/android/server/wm/SamsungWindowState;
.super Ljava/lang/Object;
.source "SamsungWindowState.java"

# interfaces
.implements Lcom/samsung/android/view/IWindowStateBridge;


# instance fields
.field mAspectRatio:F

.field mAspectRatioFrame:Landroid/graphics/Rect;

.field mForceShowBackgroundSurface:Z

.field mHideBySViewCover:Z

.field mIsConventionalMode:Z

.field mLastBlurRadius:I

.field mLastSat:I

.field mNavbarIsAlwaysEnabled:Z

.field mNonImmersive:Z

.field mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field mReducedScreenSpec:Landroid/view/MagnificationSpec;

.field mReducedSideTouchArea:I

.field mSystemUiVisibility:I

.field private mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method private getLegacyBlurRadius()I
    .locals 4

    .prologue
    .line 303
    const/high16 v0, 0x43b00000    # 352.0f

    .line 304
    .local v0, "defRadius":F
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 305
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 306
    iget v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    .line 303
    const/high16 v3, 0x43b00000    # 352.0f

    .line 306
    mul-float/2addr v2, v3

    const/high16 v3, 0x44200000    # 640.0f

    div-float v0, v2, v3

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 308
    const v3, 0x3ecccccd    # 0.4f

    .line 309
    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method private getLegacySaturation()I
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 314
    const v1, 0x3ecccccd    # 0.4f

    .line 315
    div-float/2addr v0, v1

    .line 313
    const/high16 v1, -0x3e600000    # -20.0f

    .line 315
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isNonImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "nonImmersiveMode":Z
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 428
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 429
    return v6

    .line 431
    :cond_0
    invoke-static {}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isNaviBarFixedPackage(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    return v7

    .line 435
    :cond_1
    :try_start_0
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "title":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v7, :cond_2

    .line 437
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 438
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x80

    .line 437
    invoke-interface {v5, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 440
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.samsung.android.non_immersive"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "nonImmersiveMode":Z
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 444
    .restart local v1    # "nonImmersiveMode":Z
    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public applyAspectRatio(Landroid/graphics/Rect;)Z
    .locals 12
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v11, 0x0

    .line 223
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 227
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 229
    .local v0, "height":I
    const/4 v4, 0x0

    .line 230
    .local v4, "offset":I
    if-ge v6, v0, :cond_3

    .line 231
    int-to-float v8, v0

    int-to-float v9, v6

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v2, v8

    .line 232
    .local v2, "newH":I
    sub-int v8, v0, v2

    div-int/lit8 v8, v8, 0x2

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 233
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    add-int v9, v4, v2

    invoke-virtual {v8, v11, v4, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    .end local v2    # "newH":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v8

    const/16 v9, 0x7d0

    if-ge v8, v9, :cond_1

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_0

    .line 243
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 245
    .end local v1    # "mainWindow":Lcom/android/server/wm/WindowState;
    :cond_0
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 246
    .local v7, "winFlags":I
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    .line 247
    .local v5, "sysUiFlags":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    invoke-interface {v8, v9, v10, v7, v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->applyAspectRatioFrame(Landroid/graphics/Rect;FII)V

    .line 249
    .end local v5    # "sysUiFlags":I
    .end local v7    # "winFlags":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 251
    const/4 v8, 0x1

    return v8

    .line 224
    .end local v0    # "height":I
    .end local v4    # "offset":I
    .end local v6    # "width":I
    :cond_2
    return v11

    .line 235
    .restart local v0    # "height":I
    .restart local v4    # "offset":I
    .restart local v6    # "width":I
    :cond_3
    int-to-float v8, v6

    int-to-float v9, v0

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v3, v8

    .line 236
    .local v3, "newW":I
    sub-int v8, v6, v3

    div-int/lit8 v8, v8, 0x2

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 237
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    add-int v9, v4, v3

    invoke-virtual {v8, v4, v11, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 245
    .end local v3    # "newW":I
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .restart local v7    # "winFlags":I
    goto :goto_1

    .line 246
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    .restart local v5    # "sysUiFlags":I
    goto :goto_2
.end method

.method public applyBlurEffect()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v7, 0x0

    .line 332
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    .line 334
    .local v5, "enabled":Z
    :goto_0
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacyBlurRadius()I

    move-result v0

    .line 335
    .local v0, "blurRadius":I
    :goto_1
    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacySaturation()I

    move-result v6

    .line 337
    .local v6, "saturation":I
    :goto_2
    iget v8, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    if-ne v8, v0, :cond_3

    iget v8, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    if-ne v8, v6, :cond_3

    .line 338
    return-void

    .end local v0    # "blurRadius":I
    .end local v5    # "enabled":Z
    .end local v6    # "saturation":I
    :cond_0
    move v5, v7

    .line 332
    goto :goto_0

    .line 334
    .restart local v5    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "blurRadius":I
    goto :goto_1

    .line 335
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "saturation":I
    goto :goto_2

    .line 341
    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v8, :cond_4

    .line 342
    return-void

    .line 345
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, v8, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 347
    .local v2, "duration":J
    :goto_3
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 348
    sget-object v9, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    .line 347
    invoke-virtual {v8, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    .line 350
    .local v1, "builder":Landroid/view/SurfaceEffects$Effect$Builder;
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 351
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v12, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v8, v12, :cond_6

    .line 352
    :cond_5
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;

    .line 356
    :cond_6
    if-lez v0, :cond_8

    .line 357
    sget-object v8, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 358
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 357
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 359
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v10, v2

    int-to-float v11, v0

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    .line 357
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 360
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 357
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    .line 361
    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    int-to-float v10, v6

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    .line 357
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    .line 371
    :goto_4
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect;->getBytes()[I

    move-result-object v4

    .line 372
    .local v4, "effect":[I
    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowSurfaceController;->startSurfaceAnimation([I)V

    .line 373
    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    .line 374
    iput v6, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    .line 328
    return-void

    .line 345
    .end local v1    # "builder":Landroid/view/SurfaceEffects$Effect$Builder;
    .end local v2    # "duration":J
    .end local v4    # "effect":[I
    :cond_7
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_3

    .line 364
    .restart local v1    # "builder":Landroid/view/SurfaceEffects$Effect$Builder;
    :cond_8
    sget-object v8, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 365
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 364
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 366
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v10, v2

    int-to-float v11, v0

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    .line 364
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    .line 367
    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 364
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    .line 368
    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    const/4 v10, 0x0

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    .line 364
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    goto :goto_4
.end method

.method public applyNavbarAlwaysEnabled(I)I
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mNavbarIsAlwaysEnabled:Z

    if-eqz v0, :cond_0

    .line 276
    const v0, 0x7ffffdfd

    and-int/2addr p1, v0

    .line 278
    :cond_0
    return p1
.end method

.method public configureReducedScreenSpec()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 209
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    if-nez v4, :cond_0

    .line 211
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    .line 213
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 214
    .local v1, "displayWidth":I
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 215
    .local v0, "displayHeight":I
    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    mul-float v2, v4, v5

    .line 216
    .local v2, "offsetX":F
    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    mul-float v3, v4, v5

    .line 217
    .local v3, "offsetY":F
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    invoke-virtual {v4, v5, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 208
    .end local v0    # "displayHeight":I
    .end local v1    # "displayWidth":I
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_1
    return-void
.end method

.method public disableHideSViewCoverOnce(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    .line 133
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 460
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Samsung WindowState ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideBySvc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isAspectRatioWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 469
    const-string v0, " mIsConventionalMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 470
    const-string v0, " mAspectRatio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 471
    const-string v0, " mAspectRatioFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 472
    const-string v0, " mForceShowBackgroundSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 474
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystemUiVisibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InputWindowHandle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    :cond_2
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public getAspectRatioFrame()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCoverMode()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_0

    .line 122
    const/16 v0, 0xa

    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v0

    .line 130
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDexCompatUiMode()I
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 410
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 411
    iget v1, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    return v1

    .line 414
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getReducedSideTouchArea()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedSideTouchArea:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public hasFixedOrientation()Z
    .locals 3

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 387
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const/4 v2, 0x1

    return v2

    .line 392
    .end local v0    # "w":Lcom/android/server/wm/WindowState;
    .end local v1    # "w$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasMoved()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_1

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public initPackageConfigurations()V
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v1

    .line 161
    .local v1, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getReducedSideTouchArea(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedSideTouchArea:I

    .line 163
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isNavbarIsAlwaysEnabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mNavbarIsAlwaysEnabled:Z

    .line 164
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v2

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v2

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_1

    .line 166
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isConventionalMode(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    .line 177
    iget-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getCurrentAspect()F

    move-result v0

    .line 179
    .local v0, "currentAspect":F
    iget v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_5

    .line 180
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    .line 190
    .end local v0    # "currentAspect":F
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/SamsungWindowState;->isNonImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    .line 158
    :cond_3
    return-void

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    goto :goto_0

    .line 183
    .restart local v0    # "currentAspect":F
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isBackgroundSurfaceNeeded(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    goto :goto_1
.end method

.method public isAspectRatioWindow()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    return v2

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    return v2

    .line 262
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isBackgroundSurfaceNeeded()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    return v0
.end method

.method public isConventionalMode()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    return v0
.end method

.method public isDexCompatMode()Z
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 401
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHideBySViewCover()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return v0
.end method

.method public isHomeTask()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonImmersiveWindow()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    return v0
.end method

.method public resetEffects()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    .line 324
    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    .line 319
    return-void
.end method

.method public setHideBySViewCover(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    .line 145
    return-void
.end method

.method public setNonImmersiveWindow(Z)V
    .locals 0
    .param p1, "nonImmersive"    # Z

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    .line 454
    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SamsungWindowState already has a WindowState."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is not a WindowState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "obj":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    .line 94
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2
    .param p1, "systemUiVisibility"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    iget v1, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    and-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    .line 284
    return-void
.end method

.method public willBeHideSViewCoverOnce()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
