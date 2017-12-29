.class public Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;
.super Lcom/android/server/wm/animation/SamsungAnimationCreator;
.source "LowestEndSamsungAnimationCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LowestEndSamsungAnimationCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->initSamsungAnimationFactor()V

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
    .line 150
    const-string v1, "LowestEndSamsungAnimationCreator"

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

    .line 151
    const-string v1, "LowestEndSamsungAnimationCreator"

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

    .line 152
    const-string v1, "LowestEndSamsungAnimationCreator"

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

    .line 153
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 154
    const-string v1, "LowestEndSamsungAnimationCreator"

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

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->setAppWindowSize(Landroid/graphics/Rect;)V

    .line 160
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 176
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

    .line 162
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 164
    :sswitch_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 166
    :sswitch_2
    invoke-virtual {p0, p7}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 168
    :sswitch_3
    move/from16 v0, p9

    invoke-virtual {p0, p7, v0}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 171
    :sswitch_4
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 174
    :sswitch_5
    invoke-virtual {p0, p4, p5}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 160
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
    .locals 16
    .param p1, "isSplit"    # Z
    .param p2, "enter"    # Z
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "insets"    # Landroid/graphics/Rect;
    .param p5, "isFixedOrientation"    # Z
    .param p6, "isDesktopMode"    # Z

    .prologue
    .line 182
    const-string v3, "LowestEndSamsungAnimationCreator"

    const-string v4, "createSamsungAppEnterAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 185
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v14, 0x0

    .line 186
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 187
    .local v11, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 189
    .local v10, "appHeight":I
    if-eqz p2, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 191
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 192
    if-eqz p1, :cond_2

    .line 193
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 194
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 195
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 193
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 202
    .local v2, "scale":Landroid/view/animation/Animation;
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 206
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 210
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 211
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 212
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 215
    if-nez p5, :cond_1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_1

    .line 216
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 217
    .local v13, "fromClipRect":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 218
    .local v15, "toClipRect":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 219
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_0

    .line 220
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 221
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 224
    :cond_0
    new-instance v12, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v12, v13, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 225
    .local v12, "clip":Landroid/view/animation/ClipRectAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    .line 227
    invoke-virtual {v14, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 244
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "clip":Landroid/view/animation/ClipRectAnimation;
    .end local v13    # "fromClipRect":Landroid/graphics/Rect;
    .end local v15    # "toClipRect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 245
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 246
    invoke-virtual {v14, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 248
    return-object v14

    .line 197
    .local v2, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v14, "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 198
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 199
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 197
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v2, "scale":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 230
    .local v2, "scale":Landroid/view/animation/Animation;
    :cond_3
    if-eqz p6, :cond_4

    .line 231
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 232
    .local v9, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 236
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_1

    .line 240
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v14, "set":Landroid/view/animation/AnimationSet;
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method public createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 253
    const-string v1, "LowestEndSamsungAnimationCreator"

    const-string v2, "createSamsungAppExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 256
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 257
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 258
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 260
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 262
    const/4 v1, 0x0

    return-object v1

    .line 264
    :cond_0
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    .line 265
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 268
    iget v3, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 269
    iget v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->WINDOW_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 270
    iget v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->WINDOW_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 269
    const/4 v5, 0x0

    .line 270
    const/4 v7, 0x0

    .line 267
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 277
    .local v0, "scale":Landroid/view/animation/Animation;
    :goto_0
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 283
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 285
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 286
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 288
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 289
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 292
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 293
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 294
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 296
    return-object v12

    .line 273
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 274
    iget v3, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 275
    iget v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotX:F

    iget v6, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->mAppInOutAnimationPivotY:F

    .line 273
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, "scale":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 353
    const-string v1, "LowestEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskCloseAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 356
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 357
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 358
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 360
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 361
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 362
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 363
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 366
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 367
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 386
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 388
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 390
    return-object v12

    .line 369
    .restart local v0    # "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 370
    iget v3, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 371
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 369
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 372
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 373
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 375
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 376
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 378
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 380
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 381
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 382
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 311
    const-string v1, "LowestEndSamsungAnimationCreator"

    const-string v2, "createSamsungTaskOpenAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 314
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    .line 315
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 316
    .local v11, "appWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 318
    .local v10, "appHeight":I
    if-eqz p1, :cond_0

    .line 319
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 320
    iget v3, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    iget v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 321
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 319
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 322
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 326
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 330
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 331
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 332
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 344
    .end local v0    # "scale":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 345
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 346
    invoke-virtual {v12, v11, v10, v11, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 348
    return-object v12

    .line 335
    .local v0, "scale":Landroid/view/animation/Animation;
    .local v9, "alpha":Landroid/view/animation/Animation;
    .local v12, "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    iget v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 336
    .local v9, "alpha":Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 339
    new-instance v12, Landroid/view/animation/AnimationSet;

    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 340
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_0
.end method

.method public createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "xOffset"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "xOffset"    # I
    .param p2, "isDesktopMode"    # Z

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public initSamsungAnimationFactor()V
    .locals 9

    .prologue
    const v8, 0x3f733333    # 0.95f

    const v7, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f547ae1    # 0.83f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    const-string v0, "LowestEndSamsungAnimationCreator"

    const-string v1, "initSamsungAnimationFactor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v7, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 27
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

    .line 28
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

    .line 29
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

    .line 30
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

    .line 32
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

    .line 33
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

    .line 34
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

    .line 35
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

    .line 36
    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

    .line 38
    iput v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 39
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 40
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 43
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

    .line 44
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

    .line 45
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v7, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 65
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

    .line 66
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

    .line 67
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

    .line 68
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

    .line 69
    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

    .line 71
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 72
    iput v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

    .line 73
    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v5, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 111
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

    .line 112
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

    .line 113
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

    .line 114
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

    .line 115
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

    .line 117
    iput v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 118
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 119
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

    .line 122
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v5, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 124
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 125
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 127
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v5, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 129
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 130
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

    .line 132
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v7, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v5, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 135
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

    .line 136
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

    .line 137
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

    .line 138
    iput v8, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

    .line 139
    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

    .line 141
    iput v4, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

    .line 142
    iput v5, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

    .line 143
    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowestEndSamsungAnimationCreator;->TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

    .line 20
    return-void
.end method
