.class public Lcom/samsung/android/app/music/common/util/color/ExtractColor;
.super Ljava/lang/Object;
.source "ExtractColor.java"


# static fields
.field private static final DEBUG:Z = true

.field private static DEFAULT_COLOR:I

.field private static LIMITED_COLOR:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x6e

    .line 14
    const-class v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->DEFAULT_COLOR:I

    .line 22
    const/16 v0, 0xff

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->LIMITED_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAverageColor(Landroid/graphics/Bitmap;FF)I
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "startCoordinate"    # F
    .param p2, "endCroordinate"    # F

    .prologue
    .line 62
    const-wide/16 v34, 0x0

    .line 63
    .local v34, "sumR":J
    const-wide/16 v32, 0x0

    .line 64
    .local v32, "sumG":J
    const-wide/16 v30, 0x0

    .line 65
    .local v30, "sumB":J
    const-wide/16 v26, 0x0

    .line 67
    .local v26, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 68
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 69
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 75
    .local v20, "lowestB":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .line 76
    .local v36, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 79
    .local v19, "h":I
    move/from16 v0, v36

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v29, v0

    .line 80
    .local v29, "step":I
    :goto_0
    if-gtz v29, :cond_0

    .line 81
    const/16 v29, 0x1

    .line 84
    :cond_0
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, p1

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v28, v0

    .line 85
    .local v28, "start":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, p2

    move/from16 v0, v39

    float-to-int v14, v0

    .line 86
    .local v14, "end":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_9

    .line 87
    move/from16 v38, v28

    .local v38, "y":I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v14, :cond_8

    .line 88
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 89
    .local v7, "color":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v12, v0

    .line 90
    .local v12, "curR":J
    add-long v34, v34, v12

    .line 91
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v10, v0

    .line 92
    .local v10, "curG":J
    add-long v32, v32, v10

    .line 93
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v8, v0

    .line 94
    .local v8, "curB":J
    add-long v30, v30, v8

    .line 95
    const-wide/16 v40, 0x1

    add-long v26, v26, v40

    .line 97
    cmp-long v39, v24, v12

    if-gtz v39, :cond_1

    const-wide/16 v40, 0x0

    cmp-long v39, v24, v40

    if-nez v39, :cond_2

    .line 98
    :cond_1
    move-wide/from16 v24, v12

    .line 100
    :cond_2
    cmp-long v39, v22, v10

    if-gtz v39, :cond_3

    const-wide/16 v40, 0x0

    cmp-long v39, v22, v40

    if-nez v39, :cond_4

    .line 101
    :cond_3
    move-wide/from16 v22, v10

    .line 103
    :cond_4
    cmp-long v39, v20, v8

    if-gtz v39, :cond_5

    const-wide/16 v40, 0x0

    cmp-long v39, v20, v40

    if-nez v39, :cond_6

    .line 104
    :cond_5
    move-wide/from16 v20, v8

    .line 87
    :cond_6
    add-int v38, v38, v29

    goto :goto_2

    .line 79
    .end local v7    # "color":I
    .end local v8    # "curB":J
    .end local v10    # "curG":J
    .end local v12    # "curR":J
    .end local v14    # "end":I
    .end local v28    # "start":I
    .end local v29    # "step":I
    .end local v37    # "x":I
    .end local v38    # "y":I
    :cond_7
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v29, v0

    goto/16 :goto_0

    .line 86
    .restart local v14    # "end":I
    .restart local v28    # "start":I
    .restart local v29    # "step":I
    .restart local v37    # "x":I
    .restart local v38    # "y":I
    :cond_8
    add-int v37, v37, v29

    goto :goto_1

    .line 113
    .end local v38    # "y":I
    :cond_9
    div-long v40, v34, v26

    move-wide/from16 v0, v40

    long-to-int v6, v0

    .line 114
    .local v6, "averageR":I
    div-long v40, v32, v26

    move-wide/from16 v0, v40

    long-to-int v5, v0

    .line 115
    .local v5, "averageG":I
    div-long v40, v30, v26

    move-wide/from16 v0, v40

    long-to-int v4, v0

    .line 117
    .local v4, "averageB":I
    int-to-long v0, v6

    move-wide/from16 v40, v0

    cmp-long v39, v40, v24

    if-lez v39, :cond_a

    .line 118
    int-to-long v0, v6

    move-wide/from16 v40, v0

    sub-long v40, v40, v24

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v18, v0

    .line 119
    .local v18, "gap":I
    div-int/lit8 v39, v18, 0x2

    sub-int v17, v6, v39

    .line 123
    .end local v18    # "gap":I
    .local v17, "finalR":I
    :goto_3
    int-to-long v0, v5

    move-wide/from16 v40, v0

    cmp-long v39, v40, v22

    if-lez v39, :cond_b

    .line 124
    int-to-long v0, v5

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v18, v0

    .line 125
    .restart local v18    # "gap":I
    div-int/lit8 v39, v18, 0x2

    sub-int v16, v5, v39

    .line 129
    .end local v18    # "gap":I
    .local v16, "finalG":I
    :goto_4
    int-to-long v0, v4

    move-wide/from16 v40, v0

    cmp-long v39, v40, v20

    if-lez v39, :cond_c

    .line 130
    int-to-long v0, v4

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v18, v0

    .line 131
    .restart local v18    # "gap":I
    div-int/lit8 v39, v18, 0x2

    sub-int v15, v4, v39

    .line 136
    .end local v18    # "gap":I
    .local v15, "finalB":I
    :goto_5
    const/16 v39, 0xff

    move/from16 v0, v39

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v39

    return v39

    .line 121
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    :cond_a
    move/from16 v17, v6

    .restart local v17    # "finalR":I
    goto :goto_3

    .line 127
    :cond_b
    move/from16 v16, v5

    .restart local v16    # "finalG":I
    goto :goto_4

    .line 133
    :cond_c
    move v15, v4

    .restart local v15    # "finalB":I
    goto :goto_5
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;FF)I
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "startCoordinate"    # F
    .param p2, "endCroordinate"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->getAverageColor(Landroid/graphics/Bitmap;FF)I

    move-result v1

    .line 35
    .local v1, "resultColor":I
    sget v2, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->LIMITED_COLOR:I

    if-le v1, v2, :cond_2

    .line 38
    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    .line 39
    sget v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->DEFAULT_COLOR:I

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->getAverageColor(Landroid/graphics/Bitmap;FF)I

    move-result v0

    .line 43
    .local v0, "adjustedColor":I
    sget-object v2, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDominantColor() - [resultColor > LIMITED_COLOR] bitmap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultColor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adjustedColor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v2, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->LIMITED_COLOR:I

    if-le v0, v2, :cond_0

    .line 47
    sget v0, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->DEFAULT_COLOR:I

    goto :goto_0

    .line 52
    .end local v0    # "adjustedColor":I
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/common/util/color/ExtractColor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDominantColor() - bitmap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultColor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 55
    goto :goto_0
.end method
