.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 57
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 20
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 62
    const v13, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v7

    .line 64
    .local v7, "pointComponents":[F
    array-length v13, v7

    div-int/lit8 v6, v13, 0x3

    .line 66
    .local v6, "numPoints":I
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    .line 67
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    .line 68
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 69
    const/4 v9, 0x0

    .line 70
    .local v9, "prevX":F
    const/4 v10, 0x0

    .line 71
    .local v10, "prevY":F
    const/4 v8, 0x0

    .line 72
    .local v8, "prevFraction":F
    const/4 v2, 0x0

    .line 73
    .local v2, "componentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "componentIndex":I
    .local v3, "componentIndex":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 74
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v4, v7, v3

    .line 75
    .local v4, "fraction":F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    aget v11, v7, v2

    .line 76
    .local v11, "x":F
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v12, v7, v3

    .line 77
    .local v12, "y":F
    cmpl-float v13, v4, v8

    if-nez v13, :cond_0

    cmpl-float v13, v11, v9

    if-eqz v13, :cond_0

    .line 78
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string/jumbo v14, "The Path cannot have discontinuity in the X axis."

    .line 78
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 81
    :cond_0
    cmpg-float v13, v11, v9

    if-gez v13, :cond_1

    .line 82
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The Path cannot loop back on itself."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 84
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v11, v13, v5

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v12, v13, v5

    .line 86
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v14, v13

    sub-float v13, v11, v9

    float-to-double v0, v13

    move-wide/from16 v16, v0

    sub-float v13, v12, v10

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 87
    move v9, v11

    .line 88
    move v10, v12

    .line 89
    move v8, v4

    .line 73
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    goto :goto_0

    .line 61
    .end local v4    # "fraction":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_2
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 12
    .param p1, "t"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 109
    .local v0, "endIndex":I
    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v8, :cond_7

    .line 110
    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    .line 111
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 112
    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    .line 113
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_1

    .line 114
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d8f5c29    # 0.07f

    add-float/2addr v8, v9

    return v8

    .line 115
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v8, :cond_2

    .line 116
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3da3d70a    # 0.08f

    add-float/2addr v8, v9

    return v8

    .line 118
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    .line 120
    :cond_3
    cmpg-float v8, p1, v10

    if-gez v8, :cond_6

    .line 121
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_4

    .line 122
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dd70a3d    # 0.105f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 123
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v8, :cond_5

    .line 124
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 126
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 128
    :cond_6
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    .line 129
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 133
    :cond_7
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_8

    .line 134
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 135
    :cond_8
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    .line 136
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 141
    :cond_9
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    .line 142
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 143
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_a

    .line 144
    move v0, v3

    goto :goto_0

    .line 146
    :cond_a
    move v4, v3

    goto :goto_0

    .line 150
    .end local v3    # "midIndex":I
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 151
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_c

    .line 152
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 155
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 156
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 158
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 159
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 160
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getInterpolationOnLandscape(F)F
    .locals 12
    .param p1, "t"    # F

    .prologue
    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x0

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 169
    .local v0, "endIndex":I
    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    .line 170
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 171
    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    .line 172
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_2

    .line 173
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v8, :cond_1

    .line 174
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d921736

    add-float/2addr v8, v9

    return v8

    .line 176
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d9fbe77    # 0.078f

    add-float/2addr v8, v9

    return v8

    .line 179
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    .line 181
    :cond_3
    cmpg-float v8, p1, v10

    if-gez v8, :cond_6

    .line 182
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_5

    .line 183
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v8, :cond_4

    .line 184
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3ddb22d1    # 0.107f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 186
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3def9db2    # 0.117f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 189
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    .line 191
    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_7

    .line 192
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 196
    :cond_7
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    .line 197
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 198
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_8

    .line 199
    move v0, v3

    goto :goto_0

    .line 201
    :cond_8
    move v4, v3

    goto :goto_0

    .line 205
    .end local v3    # "midIndex":I
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 206
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_a

    .line 207
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 210
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 211
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 213
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 214
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 215
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getX(F)F
    .locals 11
    .param p1, "y"    # F

    .prologue
    const/4 v10, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 229
    .local v0, "endIndex":I
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    .line 230
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    return v8

    .line 231
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1

    .line 232
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 236
    :cond_1
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 237
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 238
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    .line 239
    move v4, v3

    goto :goto_0

    .line 241
    :cond_2
    move v0, v3

    goto :goto_0

    .line 245
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 246
    .local v7, "yRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    .line 247
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 250
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 251
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 253
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v8, v4

    .line 254
    .local v5, "startX":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v1, v8, v0

    .line 255
    .local v1, "endX":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
