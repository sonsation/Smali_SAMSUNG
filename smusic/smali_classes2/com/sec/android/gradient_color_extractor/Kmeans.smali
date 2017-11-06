.class public Lcom/sec/android/gradient_color_extractor/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field static mGrayscale_limite_b:F

.field static mGrayscale_limite_s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    .line 21
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    return-void
.end method

.method static calculateCenter(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "bSum":I
    move v1, v0

    .local v1, "gSum":I
    move v3, v0

    .line 183
    .local v3, "rSum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, "i":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 185
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 186
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 187
    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const/4 v4, 0x0

    .line 191
    :goto_1
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    .line 193
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    .line 191
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_1
.end method

.method static checkGayScale_with_value([FFF)Z
    .locals 2
    .param p0, "hsv"    # [F
    .param p1, "offsetValue_s"    # F
    .param p2, "offsetValue_b"    # F

    .prologue
    const/4 v0, 0x1

    .line 172
    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 10
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    aget v4, p1, v6

    aget v5, p0, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 142
    .local v1, "diff_h":F
    cmpl-float v4, v1, v9

    if-ltz v4, :cond_0

    .line 143
    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v1, v4, v1

    .line 145
    :cond_0
    div-float/2addr v1, v9

    .line 147
    aget v4, p1, v7

    aget v5, p0, v7

    sub-float v2, v4, v5

    .line 148
    .local v2, "diff_s":F
    aget v4, p1, v8

    aget v5, p0, v8

    sub-float v0, v4, v5

    .line 150
    .local v0, "diff_b":F
    aget v4, p2, v6

    mul-float/2addr v1, v4

    .line 151
    aget v4, p2, v7

    mul-float/2addr v2, v4

    .line 152
    aget v4, p2, v8

    mul-float/2addr v0, v4

    .line 154
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float v3, v4, v5

    .line 155
    .local v3, "hsvDistance_square2":F
    return v3
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clusterGroups"    # [I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 58
    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 59
    invoke-static {v1, p1}, Lcom/sec/android/gradient_color_extractor/Kmeans;->kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 21
    .param p0, "pixels"    # [I
    .param p1, "clusterGroups"    # [I

    .prologue
    .line 63
    const/4 v10, 0x1

    .line 64
    .local v10, "iterationNum":I
    move-object/from16 v0, p1

    array-length v3, v0

    .line 65
    .local v3, "clusterNum":I
    new-array v5, v3, [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    .line 66
    .local v5, "dominantColorResults":[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    new-array v1, v3, [I

    .line 67
    .local v1, "clusterGroups_copied":[I
    new-array v2, v3, [[F

    .line 68
    .local v2, "clusterGroups_hsv_copied":[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 69
    aget v18, p1, v6

    aput v18, v1, v6

    .line 70
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    aput-object v18, v2, v6

    .line 71
    aget v18, v1, v6

    aget-object v19, v2, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[F

    move-object/from16 v17, v0

    .line 76
    .local v17, "pixels_hsv":[[F
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 77
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    aput-object v18, v17, v6

    .line 78
    aget v18, p0, v6

    aget-object v19, v17, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    :cond_1
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    if-ge v12, v10, :cond_9

    .line 83
    new-array v0, v3, [Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 84
    .local v16, "newClusters":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_2

    .line 85
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    aput-object v18, v16, v6

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 87
    :cond_2
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    .line 88
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 89
    .local v13, "minDist":F
    const/4 v14, 0x0

    .line 90
    .local v14, "minDistID":I
    aget-object v18, v17, v6

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v9

    .line 91
    .local v9, "isPixelColorGray":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    if-ge v11, v3, :cond_5

    .line 92
    aget-object v18, v2, v11

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v8

    .line 94
    .local v8, "isClusterColorGray":Z
    if-nez v8, :cond_4

    if-nez v9, :cond_4

    .line 95
    aget-object v18, v17, v6

    aget-object v19, v2, v11

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    .line 96
    .local v4, "dist":F
    cmpg-float v18, v4, v13

    if-gez v18, :cond_3

    .line 97
    move v13, v4

    .line 98
    move v14, v11

    .line 91
    .end local v4    # "dist":F
    :cond_3
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 100
    :cond_4
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    .line 101
    aget-object v18, v17, v6

    aget-object v19, v2, v11

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    .line 102
    .restart local v4    # "dist":F
    cmpg-float v18, v4, v13

    if-gez v18, :cond_3

    .line 103
    move v13, v4

    .line 104
    move v14, v11

    goto :goto_6

    .line 108
    .end local v4    # "dist":F
    .end local v8    # "isClusterColorGray":Z
    :cond_5
    aget-object v18, v16, v14

    aget v19, p0, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 111
    .end local v9    # "isPixelColorGray":Z
    .end local v11    # "j":I
    .end local v13    # "minDist":F
    .end local v14    # "minDistID":I
    :cond_6
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_7

    .line 113
    aget-object v18, v16, v6

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v15

    .line 114
    .local v15, "newCenter":I
    aput v15, v1, v6

    .line 115
    aget v18, v1, v6

    aget-object v19, v2, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 119
    .end local v15    # "newCenter":I
    :cond_7
    if-nez v12, :cond_8

    .line 121
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 122
    .local v7, "invPixelLength":F
    const/4 v6, 0x0

    :goto_8
    array-length v0, v1

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 123
    new-instance v18, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    aget v19, v1, v6

    aget-object v20, v16, v6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;-><init>(IF)V

    aput-object v18, v5, v6

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 81
    .end local v7    # "invPixelLength":F
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 129
    .end local v16    # "newClusters":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    new-instance v18, Lcom/sec/android/gradient_color_extractor/Kmeans$1;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    return-object v5

    .line 95
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
