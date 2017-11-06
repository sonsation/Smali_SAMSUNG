.class public Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;
.super Ljava/lang/Object;
.source "IndexScrollPath15Frames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$1;,
        Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;
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
    const/16 v1, 0xf

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->pathTotal:I

    .line 10
    const v0, -0x3c120687

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->offsetX:F

    .line 11
    const v0, -0x3c2c172b    # -423.819f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->offsetY:F

    .line 13
    const v0, 0x3fb47ae1    # 1.41f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    .line 16
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    .line 23
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->setPath()V

    .line 25
    return-void
.end method

.method private setPath()V
    .locals 11

    .prologue
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
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 34
    add-int/lit8 v9, v9, 0x1

    .line 35
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    .local v1, "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x440ba396

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 37
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d358000    # -101.25f

    const v5, -0x3ec91aa0    # -11.431f

    const v6, -0x3d5024dd

    const v7, -0x3ec91aa0    # -11.431f

    const v8, -0x3cf94396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 38
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3dd76d91

    const v5, 0x4136e560    # 11.431f

    const v6, -0x3e474fdf    # -23.086f

    const v7, 0x4136e560    # 11.431f

    const v8, -0x3cf94312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 39
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x440ba396

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 40
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 41
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 44
    add-int/lit8 v9, v9, 0x1

    .line 45
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 46
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x4411f46a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 47
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d0f8831

    const v5, -0x3e548d50    # -21.431f

    const v6, -0x3d298937

    const v7, -0x3e548d50    # -21.431f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 48
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3da56f9e

    const v5, 0x41ab72b0    # 21.431f

    const v6, -0x3dfbe45a    # -33.027f

    const v7, 0x41ab72b0    # 21.431f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 49
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4411f46a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 50
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 51
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 54
    add-int/lit8 v9, v9, 0x1

    .line 55
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 56
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x4413346a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 57
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d14c831

    const v5, -0x3e048d50    # -31.431f

    const v6, -0x3d2eb7cf

    const v7, -0x3e048d50    # -31.431f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 58
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d86d604    # -62.291f

    const v5, 0x41fb72b0    # 31.431f

    const v6, -0x3ddd49ba

    const v7, 0x41fb72b0    # 31.431f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 59
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4413346a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 60
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 61
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 64
    add-int/lit8 v9, v9, 0x1

    .line 65
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 66
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x4415146a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 67
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d1c2b02    # -113.916f

    const v5, -0x3dda46a8    # -41.431f

    const v6, -0x3d323333    # -102.9f

    const v7, -0x3dda46a8    # -41.431f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 68
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d7153f8

    const v5, 0x4225b958    # 41.431f

    const v6, -0x3da1eb85    # -55.52f

    const v7, 0x4225b958    # 41.431f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 69
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4415146a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 70
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 71
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 76
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x4418d46a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 77
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d085c29    # -123.82f

    const v5, -0x3d8a46a8    # -61.431f

    const v6, -0x3d204ccd    # -111.85f

    const v7, -0x3d8a46a8    # -61.431f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 78
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d64ec08

    const v5, 0x4275b958    # 61.431f

    const v6, -0x3d8e9ba6    # -60.348f

    const v7, 0x4275b958    # 61.431f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 79
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4418d46a

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 80
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 81
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 84
    add-int/lit8 v9, v9, 0x1

    .line 85
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 86
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x441e7a6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 87
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3cf8c312

    const v5, -0x3d5d2354    # -81.431f

    const v6, -0x3d05451f

    const v7, -0x3d5d2354    # -81.431f

    const v8, -0x3cade76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 88
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d5436c9

    const v5, 0x42a2dcac    # 81.431f

    const v6, -0x3d790419

    const v7, 0x42a2dcac    # 81.431f

    const/high16 v8, -0x3cae0000    # -210.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 89
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x441e7a6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 90
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 91
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 94
    add-int/lit8 v9, v9, 0x1

    .line 95
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 96
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x44026f6d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 97
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43132000    # 147.125f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 98
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ce245e3

    const v5, -0x3d4b2c08

    const v6, -0x3ce0a49c

    const v7, -0x3d4b2354    # -90.431f

    const v8, -0x3c8af78d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 99
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x447ced91    # -0.004f

    const/4 v5, 0x0

    const v6, -0x43dc28f6    # -0.01f

    const/4 v7, 0x0

    const v8, -0x439a9fbe    # -0.014f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 100
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x44fced91    # -0.002f

    const/4 v5, 0x0

    const v6, -0x44fced91    # -0.002f

    const/4 v7, 0x0

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 101
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x44fced91    # -0.002f

    const/4 v5, 0x0

    const v6, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFF)V

    .line 102
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d5164dd

    const v5, 0x42b4dcac    # 90.431f

    const v6, -0x3d628bc7

    const v7, 0x42b4dcac    # 90.431f

    const v8, -0x3c8b0dd3    # -244.946f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 103
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4313076d

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 104
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x44026f6d

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 105
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 106
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 111
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x440252f2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 112
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x431391ec    # 147.57f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 113
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d2eeb02    # -104.541f

    const v5, -0x3dbdfcee

    const v6, -0x3cf62083

    const v7, -0x3d5d8f5c    # -81.22f

    const v8, -0x3cd0d78d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 114
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3edb645a    # -10.288f

    const v4, -0x3edd6873    # -10.162f

    const v5, -0x3e6d3d71    # -18.345f

    const v6, -0x3e4b645a    # -22.576f

    const v7, -0x3e45126f    # -23.366f

    const v8, -0x3dee3852    # -36.445f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 115
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3f93b646    # -3.692f

    const v4, -0x3ee420c5    # -9.742f

    const v5, -0x3f451eb8    # -5.84f

    const v6, -0x3e5ad0e5    # -20.648f

    const v7, -0x3f44fdf4    # -5.844f

    const v8, -0x3dfa4fdf    # -33.422f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 116
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x43fced91    # -0.008f

    const v5, -0x457ced91    # -0.001f

    const v6, -0x439a9fbe    # -0.014f

    const v7, -0x457ced91    # -0.001f

    const v8, -0x4353f7cf    # -0.021f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 117
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x44fced91    # -0.002f

    const/4 v5, 0x0

    const v6, -0x447ced91    # -0.004f

    const/4 v7, 0x0

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 118
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x44fced91    # -0.002f

    const/4 v5, 0x0

    const v6, -0x447ced91    # -0.004f

    const/4 v7, 0x0

    const v8, -0x443b645a    # -0.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 119
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e8def9e    # -15.129f

    const v5, 0x40376c8b    # 2.866f

    const v6, -0x3e249ba6    # -27.424f

    const v7, 0x40f56873    # 7.669f

    const v8, -0x3de79581    # -38.104f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 120
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40b178d5    # 5.546f

    const v4, -0x3ead70a4    # -13.16f

    const v5, 0x415dfbe7    # 13.874f

    const v6, -0x3e3920c5    # -24.859f

    const/high16 v7, 0x41c20000    # 24.25f

    const v8, -0x3df69062

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 121
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x403d6042    # 2.959f

    const v4, -0x3fd29fbe    # -2.709f

    const v5, 0x40bcdd2f    # 5.902f

    const v6, -0x3f520c4a    # -5.436f

    const v7, 0x410be354    # 8.743f

    const v8, -0x3efbb646    # -8.268f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 122
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41fbe148    # 31.485f

    const v4, -0x3e04ef9e    # -31.383f

    const v5, 0x428b89ba

    const v6, -0x3d7b5062

    const v7, 0x428b89ba

    const v8, -0x3cdbc979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 123
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43a32b85    # 326.34f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 124
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x440252f2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 125
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 126
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 129
    add-int/lit8 v9, v9, 0x1

    .line 130
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 131
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x44012937

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 132
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43183917

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 133
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3dedb021    # -36.578f

    const v5, -0x3f41eb85    # -5.94f

    const v6, -0x3d7f21cb

    const v7, -0x3e8efdf4    # -15.063f

    const v8, -0x3d5268f6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 134
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3e5f9581    # -20.052f

    const v4, -0x3dd08419

    const v5, -0x3d9c5604    # -56.916f

    const v6, -0x3d78b5c3

    const v7, -0x3d7d9cac    # -65.194f

    const v8, -0x3d6edd2f    # -72.568f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 135
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3e1078d5    # -29.941f

    const v4, -0x3e795c29    # -16.83f

    const v5, -0x3db74dd3    # -50.174f

    const v6, -0x3dbc6f9e

    const v7, -0x3db74dd3    # -50.174f

    const v8, -0x3d54a1cb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 136
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3defa7f0

    const v5, 0x419bb22d    # 19.462f

    const v6, -0x3d78c20c

    const v7, 0x4241d3f8    # 48.457f

    const v8, -0x3d569b23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 137
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x3ba3d70a    # 0.005f

    const v3, -0x43dc28f6    # -0.01f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 138
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3d3851ec    # 0.045f

    const v6, -0x43439581    # -0.023f

    const v7, 0x3e041893    # 0.129f

    const v8, -0x4270a3d7    # -0.07f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 139
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3f48b439    # 0.784f

    const v4, -0x4114fdf4    # -0.459f

    const v5, 0x3fc9999a    # 1.575f

    const v6, -0x4096872b    # -0.912f

    const/high16 v7, 0x40180000    # 2.375f

    const v8, -0x40533333    # -1.35f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 140
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x411d3b64    # 9.827f

    const v4, -0x3f462d0e    # -5.807f

    const v5, 0x4238cdd3    # 46.201f

    const v6, -0x3e142d0e    # -29.478f

    const v7, 0x428363d7    # 65.695f

    const v8, -0x3d6faf9e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 141
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41063127    # 8.387f

    const v4, -0x3e4eed91    # -22.134f

    const v5, 0x415c51ec    # 13.77f

    const v6, -0x3db81581    # -49.979f

    const v7, 0x415c51ec    # 13.77f

    const v8, -0x3d52a8f6    # -86.67f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 142
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43182083

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 143
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x44012937

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 144
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 145
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 150
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43edf979

    const v3, 0x43f535a2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 151
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4332726f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 152
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e109ba6    # -29.924f

    const v5, -0x3f8178d5    # -3.977f

    const v6, -0x3da7f7cf    # -54.008f

    const v7, -0x3ed95810    # -10.416f

    const v8, -0x3d6bf439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 153
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3e75e560    # -17.263f

    const v4, -0x3dba77cf    # -49.383f

    const v5, -0x3d5d14fe    # -81.459f

    const v6, -0x3d6c5b23

    const v7, -0x3d45bae1

    const v8, -0x3d643127    # -77.904f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 154
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x41989375    # -0.226f

    const v4, -0x42645a1d    # -0.076f

    const v5, -0x411a9fbe    # -0.448f

    const v6, -0x41e24dd3    # -0.154f

    const v7, -0x40d374bc    # -0.674f

    const v8, -0x41926e98    # -0.232f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 155
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x40c08312    # -0.748f

    const v4, -0x417ced91    # -0.256f

    const v5, -0x406bc6a8    # -1.158f

    const v6, -0x4138d4fe    # -0.389f

    const v7, -0x406bc6a8    # -1.158f

    const v8, -0x4138d4fe    # -0.389f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 156
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, -0x435c28f6    # -0.02f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 157
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3de84fdf    # -37.922f

    const v4, -0x3ea63958    # -13.611f

    const v5, -0x3d7de7f0

    const v6, -0x3db88000    # -49.875f

    const v7, -0x3d7de7f0

    const v8, -0x3d470a3d    # -92.48f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 158
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41d90831    # 27.129f

    const v4, -0x3d624106

    const v5, 0x42821b23

    const v6, -0x3d470a3d    # -92.48f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFF)V

    .line 159
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, -0x447ced91    # -0.004f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 160
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3d83126f    # 0.064f

    const v6, -0x4353f7cf    # -0.021f

    const v7, 0x3e2d0e56    # 0.169f

    const v8, -0x429eb852    # -0.055f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 161
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3f5a9fbe    # 0.854f

    const v4, -0x4163d70a    # -0.305f

    const v5, 0x3fdb645a    # 1.714f

    const v6, -0x40e6e979    # -0.598f

    const v7, 0x40250e56    # 2.579f

    const v8, -0x409ef9db    # -0.879f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 162
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x415de76d    # 13.869f

    const v4, -0x3f632b02    # -4.901f

    const v5, 0x4298ac8b

    const v6, -0x3e151cac    # -29.361f

    const v7, 0x42ba5581    # 93.167f

    const v8, -0x3d64aa7f    # -77.667f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 163
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40bc1062    # 5.877f

    const v4, -0x3e61147b    # -19.865f

    const v5, 0x4117645a    # 9.462f

    const v6, -0x3dd050e5

    const v7, 0x4117645a    # 9.462f

    const v8, -0x3d6c449c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 164
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43325a1d

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 165
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43f535a2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 166
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 167
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 171
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 172
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43e9f0e5

    const v3, 0x4377c49c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 173
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const v4, 0x428e70a4    # 71.22f

    const v5, -0x3d4c9604    # -89.707f

    const v6, 0x429f1810

    const v7, -0x3d07a979

    const v8, 0x429e47ae    # 79.14f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 174
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x41353f7d    # -0.396f

    const v4, -0x445c28f6    # -0.005f

    const v5, -0x40b6872b    # -0.787f

    const v6, 0x3b03126f    # 0.002f

    const v7, -0x4069db23    # -1.173f

    const v8, -0x4374bc6a    # -0.017f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 175
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3fb9999a    # -3.1f

    const v4, -0x41e04189    # -0.156f

    const v5, -0x3f74dd2f    # -4.348f

    const v6, -0x41266666    # -0.425f

    const v7, -0x3ed147ae    # -10.92f

    const v8, -0x40828f5c    # -0.99f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 176
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x4216872b    # -0.114f

    const v4, -0x43ec8b44    # -0.009f

    const v5, -0x41958106    # -0.229f

    const v6, -0x4353f7cf    # -0.021f

    const v7, -0x414fdf3b    # -0.344f

    const v8, -0x431a9fbe    # -0.028f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 177
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x457ced91    # -0.001f

    const/4 v4, 0x0

    const v5, -0x44bb645a    # -0.003f

    const v6, -0x44fced91    # -0.002f

    const v7, -0x445c28f6    # -0.005f

    const v8, -0x44fced91    # -0.002f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 178
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3fe1374c    # -2.481f

    const v4, -0x41bf7cee    # -0.188f

    const v5, -0x3f6051ec    # -4.99f

    const v6, -0x416f1aa0    # -0.283f

    const v7, -0x3f0f53f8    # -7.521f

    const v8, -0x416f1aa0    # -0.283f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 179
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3da6fdf4

    const/4 v4, 0x0

    const v5, -0x3d3b8937

    const v6, 0x422feb85    # 43.98f

    const v7, -0x3d3b8937

    const v8, 0x42c476c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 180
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, 0x42590000    # 54.25f

    const v5, 0x422feb85    # 43.98f

    const v6, 0x42c475c3    # 98.23f

    const v7, 0x42c476c9

    const v8, 0x42c475c3    # 98.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 181
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4021eb85    # 2.53f

    const/4 v4, 0x0

    const v5, 0x40a13f7d    # 5.039f

    const v6, -0x423b645a    # -0.096f

    const v7, 0x40f0ac08    # 7.521f

    const v8, -0x416f1aa0    # -0.283f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 182
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3b03126f    # 0.002f

    const/4 v4, 0x0

    const v5, 0x3b83126f    # 0.004f

    const/4 v6, 0x0

    const v7, 0x3ba3d70a    # 0.005f

    const v8, -0x44fced91    # -0.002f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 183
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3deb851f    # 0.115f

    const v4, -0x43fced91    # -0.008f

    const v5, 0x3e6a7efa    # 0.229f

    const v6, -0x435c28f6    # -0.02f

    const v7, 0x3eb020c5    # 0.344f

    const v8, -0x43126e98    # -0.029f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 184
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40d24dd3    # 6.572f

    const v4, -0x40efdf3b    # -0.563f

    const v5, 0x40fa3d71    # 7.82f

    const v6, -0x40aa7efa    # -0.834f

    const v7, 0x412eb852    # 10.92f

    const v8, -0x40828f5c    # -0.99f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 185
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3ec5a1cb    # 0.386f

    const v4, -0x436c8b44    # -0.018f

    const v5, 0x3f46a7f0    # 0.776f

    const v6, -0x43bb645a    # -0.012f

    const v7, 0x3f9624dd    # 1.173f

    const v8, -0x437ced91    # -0.016f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 186
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4209d917

    const v4, -0x412f1aa0    # -0.408f

    const v5, 0x42cffa5e

    const v6, 0x40fd70a4    # 7.92f

    const v7, 0x42f85687

    const v8, 0x429e472b    # 79.139f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 187
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40a16873    # 5.044f

    const v4, 0x41971062    # 18.883f

    const v5, 0x4101126f    # 8.067f

    const v6, 0x4225a1cb    # 41.408f

    const v7, 0x4101126f    # 8.067f

    const v8, 0x4289ced9    # 68.904f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 188
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43d3e8d5    # 423.819f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 189
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x4332dd71

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 190
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43edf979

    const v4, 0x434e5c6a

    const v5, 0x43ec7687

    const v6, 0x4364e312

    const v7, 0x43e9f0e5

    const v8, 0x4377c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 191
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 192
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 195
    add-int/lit8 v9, v9, 0x1

    .line 196
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 197
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43eb41aa    # 470.513f

    const v3, 0x436cb021

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 198
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3dea5d2f    # -37.409f

    const v4, 0x43014f9e

    const v5, -0x3d04224e

    const v6, 0x42d2420c

    const v7, -0x3cecd1aa    # -147.181f

    const v8, 0x42c26a7f    # 97.208f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 199
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x403c49ba    # -1.529f

    const v4, -0x40d374bc    # -0.674f

    const v5, -0x3fbb020c    # -3.078f

    const v6, -0x40583127    # -1.311f

    const v7, -0x3f6b53f8    # -4.646f

    const v8, -0x400c0831    # -1.906f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 200
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3ed251ec    # -10.855f

    const v4, -0x3f7bbe77    # -4.133f

    const v5, -0x3e4af7cf    # -22.629f

    const v6, -0x3f3322d1    # -6.402f

    const v7, -0x3df44189    # -34.936f

    const v8, -0x3f3322d1    # -6.402f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 201
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3da6fdf4

    const/4 v4, 0x0

    const v5, -0x3d3b8a3d    # -98.23f

    const v6, 0x422feb85    # 43.98f

    const v7, -0x3d3b8a3d    # -98.23f

    const v8, 0x42c476c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 202
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, 0x42590000    # 54.25f

    const v5, 0x422fea7f    # 43.979f

    const v6, 0x42c475c3    # 98.23f

    const v7, 0x42c475c3    # 98.23f

    const v8, 0x42c475c3    # 98.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 203
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41650625    # 14.314f

    const/4 v4, 0x0

    const v5, 0x41df4bc7    # 27.912f

    const v6, -0x3fbbe76d    # -3.064f

    const v7, 0x4220b646

    const v8, -0x3ef6e979    # -8.568f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 204
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41af5e35    # 21.921f

    const v4, -0x3efe5e35    # -8.102f

    const v5, 0x42d5d4fe    # 106.916f

    const v6, -0x3e0f74bc    # -30.068f

    const v7, 0x4312049c

    const v8, 0x42c2e8f6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 205
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4072c083    # 3.793f

    const v4, 0x418470a4    # 16.555f

    const v5, 0x40c01893    # 6.003f

    const v6, 0x420e79db    # 35.619f

    const v7, 0x40c01893    # 6.003f

    const v8, 0x4267b852    # 57.93f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 206
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 207
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43edf958

    const v4, 0x43492d0e

    const v5, 0x43ecfa7f    # 473.957f

    const v6, 0x435c3646

    const v7, 0x43eb41aa    # 470.513f

    const v8, 0x436cb021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 208
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 209
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 212
    add-int/lit8 v9, v9, 0x1

    .line 213
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 214
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43c10e77

    const v3, 0x43b66d2f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 215
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3f22a7f0    # -6.917f

    const v4, 0x40f4624e    # 7.637f

    const v5, -0x3e85645a    # -15.663f

    const v6, 0x413f2f1b    # 11.949f

    const v7, -0x3e4c8937    # -22.433f

    const v8, 0x413f2f1b    # 11.949f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 216
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/high16 v3, -0x3efe0000    # -8.125f

    const/4 v4, 0x0

    const v5, -0x3eb2e979    # -12.818f

    const v6, -0x3fb51eb8    # -3.17f

    const v7, -0x3e357ae1    # -25.315f

    const v8, -0x3e790831    # -16.871f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 217
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x3b83126f    # 0.004f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 218
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3e6fdf3b    # -18.016f

    const v4, -0x3e57d0e5    # -21.023f

    const v5, -0x3dccf7cf    # -44.758f

    const v6, -0x3df69ba6    # -34.348f

    const v7, -0x3d6ac5a2

    const v8, -0x3df69ba6    # -34.348f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 219
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3da6fcee

    const/4 v4, 0x0

    const v5, -0x3d3b8937

    const v6, 0x422fec8b

    const v7, -0x3d3b8937

    const v8, 0x42c4774c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 220
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, 0x42590000    # 54.25f

    const v5, 0x422fea7f    # 43.979f

    const v6, 0x42c475c3    # 98.23f

    const v7, 0x42c476c9

    const v8, 0x42c475c3    # 98.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 221
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x41f6147b    # 30.76f

    const/4 v4, 0x0

    const v5, 0x4268db23    # 58.214f

    const v6, -0x3e9db646    # -14.143f

    const v7, 0x42987333

    const v8, -0x3deee666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 222
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4134dd2f    # 11.304f

    const v4, -0x3ebc872b    # -12.217f

    const v5, 0x417f0a3d    # 15.94f

    const v6, -0x3e8e1893    # -15.119f

    const v7, 0x41bda3d7    # 23.705f

    const v8, -0x3e8e1893    # -15.119f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 223
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40e6c083    # 7.211f

    const/4 v4, 0x0

    const v5, 0x417f70a4    # 15.965f

    const v6, 0x4095e354    # 4.684f

    const v7, 0x41b7b646    # 22.964f

    const/high16 v8, 0x41540000    # 13.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 224
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3ef95810    # 0.487f

    const v4, 0x3f228f5c    # 0.635f

    const v5, 0x3f7a9fbe    # 0.979f

    const v6, 0x3fa24dd3    # 1.268f

    const v7, 0x3fbd2f1b    # 1.478f

    const v8, 0x3ff2f1aa    # 1.898f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 225
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3ca3d70a    # 0.02f

    const v4, 0x3cdd2f1b    # 0.027f

    const v5, 0x3d2c0831    # 0.042f

    const v6, 0x3d591687    # 0.053f

    const v7, 0x3d7df3b6    # 0.062f

    const v8, 0x3da3d70a    # 0.08f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 226
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x3a83126f    # 0.001f

    const v3, -0x44fced91    # -0.002f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 227
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4201428f

    const v4, 0x42235810

    const v5, 0x42af87ae    # 87.765f

    const v6, 0x428e68f6

    const v7, 0x42af87ae    # 87.765f

    const v8, 0x4336fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 228
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 229
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43edf979

    const v4, 0x43959aa0

    const v5, 0x43d10852

    const v6, 0x43a237ae

    const v7, 0x43c10e77

    const v8, 0x43b66d2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 230
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 231
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 234
    add-int/lit8 v9, v9, 0x1

    .line 235
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 236
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43aeb354    # 349.401f

    const v3, 0x43c76852

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 237
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, -0x44bb645a    # -0.003f

    const v3, 0x3c03126f    # 0.008f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 238
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3ecf1687    # -11.057f

    const v4, -0x3dd76b85    # -42.145f

    const v5, -0x3dba624e    # -49.404f

    const v6, -0x3d6d872b    # -73.236f

    const v7, -0x3d41f6c9

    const v8, -0x3d6d872b    # -73.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 239
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3da6fdf4

    const/4 v4, 0x0

    const v5, -0x3d3b89ba

    const v6, 0x422fe979    # 43.978f

    const v7, -0x3d3b89ba

    const v8, 0x42c476c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 240
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4259020c

    const v5, 0x422fea7f    # 43.979f

    const v6, 0x42c475c3    # 98.23f

    const v7, 0x42c47646

    const v8, 0x42c475c3    # 98.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 241
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x4235ad0e

    const/4 v4, 0x0

    const v5, 0x42a74396

    const v6, -0x3e096042    # -30.828f

    const v7, 0x42bdbefa

    const v8, -0x3d6e9a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 242
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x3bc49ba6    # 0.006f

    const v3, 0x3b83126f    # 0.004f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 243
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x403b851f    # 2.93f

    const v4, -0x3eedae14    # -9.145f

    const v5, 0x41106666    # 9.025f

    const v6, -0x3e339375    # -25.553f

    const v7, 0x417428f6    # 15.26f

    const v8, -0x3e339375    # -25.553f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 244
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43b33127

    const v4, 0x43d3e6a8

    const v5, 0x43b03106

    const v6, 0x43cc045a

    const v7, 0x43aeb354    # 349.401f

    const v8, 0x43c76852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 245
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 248
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43c1b6e9

    const v3, 0x43c42aa0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 249
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, -0x44bb645a    # -0.003f

    const v3, -0x447ced91    # -0.004f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 250
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, -0x43fced91    # -0.008f

    const v6, 0x3cfdf3b6    # 0.031f

    const v7, -0x434bc6a8    # -0.022f

    const v8, 0x3dbc6a7f    # 0.092f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 251
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x4153f7cf    # -0.336f

    const v4, 0x3f92b021    # 1.146f

    const v5, -0x40d89375    # -0.654f

    const v6, 0x4013e76d    # 2.311f

    const v7, -0x408bc6a8    # -0.954f

    const v8, 0x405fbe77    # 3.496f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 252
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, -0x3fe8f5c3    # -2.36f

    const v4, 0x4103ef9e    # 8.246f

    const v5, -0x3ef4d4fe    # -8.698f

    const v6, 0x41df147b    # 27.885f

    const v7, -0x3e8747ae    # -15.545f

    const v8, 0x41df147b    # 27.885f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 253
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x40e58106    # 7.172f

    const/4 v4, 0x0

    const v5, 0x415a872b    # 13.658f

    const v6, 0x41a75810    # 20.918f

    const v7, 0x417af1aa    # 15.684f

    const v8, 0x41e1147b    # 28.135f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 254
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3e560419    # 0.209f

    const v4, 0x3f4f1aa0    # 0.809f

    const v5, 0x3ed91687    # 0.424f

    const v6, 0x3fce353f    # 1.611f

    const v7, 0x3f2624dd    # 0.649f

    const v8, 0x4019db23    # 2.404f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 255
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x3a83126f    # 0.001f

    const v4, 0x3b03126f    # 0.002f

    const v5, 0x3bc49ba6    # 0.006f

    const v6, 0x3cac0831    # 0.021f

    const v7, 0x3bc49ba6    # 0.006f

    const v8, 0x3cac0831    # 0.021f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 256
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, -0x44fced91    # -0.002f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 257
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x418e9fbe    # 17.828f

    const v4, 0x427a6f9e

    const v5, 0x42b16979

    const v6, 0x42993439

    const v7, 0x42b16979

    const v8, 0x43568106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 258
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 259
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43edf979

    const v4, 0x43a1d7f0

    const v5, 0x43cac6e9

    const v6, 0x43a561aa    # 330.763f

    const v7, 0x43c1b6e9

    const v8, 0x43c42aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 260
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 261
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 264
    add-int/lit8 v9, v9, 0x1

    .line 265
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 266
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v2, 0x43c0c28f

    const v3, 0x43d3e7f0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V

    .line 267
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42ab64dd

    const v5, 0x42b4dc29    # 90.43f

    const v6, 0x42aea042

    const v7, 0x42b4dc29    # 90.43f

    const v8, 0x43750e14

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 268
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V

    .line 269
    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    const v3, 0x43edf979

    const v4, 0x43ac8ae1

    const v5, 0x43c0c28f

    const v6, 0x43a84127

    const v7, 0x43c0c28f

    const v8, 0x43d3e7f0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 270
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V

    .line 273
    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    .line 275
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    .prologue
    const/4 v3, 0x0

    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 300
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;F)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;
    .param p3, "value"    # F

    .prologue
    .line 303
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$IndexScrollPath15Frames$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 306
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

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    goto :goto_0

    .line 311
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

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v5, 0x0

    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 321
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F

    .prologue
    const/4 v7, 0x0

    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V

    .line 325
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;FFFFFF)V
    .locals 11
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    .line 329
    const/4 v7, 0x0

    .line 330
    .local v7, "wasCurve":Z
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$IndexScrollPath15Frames$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 441
    :goto_0
    if-nez v7, :cond_0

    .line 442
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX1:F

    .line 443
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY1:F

    .line 445
    :cond_0
    return-void

    .line 333
    :pswitch_0
    move v8, p3

    .line 334
    .local v8, "x":F
    move v9, p4

    .line 335
    .local v9, "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->m:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_1

    .line 336
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 337
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 338
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 341
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 342
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 348
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX1:F

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY1:F

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 357
    :pswitch_2
    move v8, p3

    .line 358
    .restart local v8    # "x":F
    move v9, p4

    .line 359
    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_2

    .line 360
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 361
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 362
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 365
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 366
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 372
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    move v8, p3

    .line 373
    .restart local v8    # "x":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->h:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_3

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 375
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    goto :goto_0

    .line 377
    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    goto :goto_0

    .line 384
    .end local v8    # "x":F
    :pswitch_4
    move v9, p4

    .line 385
    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_4

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 387
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 389
    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto :goto_0

    .line 396
    .end local v9    # "y":F
    :pswitch_5
    const/4 v7, 0x1

    .line 397
    move v1, p3

    .line 398
    .local v1, "tx1":F
    move v2, p4

    .line 399
    .local v2, "ty1":F
    move/from16 v3, p5

    .line 400
    .local v3, "tx2":F
    move/from16 v4, p6

    .line 401
    .local v4, "ty2":F
    move/from16 v5, p7

    .line 402
    .local v5, "tx":F
    move/from16 v6, p8

    .line 403
    .local v6, "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_5

    .line 404
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v1, v0

    .line 405
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v3, v0

    .line 406
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v5, v0

    .line 407
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v2, v0

    .line 408
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v4, v0

    .line 409
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    .line 411
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 412
    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX1:F

    .line 413
    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY1:F

    .line 414
    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 415
    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto/16 :goto_0

    .line 420
    .end local v1    # "tx1":F
    .end local v2    # "ty1":F
    .end local v3    # "tx2":F
    .end local v4    # "ty2":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :pswitch_6
    const/4 v7, 0x1

    .line 421
    move v3, p3

    .line 422
    .restart local v3    # "tx2":F
    move v4, p4

    .line 423
    .restart local v4    # "ty2":F
    move/from16 v5, p5

    .line 424
    .restart local v5    # "tx":F
    move/from16 v6, p6

    .line 425
    .restart local v6    # "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames$SVGCommand;

    if-ne p2, v0, :cond_6

    .line 426
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v3, v0

    .line 427
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    add-float/2addr v5, v0

    .line 428
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v4, v0

    .line 429
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    add-float/2addr v6, v0

    .line 431
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX1:F

    sub-float v1, v0, v10

    .line 432
    .restart local v1    # "tx1":F
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY1:F

    sub-float v2, v0, v10

    .restart local v2    # "ty1":F
    move-object v0, p1

    .line 433
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 434
    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX1:F

    .line 435
    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY1:F

    .line 436
    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastX:F

    .line 437
    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->lastY:F

    goto/16 :goto_0

    .line 330
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
.method public getCircleCenterX()F
    .locals 2

    .prologue
    .line 283
    const v0, -0x3c8abdf3

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCircleCenterY()F
    .locals 2

    .prologue
    .line 287
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCircleRadius()F
    .locals 2

    .prologue
    .line 291
    const v0, 0x42c47646

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath15Frames;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    .line 279
    .local v0, "tPath":Landroid/graphics/Path;
    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0xf

    return v0
.end method
