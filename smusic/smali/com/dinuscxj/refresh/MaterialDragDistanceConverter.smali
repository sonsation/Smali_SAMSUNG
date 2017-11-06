.class public Lcom/dinuscxj/refresh/MaterialDragDistanceConverter;
.super Ljava/lang/Object;
.source "MaterialDragDistanceConverter.java"

# interfaces
.implements Lcom/dinuscxj/refresh/IDragDistanceConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(FF)F
    .locals 14
    .param p1, "scrollDistance"    # F
    .param p2, "refreshDistance"    # F

    .prologue
    .line 6
    div-float v4, p1, p2

    .line 7
    .local v4, "originalDragPercent":F
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 8
    .local v1, "dragPercent":F
    move/from16 v5, p2

    .line 9
    .local v5, "slingshotDist":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v3, v8, v5

    .line 10
    .local v3, "extraOS":F
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v5

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 11
    .local v7, "tensionSlingshotPercent":F
    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, v7, v8

    float-to-double v8, v8

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v7, v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 12
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v6, v8, v9

    .line 13
    .local v6, "tensionPercent":F
    mul-float v8, v5, v6

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v2, v8, v9

    .line 15
    .local v2, "extraMove":F
    mul-float v8, v5, v1

    add-float/2addr v8, v2

    float-to-int v0, v8

    .line 17
    .local v0, "convertY":I
    int-to-float v8, v0

    return v8
.end method
