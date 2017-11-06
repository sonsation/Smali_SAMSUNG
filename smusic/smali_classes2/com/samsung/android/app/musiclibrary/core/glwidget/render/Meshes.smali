.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;
.super Ljava/lang/Object;
.source "Meshes.java"


# static fields
.field public static final FramedRectangle:[F

.field public static final TexturedRectangle:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->TexturedRectangle:[F

    .line 27
    const/16 v0, 0x18

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->FramedRectangle:[F

    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 27
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static circleColors(III)[F
    .locals 14
    .param p0, "cornerPointsCount"    # I
    .param p1, "c1"    # I
    .param p2, "c2"    # I

    .prologue
    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v9, v12, v13

    .line 89
    .local v9, "r1":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v4, v12, v13

    .line 90
    .local v4, "g1":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v2, v12, v13

    .line 91
    .local v2, "b1":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v0, v12, v13

    .line 93
    .local v0, "a1":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v10, v12, v13

    .line 94
    .local v10, "r2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v5, v12, v13

    .line 95
    .local v5, "g2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v3, v12, v13

    .line 96
    .local v3, "b2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v1, v12, v13

    .line 97
    .local v1, "a2":F
    add-int/lit8 v12, p0, 0x1

    mul-int/lit8 v8, v12, 0x2

    .line 98
    .local v8, "pointCount":I
    mul-int/lit8 v12, v8, 0x4

    new-array v11, v12, [F

    .line 100
    .local v11, "res":[F
    const/4 v7, 0x0

    .local v7, "p":I
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 101
    rem-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_0

    .line 102
    add-int/lit8 v12, v6, 0x0

    aput v9, v11, v12

    .line 103
    add-int/lit8 v12, v6, 0x1

    aput v4, v11, v12

    .line 104
    add-int/lit8 v12, v6, 0x2

    aput v2, v11, v12

    .line 105
    add-int/lit8 v12, v6, 0x3

    aput v0, v11, v12

    .line 100
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 107
    :cond_0
    add-int/lit8 v12, v6, 0x0

    aput v10, v11, v12

    .line 108
    add-int/lit8 v12, v6, 0x1

    aput v5, v11, v12

    .line 109
    add-int/lit8 v12, v6, 0x2

    aput v3, v11, v12

    .line 110
    add-int/lit8 v12, v6, 0x3

    aput v1, v11, v12

    goto :goto_1

    .line 113
    :cond_1
    return-object v11
.end method

.method public static circleCoords(FFFFFFI)[F
    .locals 12
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "a0"    # F
    .param p5, "a1"    # F
    .param p6, "cornerSegmentCount"    # I

    .prologue
    .line 67
    add-int/lit8 v8, p6, 0x1

    mul-int/lit8 v6, v8, 0x2

    .line 68
    .local v6, "pointCount":I
    mul-int/lit8 v8, v6, 0x3

    new-array v7, v8, [F

    .line 69
    .local v7, "res":[F
    sub-float v8, p5, p4

    move/from16 v0, p6

    int-to-float v9, v0

    div-float v3, v8, v9

    .line 70
    .local v3, "da":F
    move/from16 v2, p4

    .line 72
    .local v2, "a":F
    const/4 v5, 0x0

    .local v5, "p":I
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 73
    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_0

    .line 74
    add-int/lit8 v8, v4, 0x0

    aput p0, v7, v8

    .line 75
    add-int/lit8 v8, v4, 0x1

    aput p1, v7, v8

    .line 76
    add-int/lit8 v8, v4, 0x2

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 72
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 78
    :cond_0
    add-int/lit8 v8, v4, 0x0

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, p2

    add-float/2addr v9, p0

    aput v9, v7, v8

    .line 79
    add-int/lit8 v8, v4, 0x1

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, p3

    add-float/2addr v9, p1

    aput v9, v7, v8

    .line 80
    add-int/lit8 v8, v4, 0x2

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 81
    add-float/2addr v2, v3

    goto :goto_1

    .line 84
    :cond_1
    return-object v7
.end method

.method public static circleShadowColors(III)[F
    .locals 14
    .param p0, "cornerSegmentCount"    # I
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I

    .prologue
    .line 202
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v10, v12, v13

    .line 203
    .local v10, "ri":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v4, v12, v13

    .line 204
    .local v4, "gi":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v2, v12, v13

    .line 205
    .local v2, "bi":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v0, v12, v13

    .line 207
    .local v0, "ai":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v11, v12, v13

    .line 208
    .local v11, "ro":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v5, v12, v13

    .line 209
    .local v5, "go":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v3, v12, v13

    .line 210
    .local v3, "bo":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float v1, v12, v13

    .line 212
    .local v1, "ao":F
    add-int/lit8 v12, p0, 0x1

    mul-int/lit8 v8, v12, 0x2

    .line 213
    .local v8, "pointCount":I
    mul-int/lit8 v12, v8, 0x4

    new-array v9, v12, [F

    .line 215
    .local v9, "res":[F
    const/4 v7, 0x0

    .local v7, "p":I
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 216
    rem-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_0

    .line 218
    add-int/lit8 v12, v6, 0x0

    aput v11, v9, v12

    .line 219
    add-int/lit8 v12, v6, 0x1

    aput v5, v9, v12

    .line 220
    add-int/lit8 v12, v6, 0x2

    aput v3, v9, v12

    .line 221
    add-int/lit8 v12, v6, 0x3

    aput v1, v9, v12

    .line 215
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 223
    :cond_0
    add-int/lit8 v12, v6, 0x0

    aput v10, v9, v12

    .line 224
    add-int/lit8 v12, v6, 0x1

    aput v4, v9, v12

    .line 225
    add-int/lit8 v12, v6, 0x2

    aput v2, v9, v12

    .line 226
    add-int/lit8 v12, v6, 0x3

    aput v0, v9, v12

    goto :goto_1

    .line 229
    :cond_1
    return-object v9
.end method

.method public static circleShadowCoord(IFFFFF)[F
    .locals 14
    .param p0, "cornerSegmentCount"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r1"    # F
    .param p4, "depth"    # F
    .param p5, "startAngle"    # F

    .prologue
    .line 118
    add-int/lit8 v9, p0, 0x1

    mul-int/lit8 v6, v9, 0x2

    .line 119
    .local v6, "pointCount":I
    mul-int/lit8 v9, v6, 0x3

    new-array v7, v9, [F

    .line 120
    .local v7, "res":[F
    move/from16 v1, p5

    .line 121
    .local v1, "a0":F
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v12, p0

    div-double/2addr v10, v12

    double-to-float v3, v10

    .line 122
    .local v3, "da":F
    move v0, v1

    .line 124
    .local v0, "a":F
    const/4 v5, 0x0

    .local v5, "p":I
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_0
    div-int/lit8 v9, v6, 0x2

    if-ge v5, v9, :cond_0

    .line 125
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 126
    .local v2, "cosA":F
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    .line 127
    .local v8, "sinA":F
    add-int/lit8 v9, v4, 0x0

    add-float v10, p3, p4

    mul-float/2addr v10, v2

    add-float/2addr v10, p1

    aput v10, v7, v9

    .line 128
    add-int/lit8 v9, v4, 0x1

    add-float v10, p3, p4

    mul-float/2addr v10, v8

    add-float v10, v10, p2

    aput v10, v7, v9

    .line 129
    add-int/lit8 v9, v4, 0x2

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 131
    add-int/lit8 v9, v4, 0x3

    mul-float v10, p3, v2

    add-float/2addr v10, p1

    aput v10, v7, v9

    .line 132
    add-int/lit8 v9, v4, 0x4

    mul-float v10, p3, v8

    add-float v10, v10, p2

    aput v10, v7, v9

    .line 133
    add-int/lit8 v9, v4, 0x5

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 134
    sub-float/2addr v0, v3

    .line 124
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    .line 136
    .end local v2    # "cosA":F
    .end local v8    # "sinA":F
    :cond_0
    return-object v7
.end method

.method private static copyColor([F[FI)V
    .locals 3
    .param p0, "res"    # [F
    .param p1, "c"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 196
    add-int v1, p2, v0

    aget v2, p1, v0

    aput v2, p0, v1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public static getColoredCircleShadowColors(I[I[F)[F
    .locals 17
    .param p0, "cornerSegmentCount"    # I
    .param p1, "colors"    # [I
    .param p2, "positions"    # [F

    .prologue
    .line 141
    rem-int/lit8 v12, p0, 0x3

    if-eqz v12, :cond_0

    .line 142
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "cornerSegmentCount should be divisible to 3!"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 144
    :cond_0
    add-int/lit8 v12, p0, 0x1

    mul-int/lit8 v10, v12, 0x2

    .line 145
    .local v10, "pointCount":I
    mul-int/lit8 v12, v10, 0x4

    new-array v11, v12, [F

    .line 146
    .local v11, "res":[F
    const/high16 v12, 0x3f800000    # 1.0f

    add-int/lit8 v13, p0, 0x1

    int-to-float v13, v13

    div-float v4, v12, v13

    .line 147
    .local v4, "dAngle":F
    const/4 v1, 0x0

    .line 148
    .local v1, "angle":F
    const/4 v7, 0x0

    .line 149
    .local v7, "index":I
    const/4 v12, 0x4

    new-array v2, v12, [F

    .line 150
    .local v2, "c":[F
    move-object/from16 v0, p1

    array-length v12, v0

    mul-int/lit8 v12, v12, 0x4

    new-array v5, v12, [F

    .line 151
    .local v5, "fColors":[F
    const/4 v6, 0x0

    .line 152
    .local v6, "i":I
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_1

    aget v3, p1, v12

    .line 153
    .local v3, "cl":I
    add-int/lit8 v14, v6, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    aput v15, v5, v14

    .line 154
    add-int/lit8 v14, v6, 0x1

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    aput v15, v5, v14

    .line 155
    add-int/lit8 v14, v6, 0x2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    aput v15, v5, v14

    .line 156
    add-int/lit8 v14, v6, 0x3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    aput v15, v5, v14

    .line 157
    add-int/lit8 v6, v6, 0x4

    .line 152
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "cl":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "p":I
    const/4 v8, 0x0

    .local v8, "offset":I
    :goto_1
    if-ge v9, v10, :cond_3

    .line 160
    rem-int/lit8 v12, v9, 0x2

    if-nez v12, :cond_2

    .line 161
    move-object/from16 v0, p2

    invoke-static {v5, v0, v1, v7, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->updateColor([F[FFI[F)I

    move-result v7

    .line 162
    invoke-static {v11, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->copyColor([F[FI)V

    .line 163
    add-float/2addr v1, v4

    .line 159
    :goto_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {v11, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->copyColor([F[FI)V

    goto :goto_2

    .line 168
    :cond_3
    return-object v11
.end method

.method private static getShadowMeshLength(II)I
    .locals 5
    .param p0, "cornerSegmentCount"    # I
    .param p1, "floatsPerPoint"    # I

    .prologue
    .line 296
    const/4 v2, 0x4

    .line 297
    .local v2, "rectCount":I
    const/16 v0, 0x8

    .line 298
    .local v0, "pointsPerRect":I
    add-int/lit8 v3, p0, 0x1

    mul-int/lit8 v1, v3, 0x2

    .line 300
    .local v1, "pointsPerSector":I
    mul-int/lit8 v3, p1, 0x20

    mul-int/lit8 v4, v1, 0x4

    mul-int/2addr v4, p1

    add-int/2addr v3, v4

    return v3
.end method

.method private static putArray([F[FI)I
    .locals 2
    .param p0, "src"    # [F
    .param p1, "dst"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length v0, p0

    add-int/2addr p2, v0

    .line 292
    return p2
.end method

.method public static roundShadowColors(III)[F
    .locals 17
    .param p0, "roundTriangles"    # I
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I

    .prologue
    .line 308
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v13, v15, v16

    .line 309
    .local v13, "ri":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v6, v15, v16

    .line 310
    .local v6, "gi":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v3, v15, v16

    .line 311
    .local v3, "bi":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v1, v15, v16

    .line 313
    .local v1, "ai":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v14, v15, v16

    .line 314
    .local v14, "ro":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v7, v15, v16

    .line 315
    .local v7, "go":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v4, v15, v16

    .line 316
    .local v4, "bo":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v2, v15, v16

    .line 319
    .local v2, "ao":F
    const/4 v15, 0x4

    move/from16 v0, p0

    invoke-static {v0, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getShadowMeshLength(II)I

    move-result v12

    .line 321
    .local v12, "resLength":I
    new-array v11, v12, [F

    .line 323
    .local v11, "res":[F
    const/16 v15, 0x20

    new-array v10, v15, [F

    const/4 v15, 0x0

    aput v14, v10, v15

    const/4 v15, 0x1

    aput v7, v10, v15

    const/4 v15, 0x2

    aput v4, v10, v15

    const/4 v15, 0x3

    aput v2, v10, v15

    const/4 v15, 0x4

    aput v14, v10, v15

    const/4 v15, 0x5

    aput v7, v10, v15

    const/4 v15, 0x6

    aput v4, v10, v15

    const/4 v15, 0x7

    aput v2, v10, v15

    const/16 v15, 0x8

    aput v13, v10, v15

    const/16 v15, 0x9

    aput v6, v10, v15

    const/16 v15, 0xa

    aput v3, v10, v15

    const/16 v15, 0xb

    aput v1, v10, v15

    const/16 v15, 0xc

    aput v13, v10, v15

    const/16 v15, 0xd

    aput v6, v10, v15

    const/16 v15, 0xe

    aput v3, v10, v15

    const/16 v15, 0xf

    aput v1, v10, v15

    const/16 v15, 0x10

    aput v13, v10, v15

    const/16 v15, 0x11

    aput v6, v10, v15

    const/16 v15, 0x12

    aput v3, v10, v15

    const/16 v15, 0x13

    aput v1, v10, v15

    const/16 v15, 0x14

    aput v14, v10, v15

    const/16 v15, 0x15

    aput v7, v10, v15

    const/16 v15, 0x16

    aput v4, v10, v15

    const/16 v15, 0x17

    aput v2, v10, v15

    const/16 v15, 0x18

    aput v13, v10, v15

    const/16 v15, 0x19

    aput v6, v10, v15

    const/16 v15, 0x1a

    aput v3, v10, v15

    const/16 v15, 0x1b

    aput v1, v10, v15

    const/16 v15, 0x1c

    aput v14, v10, v15

    const/16 v15, 0x1d

    aput v7, v10, v15

    const/16 v15, 0x1e

    aput v4, v10, v15

    const/16 v15, 0x1f

    aput v2, v10, v15

    .line 327
    .local v10, "rectangleColors":[F
    const/4 v9, 0x0

    .line 329
    .local v9, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v15, 0x4

    if-ge v8, v15, :cond_0

    .line 330
    invoke-static {v10, v11, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v9

    .line 332
    invoke-static/range {p0 .. p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleColors(III)[F

    move-result-object v5

    .line 333
    .local v5, "circleColors":[F
    invoke-static {v5, v11, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v9

    .line 329
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 336
    .end local v5    # "circleColors":[F
    :cond_0
    return-object v11
.end method

.method public static roundShadowCoords(FFFFFFFFI)[F
    .locals 16
    .param p0, "radiusBottom"    # F
    .param p1, "cornerRadiusBottom"    # F
    .param p2, "radiusRight"    # F
    .param p3, "cornerRadiusRight"    # F
    .param p4, "radiusTop"    # F
    .param p5, "cornerRadiusTop"    # F
    .param p6, "radiusLeft"    # F
    .param p7, "cornerRadiusLeft"    # F
    .param p8, "cornerSegmentCount"    # I

    .prologue
    .line 240
    const/4 v1, 0x3

    move/from16 v0, p8

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getShadowMeshLength(II)I

    move-result v13

    .line 242
    .local v13, "resLength":I
    const/16 v1, 0x18

    new-array v8, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    const/4 v1, 0x1

    move/from16 v0, p1

    neg-float v2, v0

    aput v2, v8, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v8, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v8, v1

    const/4 v1, 0x4

    move/from16 v0, p0

    neg-float v2, v0

    aput v2, v8, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v8, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v8, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0x9

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v8, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0xc

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v8, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v8, v1

    const/16 v1, 0x10

    move/from16 v0, p0

    neg-float v2, v0

    aput v2, v8, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v8, v1

    const/16 v1, 0x13

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput v2, v8, v1

    const/16 v1, 0x15

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v8, v1

    const/16 v1, 0x16

    move/from16 v0, p1

    neg-float v2, v0

    aput v2, v8, v1

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 246
    .local v8, "bottomRectangle":[F
    const/16 v1, 0x18

    new-array v14, v1, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p3

    aput v2, v14, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v14, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v14, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p2

    aput v2, v14, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v14, v1

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0x9

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/16 v1, 0xa

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0xc

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/16 v1, 0xd

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p2

    aput v2, v14, v1

    const/16 v1, 0x10

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput v2, v14, v1

    const/16 v1, 0x15

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p3

    aput v2, v14, v1

    const/16 v1, 0x16

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v14, v1

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v2, v14, v1

    .line 251
    .local v14, "rightRectangle":[F
    const/16 v1, 0x18

    new-array v15, v1, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p5

    aput v2, v15, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v15, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v15, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p4

    aput v2, v15, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v15, v1

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0x9

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v15, v1

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0xc

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v15, v1

    const/16 v1, 0xd

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v15, v1

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p4

    aput v2, v15, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v15, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput v2, v15, v1

    const/16 v1, 0x16

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v2, v2, p5

    aput v2, v15, v1

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 255
    .local v15, "topRectangle":[F
    const/16 v1, 0x18

    new-array v10, v1, [F

    const/4 v1, 0x0

    move/from16 v0, p7

    neg-float v2, v0

    aput v2, v10, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v10, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v10, v1

    const/4 v1, 0x3

    move/from16 v0, p6

    neg-float v2, v0

    aput v2, v10, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v10, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v10, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v10, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v10, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0xa

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v10, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0xd

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v10, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0xf

    move/from16 v0, p6

    neg-float v2, v0

    aput v2, v10, v1

    const/16 v1, 0x10

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v10, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x13

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x15

    move/from16 v0, p7

    neg-float v2, v0

    aput v2, v10, v1

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput v2, v10, v1

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v2, v10, v1

    .line 259
    .local v10, "leftRectangle":[F
    new-array v12, v13, [F

    .line 260
    .local v12, "res":[F
    const/4 v11, 0x0

    .line 261
    .local v11, "offset":I
    invoke-static {v8, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 263
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v5, -0x4036f025

    const/4 v6, 0x0

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v7, p8

    .line 264
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v9

    .line 266
    .local v9, "circle":[F
    invoke-static {v9, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 268
    invoke-static {v14, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 270
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3fc90fdb

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v9

    .line 272
    invoke-static {v9, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 274
    invoke-static {v15, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 276
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3fc90fdb

    const v6, 0x40490fdb    # (float)Math.PI

    move/from16 v3, p7

    move/from16 v4, p5

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v9

    .line 278
    invoke-static {v9, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 280
    invoke-static {v10, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 282
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x40490fdb    # (float)Math.PI

    const v6, 0x4096cbe4

    move/from16 v3, p7

    move/from16 v4, p1

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v9

    .line 284
    invoke-static {v9, v12, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v11

    .line 286
    return-object v12
.end method

.method public static shadeColors(II)[F
    .locals 11
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    div-float v6, v9, v10

    .line 50
    .local v6, "r1":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 51
    .local v4, "g1":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    div-float v2, v9, v10

    .line 52
    .local v2, "b1":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    div-float v0, v9, v10

    .line 54
    .local v0, "a1":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    div-float v7, v9, v10

    .line 55
    .local v7, "r2":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float v5, v9, v10

    .line 56
    .local v5, "g2":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    div-float v3, v9, v10

    .line 57
    .local v3, "b2":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    div-float v1, v9, v10

    .line 59
    .local v1, "a2":F
    const/16 v9, 0x18

    new-array v8, v9, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v9, 0x2

    aput v3, v8, v9

    const/4 v9, 0x3

    aput v1, v8, v9

    const/4 v9, 0x4

    aput v6, v8, v9

    const/4 v9, 0x5

    aput v4, v8, v9

    const/4 v9, 0x6

    aput v2, v8, v9

    const/4 v9, 0x7

    aput v0, v8, v9

    const/16 v9, 0x8

    aput v7, v8, v9

    const/16 v9, 0x9

    aput v5, v8, v9

    const/16 v9, 0xa

    aput v3, v8, v9

    const/16 v9, 0xb

    aput v1, v8, v9

    const/16 v9, 0xc

    aput v6, v8, v9

    const/16 v9, 0xd

    aput v4, v8, v9

    const/16 v9, 0xe

    aput v2, v8, v9

    const/16 v9, 0xf

    aput v0, v8, v9

    const/16 v9, 0x10

    aput v7, v8, v9

    const/16 v9, 0x11

    aput v5, v8, v9

    const/16 v9, 0x12

    aput v3, v8, v9

    const/16 v9, 0x13

    aput v1, v8, v9

    const/16 v9, 0x14

    aput v6, v8, v9

    const/16 v9, 0x15

    aput v4, v8, v9

    const/16 v9, 0x16

    aput v2, v8, v9

    const/16 v9, 0x17

    aput v0, v8, v9

    .line 62
    .local v8, "res":[F
    return-object v8
.end method

.method public static shadeCoords(F)[F
    .locals 6
    .param p0, "depth"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 36
    move v0, p0

    .line 37
    .local v0, "d":F
    const/16 v2, 0x12

    new-array v1, v2, [F

    const/4 v2, 0x0

    sub-float v3, v5, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    sub-float v3, v4, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    sub-float v3, v4, v0

    aput v3, v1, v2

    const/4 v2, 0x7

    sub-float v3, v4, v0

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput v4, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    sub-float v3, v4, v0

    aput v3, v1, v2

    const/16 v2, 0xd

    sub-float v3, v5, v0

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v4, v1, v2

    const/16 v2, 0xf

    aput v4, v1, v2

    const/16 v2, 0x10

    aput v5, v1, v2

    const/16 v2, 0x11

    aput v4, v1, v2

    .line 45
    .local v1, "res":[F
    return-object v1
.end method

.method private static updateColor([F[FFI[F)I
    .locals 10
    .param p0, "colors"    # [F
    .param p1, "positions"    # [F
    .param p2, "angle"    # F
    .param p3, "index"    # I
    .param p4, "c"    # [F

    .prologue
    .line 173
    add-int/lit8 v7, p3, 0x1

    array-length v8, p1

    rem-int v6, v7, v8

    .line 174
    .local v6, "nextIndex":I
    :cond_0
    aget v7, p1, v6

    cmpg-float v7, v7, p2

    if-gez v7, :cond_1

    .line 175
    add-int/lit8 v6, v6, 0x1

    .line 176
    array-length v7, p1

    if-ne v6, v7, :cond_0

    .line 177
    const/4 v6, 0x0

    .line 181
    :cond_1
    add-int/lit8 p3, v6, -0x1

    .line 182
    mul-int/lit8 v1, p3, 0x4

    .line 183
    .local v1, "c0index":I
    mul-int/lit8 v3, v6, 0x4

    .line 184
    .local v3, "c1index":I
    aget v7, p1, p3

    sub-float v7, p2, v7

    aget v8, p1, v6

    aget v9, p1, p3

    sub-float/2addr v8, v9

    div-float v5, v7, v8

    .line 185
    .local v5, "l":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v7, 0x4

    if-ge v4, v7, :cond_2

    .line 186
    add-int v7, v4, v1

    aget v0, p0, v7

    .line 187
    .local v0, "c0":F
    add-int v7, v4, v3

    aget v2, p0, v7

    .line 188
    .local v2, "c1":F
    sub-float v7, v2, v0

    mul-float/2addr v7, v5

    add-float/2addr v7, v0

    aput v7, p4, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "c0":F
    .end local v2    # "c1":F
    :cond_2
    return p3
.end method
