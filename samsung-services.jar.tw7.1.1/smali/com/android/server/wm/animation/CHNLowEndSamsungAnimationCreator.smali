.class public Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;
.super Lcom/android/server/wm/animation/SamsungAnimationCreator;
.source "CHNLowEndSamsungAnimationCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CHNLowEndSamsungAnimationCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->initSamsungAnimationFactor()V

    .line 15
    return-void
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
    .line 146
    const-string v1, "CHNLowEndSamsungAnimationCreator"

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

    .line 147
    const-string v1, "CHNLowEndSamsungAnimationCreator"

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

    .line 148
    const-string v1, "CHNLowEndSamsungAnimationCreator"

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

    .line 149
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 150
    const-string v1, "CHNLowEndSamsungAnimationCreator"

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

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->setAppWindowSize(Landroid/graphics/Rect;)V

    .line 156
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 172
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

    .line 158
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 160
    :sswitch_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 162
    :sswitch_2
    invoke-virtual {p0, p7}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 164
    :sswitch_3
    move/from16 v0, p9

    invoke-virtual {p0, p7, v0}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 167
    :sswitch_4
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 170
    :sswitch_5
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 156
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
    .line 178
    const-string v3, "CHNLowEndSamsungAnimationCreator"

    const-string v4, "createSamsungAppEnterAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 181
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/16 v16, 0x0

    .line 182
    .local v16, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 183
    .local v11, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 185
    .local v10, "appHeight":I
    if-eqz p2, :cond_5

    .line 186
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 187
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 188
    if-eqz p1, :cond_2

    .line 189
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 190
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 191
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 189
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 198
    .local v2, "scale":Landroid/view/animation/Animation;
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 202
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 206
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 207
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 208
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 211
    if-nez p5, :cond_1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_1

    .line 212
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 213
    .local v13, "fromClipRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 214
    .local v17, "toClipRect":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 215
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_0

    .line 216
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 217
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 220
    :cond_0
    new-instance v12, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, v17

    invoke-direct {v12, v13, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 221
    .local v12, "clip":Landroid/view/animation/ClipRectAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    .line 230
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 262
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

    .line 263
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 264
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 266
    return-object v16

    .line 193
    .local v2, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 194
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 195
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 193
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v2, "scale":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 225
    .local v9, "alpha":Landroid/view/animation/Animation;
    .restart local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .restart local v13    # "fromClipRect":Landroid/graphics/Rect;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    .restart local v17    # "toClipRect":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v4, v3

    int-to-double v6, v10

    const-wide v18, 0x3fe199999999999aL    # 0.55

    mul-double v6, v6, v18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    .restart local v14    # "duration":J
    goto :goto_1

    .line 228
    .end local v14    # "duration":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    .restart local v14    # "duration":J
    goto :goto_1

    .line 234
    .end local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .end local v13    # "fromClipRect":Landroid/graphics/Rect;
    .end local v14    # "duration":J
    .end local v17    # "toClipRect":Landroid/graphics/Rect;
    .local v2, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_5
    if-eqz p6, :cond_6

    .line 235
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 236
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 239
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 240
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 241
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_2

    .line 243
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v16, "set":Landroid/view/animation/AnimationSet;
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 244
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 245
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    .line 246
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    .line 247
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 245
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 248
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 251
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 252
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    new-instance v16, Landroid/view/animation/AnimationSet;

    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 256
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 257
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
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
    .line 271
    const-string v1, "CHNLowEndSamsungAnimationCreator"

    const-string v2, "createSamsungAppExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 274
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 275
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 276
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 278
    .local v10, "appHeight":I
    if-eqz p1, :cond_1

    .line 279
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 280
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 283
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 284
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 285
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 284
    const/4 v5, 0x0

    .line 285
    const/4 v7, 0x0

    .line 282
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 292
    .local v0, "scale":Landroid/view/animation/Animation;
    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 295
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 300
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 301
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 302
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 303
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 333
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 335
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 337
    return-object v12

    .line 288
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 289
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 290
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 288
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "scale":Landroid/view/animation/Animation;
    goto :goto_0

    .line 305
    .local v0, "scale":Landroid/view/animation/Animation;
    :cond_1
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 306
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 309
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 310
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 311
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 310
    const/4 v5, 0x0

    .line 311
    const/4 v7, 0x0

    .line 308
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 318
    .local v0, "scale":Landroid/view/animation/Animation;
    :goto_2
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 322
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 324
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 326
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 327
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 328
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 330
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto/16 :goto_1

    .line 314
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 315
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 316
    iget v5, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 314
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "scale":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 394
    const-string v1, "CHNLowEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskCloseAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 397
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 398
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 399
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 401
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 402
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 406
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 407
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 408
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 427
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 429
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 431
    return-object v12

    .line 410
    .restart local v0    # "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 411
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 412
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 410
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 413
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 416
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 417
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 421
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 422
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 352
    const-string v1, "CHNLowEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskOpenAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 355
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 356
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 357
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 359
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 360
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 361
    iget v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 362
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 360
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 363
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 364
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 367
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 368
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 369
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 371
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 372
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 373
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 374
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 385
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 387
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 389
    return-object v12

    .line 376
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 377
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 378
    iget-object v1, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 380
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 381
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "xOffset"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "xOffset"    # I
    .param p2, "isDesktopMode"    # Z

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public initSamsungAnimationFactor()V
    .locals 8

    .prologue
    const v7, 0x3f547ae1    # 0.83f

    const v6, 0x3e4ccccd    # 0.2f

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    const-string v0, "CHNLowEndSamsungAnimationCreator"

    const-string v1, "initSamsungAnimationFactor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v6, v1, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 27
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    .line 28
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 29
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    .line 30
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 32
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    .line 33
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 34
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    .line 35
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 36
    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    .line 38
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 39
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 40
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    .line 41
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 43
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    .line 44
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    .line 45
    const-wide/16 v0, 0x46

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v6, v1, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 50
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

    .line 51
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

    .line 52
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

    .line 53
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

    .line 54
    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

    .line 56
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 57
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    .line 58
    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 63
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    .line 64
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 65
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    .line 66
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 67
    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    .line 69
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 70
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 71
    const-wide/16 v0, 0xa0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    .line 72
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 77
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

    .line 78
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

    .line 79
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

    .line 80
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

    .line 81
    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

    .line 83
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 84
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

    .line 85
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 107
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    .line 108
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 109
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    .line 110
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 111
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    .line 113
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 114
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 115
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 120
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 121
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 125
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 126
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 128
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 129
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 131
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    .line 132
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 133
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    .line 134
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 135
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    .line 137
    iput v3, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 138
    iput v4, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 139
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/CHNLowEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    .line 20
    return-void
.end method
