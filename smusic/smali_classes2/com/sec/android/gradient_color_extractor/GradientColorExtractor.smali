.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.super Lcom/sec/android/gradient_color_extractor/Kmeans;
.source "GradientColorExtractor.java"


# direct methods
.method public static checkSameColor([F[FFFF)Z
    .locals 8
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "range_h"    # F
    .param p3, "range_s"    # F
    .param p4, "range_b"    # F

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    aget v4, p1, v3

    aget v5, p0, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 195
    .local v0, "hue_diff":F
    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 196
    mul-float v4, p2, v6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    move v1, v2

    .line 200
    .local v1, "isHueSame":Z
    :goto_0
    if-eqz v1, :cond_3

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p3

    if-gez v4, :cond_3

    aget v4, p0, v7

    aget v5, p1, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p4

    if-gez v4, :cond_3

    .line 203
    :goto_1
    return v2

    .end local v1    # "isHueSame":Z
    :cond_0
    move v1, v3

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    sub-float v4, v6, v0

    mul-float v5, p2, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    .restart local v1    # "isHueSame":Z
    :goto_2
    goto :goto_0

    .end local v1    # "isHueSame":Z
    :cond_2
    move v1, v3

    goto :goto_2

    .restart local v1    # "isHueSame":Z
    :cond_3
    move v2, v3

    .line 203
    goto :goto_1
.end method

.method static findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)[I
    .locals 15
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .param p1, "gradientIndex_a"    # I
    .param p2, "gradientIndex_b"    # I
    .param p3, "grayScaleCheckingVal"    # F
    .param p4, "minimum_threasold_percentage_for_doubl_grayColor"    # F

    .prologue
    .line 97
    aget-object v13, p0, p1

    iget v3, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 98
    .local v3, "gradientColor_a":I
    aget-object v13, p0, p2

    iget v4, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 100
    .local v4, "gradientColor_b":I
    const/4 v13, 0x3

    new-array v5, v13, [F

    .line 101
    .local v5, "hsv_a":[F
    const/4 v13, 0x3

    new-array v6, v13, [F

    .line 102
    .local v6, "hsv_b":[F
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 103
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 105
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v5, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v10

    .line 106
    .local v10, "isColorAGrayScale":Z
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v6, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v11

    .line 107
    .local v11, "isColorBGrayScale":Z
    const/4 v0, 0x0

    .line 108
    .local v0, "bColorSwap":Z
    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 109
    const/4 v13, 0x3

    new-array v7, v13, [F

    .line 110
    .local v7, "hsv_current":[F
    const/4 v13, 0x3

    new-array v8, v13, [F

    .line 111
    .local v8, "hsv_target":[F
    const/4 v12, -0x1

    .line 112
    .local v12, "mostSatuationColorIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v13, p0

    if-ge v9, v13, :cond_1

    .line 113
    aget-object v13, p0, v9

    iget v1, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 114
    .local v1, "color_current":I
    invoke-static {v1, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 115
    aget-object v13, p0, v9

    iget v13, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v13, v13, p4

    if-ltz v13, :cond_1

    .line 116
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v7, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v13

    if-nez v13, :cond_4

    .line 117
    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 118
    move v12, v9

    .line 124
    :cond_0
    :goto_1
    aget-object v13, p0, v12

    iget v2, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 125
    .local v2, "color_target":I
    invoke-static {v2, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 133
    .end local v1    # "color_current":I
    .end local v2    # "color_target":I
    :cond_1
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 134
    move/from16 p2, v12

    .line 135
    const/4 v0, 0x1

    .line 143
    .end local v7    # "hsv_current":[F
    .end local v8    # "hsv_target":[F
    .end local v9    # "i":I
    .end local v12    # "mostSatuationColorIndex":I
    :cond_2
    :goto_2
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 144
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 152
    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput p1, v13, v14

    const/4 v14, 0x1

    aput p2, v13, v14

    return-object v13

    .line 120
    .restart local v1    # "color_current":I
    .restart local v7    # "hsv_current":[F
    .restart local v8    # "hsv_target":[F
    .restart local v9    # "i":I
    .restart local v12    # "mostSatuationColorIndex":I
    :cond_3
    const/4 v13, 0x1

    aget v13, v8, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 121
    move v12, v9

    goto :goto_1

    .line 112
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "color_current":I
    .end local v7    # "hsv_current":[F
    .end local v8    # "hsv_target":[F
    .end local v9    # "i":I
    .end local v12    # "mostSatuationColorIndex":I
    :cond_5
    if-eqz v10, :cond_2

    .line 139
    const/4 v0, 0x1

    goto :goto_2
.end method

.method static findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I
    .locals 7
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "minimum_threasold_percentage"    # F
    .param p4, "maximum_threasold_percentage"    # F

    .prologue
    const/4 v6, 0x0

    .line 157
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 158
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 159
    if-le p1, p2, :cond_1

    .line 160
    const/4 v3, -0x1

    .line 189
    :cond_0
    :goto_0
    return v3

    .line 163
    :cond_1
    const/4 v3, -0x1

    .line 164
    .local v3, "index":I
    const/4 v5, 0x3

    new-array v1, v5, [F

    .line 165
    .local v1, "dominantColor_hsv":[F
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-gt v2, p2, :cond_0

    .line 166
    aget-object v5, p0, v2

    iget v0, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 167
    .local v0, "dominantColor":I
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 168
    sget v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static {v1, v5, v6}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v4

    .line 169
    .local v4, "isDominantColorGrayScale":Z
    if-eqz v4, :cond_4

    .line 170
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p4

    if-ltz v5, :cond_2

    .line 171
    move v3, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_3

    .line 165
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_4
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_0

    .line 182
    move v3, v2

    .line 183
    goto :goto_0
.end method

.method static find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;FF)[I
    .locals 13
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .param p1, "minimum_threasold_percentage"    # F
    .param p2, "maximum_threasold_percentage"    # F

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const v9, 0x3dcccccd    # 0.1f

    .line 39
    aget-object v7, p0, v11

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    const v8, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 40
    const/4 v6, 0x0

    .line 41
    .local v6, "startColorIndex":I
    const/4 v1, 0x0

    .line 92
    .local v1, "endColorIndex":I
    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v11

    const/4 v8, 0x1

    aput v1, v7, v8

    return-object v7

    .line 43
    .end local v1    # "endColorIndex":I
    .end local v6    # "startColorIndex":I
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p0, v11, v7, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v6

    .line 44
    .restart local v6    # "startColorIndex":I
    if-ne v6, v10, :cond_1

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v1, 0x0

    .restart local v1    # "endColorIndex":I
    goto :goto_0

    .line 48
    .end local v1    # "endColorIndex":I
    :cond_1
    add-int/lit8 v2, v6, 0x1

    .line 49
    .local v2, "endColorIndex_2nd_priority":I
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 51
    :cond_2
    add-int/lit8 v7, v6, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v1

    .line 52
    .restart local v1    # "endColorIndex":I
    if-ne v1, v10, :cond_3

    .line 53
    move v1, v2

    goto :goto_0

    .line 55
    :cond_3
    new-array v3, v12, [F

    .line 56
    .local v3, "hsv_a":[F
    new-array v4, v12, [F

    .line 57
    .local v4, "hsv_b":[F
    aget-object v7, p0, v6

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 58
    move v5, v1

    .line 60
    .local v5, "resellected_endcolor_index":I
    :cond_4
    aget-object v7, p0, v5

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 61
    invoke-static {v3, v4, v9, v9, v9}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkSameColor([F[FFFF)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 62
    add-int/lit8 v7, v5, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v0

    .line 66
    .local v0, "AnotherEndColorIndex":I
    if-ne v0, v10, :cond_6

    .line 85
    .end local v0    # "AnotherEndColorIndex":I
    :cond_5
    :goto_1
    move v1, v5

    goto :goto_0

    .line 69
    .restart local v0    # "AnotherEndColorIndex":I
    :cond_6
    move v5, v0

    .line 78
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v5, v7, :cond_4

    goto :goto_1
.end method

.method public static makeClusterrGroup_preset1(I)[I
    .locals 11
    .param p0, "clusterNum"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 23
    const/4 v1, 0x3

    .line 24
    .local v1, "defaultColorNum":I
    if-ge p0, v1, :cond_0

    .line 25
    move p0, v1

    .line 26
    :cond_0
    new-array v0, p0, [I

    .line 27
    .local v0, "clusterGroups":[I
    const/4 v3, -0x1

    aput v3, v0, v8

    .line 28
    const/high16 v3, -0x1000000

    aput v3, v0, v9

    .line 29
    const v3, -0x777778

    aput v3, v0, v10

    .line 30
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 31
    const/4 v3, 0x3

    new-array v3, v3, [F

    sub-int v4, v2, v1

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-int v6, p0, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v8

    aput v7, v3, v9

    aput v7, v3, v10

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method
