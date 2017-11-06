.class public Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;
.super Ljava/lang/Object;
.source "FastScrollPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$1;,
        Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;
    }
.end annotation


# instance fields
.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private ratio:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    const/16 v1, 0x9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->pathTotal:I

    .line 10
    const v0, -0x3c120687

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->offsetX:F

    .line 11
    const v0, -0x3c2c172b    # -423.819f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->offsetY:F

    .line 13
    const v0, 0x3fb47ae1    # 1.41f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->ratio:F

    .line 16
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    .line 23
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->ratio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->ratio:F

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->setPath()V

    .line 25
    return-void
.end method

.method private setPath()V
    .locals 15

    .prologue
    const v14, -0x44fced91    # -0.002f

    const v13, 0x4418d46a

    const v12, -0x3cc48000    # -187.5f

    const v11, 0x43edf979

    const/4 v3, 0x0

    .line 29
    const/4 v9, -0x1

    .line 30
    .local v9, "count":I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    .local v10, "mtrx":Landroid/graphics/Matrix;
    const v0, -0x3c120687

    const v2, -0x3c2c172b    # -423.819f

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->ratio:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->ratio:F

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 35
    add-int/lit8 v9, v9, 0x1

    .line 36
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 37
    .local v1, "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x440ba396

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 38
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d357ae1    # -101.26f

    const v5, -0x3f61a1cb    # -4.949f

    const v6, -0x3d503021

    const v7, -0x3f61a1cb    # -4.949f

    const v8, -0x3cf94396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 39
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3dd76d91

    const v5, 0x409e5e35    # 4.949f

    const v6, -0x3e474fdf    # -23.086f

    const v7, 0x409e5e35    # 4.949f

    const v8, -0x3cf94312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 40
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x440ba396

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 41
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 42
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 46
    add-int/lit8 v9, v9, 0x1

    .line 47
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 48
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4411f46a

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 49
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d0f7b64

    const v5, -0x3ec0d0e5    # -11.949f

    const v6, -0x3d29a5e3

    const v7, -0x3ec0d0e5    # -11.949f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 50
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3da56f9e

    const v5, 0x413f2f1b    # 11.949f

    const v6, -0x3dfbe45a    # -33.027f

    const v7, 0x413f2f1b    # 11.949f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 51
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4411f46a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 52
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 53
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 57
    add-int/lit8 v9, v9, 0x1

    .line 58
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 59
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4413346a

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 60
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d14c831

    const v5, -0x3e646873    # -19.449f

    const v6, -0x3d2eb7cf

    const v7, -0x3e646873    # -19.449f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 61
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d86d604    # -62.291f

    const v5, 0x419b978d    # 19.449f

    const v6, -0x3ddd49ba

    const v7, 0x419b978d    # 19.449f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 62
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4413346a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 63
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 64
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 68
    add-int/lit8 v9, v9, 0x1

    .line 69
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 70
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4415146a

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 71
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d1c2b02    # -113.916f

    const v5, -0x3e1c6873    # -28.449f

    const v6, -0x3d323333    # -102.9f

    const v7, -0x3e1c6873    # -28.449f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 72
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d7153f8

    const v5, 0x41e3978d    # 28.449f

    const v6, -0x3da1eb85    # -55.52f

    const v7, 0x41e3978d    # 28.449f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 73
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4415146a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 74
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 75
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 79
    add-int/lit8 v9, v9, 0x1

    .line 80
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 81
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v11, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 82
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3cfa0396

    const v5, -0x3de6df3b

    const v6, -0x3d204ccd    # -111.85f

    const v7, -0x3de6df3b

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 83
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d64ec08

    const v5, 0x421920c5

    const v6, -0x3daaed91

    const v7, 0x421920c5

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 84
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 85
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 86
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 92
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v11, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 93
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3cfa0396

    const v5, -0x3dbc3439

    const v6, -0x3d204ccd    # -111.85f

    const v7, -0x3dbc3439

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 94
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d64ec08

    const v5, 0x4243cbc7

    const v6, -0x3daaed91

    const v7, 0x4243cbc7

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 95
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 96
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 97
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 102
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 103
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v11, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 104
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d055c29    # -125.32f

    const v5, -0x3d923439

    const v6, -0x3d204ccd    # -111.85f

    const v7, -0x3d923439

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 105
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d64ec08

    const v5, 0x426dcbc7

    const v6, -0x3d836354    # -63.153f

    const v7, 0x426dcbc7

    move-object v0, p0

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 106
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0, v13}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 107
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 108
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 112
    add-int/lit8 v9, v9, 0x1

    .line 113
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 114
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x441e7a6f

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 115
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3cf08189

    const v5, -0x3d741a1d

    const v6, -0x3d05451f

    const v7, -0x3d741a1d

    const v8, -0x3cade76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 116
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d5436c9

    const v5, 0x428be5e3

    const v6, -0x3d836560    # -63.151f

    const v7, 0x428be5e3

    const/high16 v8, -0x3cae0000    # -210.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 117
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x441e7a6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 118
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 119
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 123
    add-int/lit8 v9, v9, 0x1

    .line 124
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 125
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x44026f6d

    invoke-direct {p0, v1, v0, v11, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V

    .line 126
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x43132000    # 147.125f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 127
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3cd1cd0e

    const v5, -0x3d59224e

    const v6, -0x3ce0a49c

    const v7, -0x3d591a1d

    const v8, -0x3c8af78d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 128
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x447ced91    # -0.004f

    const v6, -0x43dc28f6    # -0.01f

    const v8, -0x439a9fbe    # -0.014f

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 129
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    move v4, v14

    move v5, v3

    move v6, v14

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 130
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v6, -0x447ced91    # -0.004f

    move-object v0, p0

    move v4, v14

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFF)V

    .line 131
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v4, -0x3d5164dd

    const v5, 0x42a6e5e3

    const v6, -0x3d80c083    # -63.812f

    const v7, 0x42a6e5e3

    const v8, -0x3c8b0dd3    # -244.946f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 132
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x4313076d

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 133
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    const v2, 0x44026f6d

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V

    .line 134
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V

    .line 135
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 137
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    .prologue
    const/4 v3, 0x0

    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 150
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;F)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;
    .param p3, "value"    # F

    .prologue
    .line 153
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$FastScrollPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v5, 0x0

    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 171
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F

    .prologue
    const/4 v7, 0x0

    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V

    .line 175
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;FFFFFF)V
    .locals 11
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, "wasCurve":Z
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$FastScrollPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    if-nez v7, :cond_0

    .line 292
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX1:F

    .line 293
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY1:F

    .line 295
    :cond_0
    return-void

    .line 183
    :pswitch_0
    move v8, p3

    .line 184
    .local v8, "x":F
    move v9, p4

    .line 185
    .local v9, "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->m:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_1

    .line 186
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 187
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 188
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 192
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 198
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX1:F

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY1:F

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 207
    :pswitch_2
    move v8, p3

    .line 208
    .restart local v8    # "x":F
    move v9, p4

    .line 209
    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_2

    .line 210
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 211
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 212
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 216
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 222
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    move v8, p3

    .line 223
    .restart local v8    # "x":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->h:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_3

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 225
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    goto :goto_0

    .line 227
    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    goto :goto_0

    .line 234
    .end local v8    # "x":F
    :pswitch_4
    move v9, p4

    .line 235
    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_4

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 237
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 239
    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto :goto_0

    .line 246
    .end local v9    # "y":F
    :pswitch_5
    const/4 v7, 0x1

    .line 247
    move v1, p3

    .line 248
    .local v1, "tx1":F
    move v2, p4

    .line 249
    .local v2, "ty1":F
    move/from16 v3, p5

    .line 250
    .local v3, "tx2":F
    move/from16 v4, p6

    .line 251
    .local v4, "ty2":F
    move/from16 v5, p7

    .line 252
    .local v5, "tx":F
    move/from16 v6, p8

    .line 253
    .local v6, "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_5

    .line 254
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v1, v0

    .line 255
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v3, v0

    .line 256
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v5, v0

    .line 257
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v2, v0

    .line 258
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v4, v0

    .line 259
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    .line 261
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 262
    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX1:F

    .line 263
    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY1:F

    .line 264
    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 265
    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto/16 :goto_0

    .line 270
    .end local v1    # "tx1":F
    .end local v2    # "ty1":F
    .end local v3    # "tx2":F
    .end local v4    # "ty2":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :pswitch_6
    const/4 v7, 0x1

    .line 271
    move v3, p3

    .line 272
    .restart local v3    # "tx2":F
    move v4, p4

    .line 273
    .restart local v4    # "ty2":F
    move/from16 v5, p5

    .line 274
    .restart local v5    # "tx":F
    move/from16 v6, p6

    .line 275
    .restart local v6    # "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath$SVGCommand;

    if-ne p2, v0, :cond_6

    .line 276
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v3, v0

    .line 277
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    add-float/2addr v5, v0

    .line 278
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v4, v0

    .line 279
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    add-float/2addr v6, v0

    .line 281
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX1:F

    sub-float v1, v0, v10

    .line 282
    .restart local v1    # "tx1":F
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY1:F

    sub-float v2, v0, v10

    .restart local v2    # "ty1":F
    move-object v0, p1

    .line 283
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 284
    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX1:F

    .line 285
    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY1:F

    .line 286
    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastX:F

    .line 287
    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->lastY:F

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getPath(I)Landroid/graphics/Path;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    .line 141
    .local v0, "tPath":Landroid/graphics/Path;
    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x9

    return v0
.end method
