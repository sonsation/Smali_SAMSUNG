.class public Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;
.super Lcom/android/server/wm/animation/SamsungAnimationCreator;
.source "CHNHighEndSamsungAnimationCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CHNHighEndSamsungAnimationCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->initSamsungAnimationFactor()V

    .line 15
    return-void
.end method

.method private getAppExitScaleAnimationPivotXValue()F
    .locals 5

    .prologue
    .line 506
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 508
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 509
    .local v0, "result":F
    move v1, v0

    .line 512
    .local v1, "temp":F
    :cond_0
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    mul-float/2addr v1, v2

    .line 513
    add-float/2addr v0, v1

    .line 514
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 516
    const-string v2, "CHNHighEndSamsungAnimationCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppExitScaleAnimationPivotXValue result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0
.end method

.method private getAppExitScaleAnimationPivotYValue()F
    .locals 5

    .prologue
    .line 521
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 523
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 524
    .local v0, "result":F
    move v1, v0

    .line 527
    .local v1, "temp":F
    :cond_0
    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    mul-float/2addr v1, v2

    .line 528
    add-float/2addr v0, v1

    .line 529
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 531
    const-string v2, "CHNHighEndSamsungAnimationCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppExitScaleAnimationPivotYValue result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v0
.end method


# virtual methods
.method public createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "type"    # I
    .param p3, "isSplit"    # Z
    .param p4, "enter"    # Z
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "wallpaerXOffset"    # I
    .param p8, "isFixedOrientation"    # Z
    .param p9, "isDesktopMode"    # Z

    .prologue
    .line 143
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSamsungAnimation type/enter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSamsungAnimation wallpaerXOffset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSamsungAnimation isSplit/isFixedOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 147
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSamsungAnimation displayFrame/frame/insets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->setAppWindowSize(Landroid/graphics/Rect;)V

    .line 153
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 169
    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    .line 155
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 157
    :sswitch_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 159
    :sswitch_2
    invoke-virtual {p0, p7}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 161
    :sswitch_3
    move/from16 v0, p9

    invoke-virtual {p0, p7, v0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 164
    :sswitch_4
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 167
    :sswitch_5
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method public createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .locals 20
    .param p1, "isSplit"    # Z
    .param p2, "enter"    # Z
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "insets"    # Landroid/graphics/Rect;
    .param p5, "isFixedOrientation"    # Z
    .param p6, "isDesktopMode"    # Z

    .prologue
    .line 175
    const-string v3, "CHNHighEndSamsungAnimationCreator"

    const-string v4, "createSamsungAppEnterAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 178
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/16 v16, 0x0

    .line 179
    .local v16, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 180
    .local v11, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 182
    .local v10, "appHeight":I
    if-eqz p2, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 185
    if-eqz p1, :cond_2

    .line 186
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 187
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 188
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 186
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 195
    .local v2, "scale":Landroid/view/animation/Animation;
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 199
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 203
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 204
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 205
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 208
    if-nez p5, :cond_1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_1

    .line 209
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 210
    .local v13, "fromClipRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 211
    .local v17, "toClipRect":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 212
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_0

    .line 213
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 217
    :cond_0
    new-instance v12, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, v17

    invoke-direct {v12, v13, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 218
    .local v12, "clip":Landroid/view/animation/ClipRectAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    .line 227
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    .line 228
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 259
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .end local v13    # "fromClipRect":Landroid/graphics/Rect;
    .end local v14    # "duration":J
    .end local v17    # "toClipRect":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 260
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 261
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 263
    return-object v16

    .line 190
    .local v2, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 191
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 192
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 190
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v2, "scale":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 222
    .local v9, "alpha":Landroid/view/animation/Animation;
    .restart local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .restart local v13    # "fromClipRect":Landroid/graphics/Rect;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    .restart local v17    # "toClipRect":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fe199999999999aL    # 0.55

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    .restart local v14    # "duration":J
    goto :goto_1

    .line 225
    .end local v14    # "duration":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    .restart local v14    # "duration":J
    goto :goto_1

    .line 231
    .end local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .end local v13    # "fromClipRect":Landroid/graphics/Rect;
    .end local v14    # "duration":J
    .end local v17    # "toClipRect":Landroid/graphics/Rect;
    .local v2, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_5
    if-eqz p6, :cond_6

    .line 232
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 233
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 237
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 238
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_2

    .line 240
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 241
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 242
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    .line 243
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    .line 244
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 242
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 245
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 248
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 249
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 252
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 253
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 254
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto/16 :goto_2
.end method

.method public createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 268
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungAppExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 271
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 272
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 273
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 275
    .local v10, "appHeight":I
    if-eqz p1, :cond_1

    .line 276
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 277
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 281
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 282
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 283
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 v7, 0x0

    .line 280
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 290
    .local v0, "scale":Landroid/view/animation/Animation;
    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 293
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 294
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 298
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 299
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 300
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 330
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 332
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 334
    return-object v12

    .line 286
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 287
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 288
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 286
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "scale":Landroid/view/animation/Animation;
    goto :goto_0

    .line 303
    .local v0, "scale":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 305
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 306
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 307
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 306
    const/4 v5, 0x0

    .line 307
    const/4 v7, 0x0

    .line 304
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 315
    .local v0, "scale":Landroid/view/animation/Animation;
    :goto_2
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 316
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 318
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 319
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 323
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 325
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto :goto_1

    .line 310
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 311
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 312
    invoke-direct {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->getAppExitScaleAnimationPivotXValue()F

    move-result v6

    .line 313
    invoke-direct {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->getAppExitScaleAnimationPivotYValue()F

    move-result v8

    .line 312
    const/4 v5, 0x0

    .line 313
    const/4 v7, 0x0

    .line 310
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "scale":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 465
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskCloseAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 468
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 469
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 470
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 472
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 473
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 477
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 478
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 479
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 498
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 500
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 502
    return-object v12

    .line 481
    .restart local v0    # "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 482
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 483
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 481
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 484
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 488
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 490
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 492
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 493
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 494
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 495
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 423
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskOpenAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 426
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 427
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 428
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 430
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 431
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 432
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 433
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 431
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 434
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 435
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 437
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 438
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 442
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 443
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 444
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 456
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 458
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 460
    return-object v12

    .line 447
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 448
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 451
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 452
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 453
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "xOffset"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    if-nez v1, :cond_0

    .line 340
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungWallpaperEnterAnimation, wallpaperEnterAnimation is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, 0x0

    return-object v1

    .line 343
    :cond_0
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungWallpaperEnterAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 347
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 348
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAnimationTriggerActivity:I

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 351
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 352
    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    .line 353
    iget v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v7, v7

    div-float v8, v7, v8

    move v7, v5

    .line 350
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 359
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 362
    iput-boolean v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    .line 364
    new-instance v1, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;-><init>(Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    return-object v0

    .line 355
    .local v0, "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    iget v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v8, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 356
    iget v9, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v10, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 357
    iget v11, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v12, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    move-object v6, v0

    .line 355
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "isDesktopMode"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 385
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungWallpaperExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAnimationTriggerLauncherScreen:I

    const/16 v2, 0x14

    if-ne v2, v1, :cond_0

    .line 388
    const-string v1, "CHNHighEndSamsungAnimationCreator"

    const-string v2, "createSamsungWallpaperExitAnimation SKIP, ANIMATION_TRIGGER_LAUNCHER_SCREEN_APPS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    return-object v1

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 394
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 395
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 396
    .local v0, "a":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 397
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 399
    iput-boolean v8, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    .line 418
    :goto_0
    return-object v0

    .line 401
    .local v0, "a":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    .line 402
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 403
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 404
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    .line 402
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 412
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_1
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 415
    iput-boolean v8, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    goto :goto_0

    .line 406
    .local v0, "a":Landroid/view/animation/Animation;
    :cond_2
    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 407
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 408
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 409
    iget v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 410
    iget v5, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 408
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public initSamsungAnimationFactor()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    const-string v0, "CHNHighEndSamsungAnimationCreator"

    const-string v1, "initSamsungAnimationFactor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v7, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 27
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    .line 28
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 29
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    .line 30
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 32
    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    .line 33
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 34
    iput v7, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    .line 35
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 36
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    .line 38
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 39
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 40
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    .line 41
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 43
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    .line 44
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    .line 45
    const-wide/16 v0, 0x46

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v7, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 50
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    .line 51
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    .line 52
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    .line 53
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    .line 54
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    .line 56
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 57
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    .line 58
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v7, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 63
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    .line 64
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 65
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    .line 66
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 67
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    .line 69
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 70
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 71
    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    .line 72
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 77
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    .line 78
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 79
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    .line 80
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 81
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    .line 83
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 84
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    .line 85
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_START_OFFSET:J

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 89
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    .line 90
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 91
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    .line 92
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 93
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_ENTER_WALLPAPER_SCALE_ANIMATION_DURATION:J

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v7, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 96
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

    .line 97
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

    .line 98
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

    .line 99
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

    .line 100
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->APP_EXIT_WALLPAPER_SCALE_ANIMATION_DURATION:J

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v7, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v6, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 105
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    .line 106
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 107
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    .line 108
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 109
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    .line 111
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 112
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 113
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    .line 116
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v6, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 118
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 119
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 121
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v6, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 123
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 124
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 126
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 127
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v6, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 129
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    .line 130
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 131
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    .line 132
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 133
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    .line 135
    iput v3, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 136
    iput v4, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 137
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    .line 20
    return-void
.end method
