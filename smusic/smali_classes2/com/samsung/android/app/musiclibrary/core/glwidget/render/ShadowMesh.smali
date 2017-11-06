.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;
.super Ljava/lang/Object;
.source "ShadowMesh.java"


# static fields
.field public static final DEFAULT_CORNER_SEGMENT_COUNT:I = 0x3

.field public static final DEFAULT_INNER_COLOR:I = -0x7f7f80

.field public static final DEFAULT_OUTER_COLOR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ShadowMesh"

.field public static final NOT_ASSIGNED:I = -0x1


# instance fields
.field private mBottomRadius:I

.field private mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

.field private mCircular:Z

.field private mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mColors:[F

.field private mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mCoords:[F

.field private mCornerBottomRadius:I

.field private mCornerLeftRadius:I

.field private mCornerRightRadius:I

.field private mCornerTopRadius:I

.field private mHasShadow:Z

.field private mInnerColor:I

.field private mK:F

.field private mLeftRadius:I

.field private mOuterColor:I

.field private mRadius:I

.field private mRebuildMesh:Z

.field private mRebuildVBO:Z

.field private mRightRadius:I

.field private mSegmentCount:I

.field private mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

.field private mTopRadius:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 44
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 46
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 48
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 50
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 52
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 54
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 56
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 58
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    .line 60
    const v0, -0x7f7f80

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    .line 62
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    .line 76
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircular:Z

    return-void
.end method


# virtual methods
.method public hasShadow()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    return v0
.end method

.method public initShader(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    .line 206
    :cond_0
    return-void
.end method

.method public render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 10
    .param p1, "PVMatrix"    # [F
    .param p2, "models"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    const/4 v9, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 209
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "ShadowMesh"

    const-string v2, "Rebuild shadow mesh"

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircular:Z

    if-eqz v0, :cond_3

    .line 213
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v4, v2, v3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getRotationDegrees()F

    move-result v2

    neg-float v2, v2

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float v5, v2, v3

    move v2, v1

    move v3, v1

    .line 213
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleShadowCoord(IFFFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    .line 215
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 216
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getColors()[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getPositions()[F

    move-result-object v2

    .line 215
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getColoredCircleShadowColors(I[I[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    .line 225
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    if-eqz v0, :cond_1

    .line 226
    iput-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    .line 227
    const-string v0, "ShadowMesh"

    const-string v1, "Rebuild shadow VBO"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 229
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;I)V

    .line 234
    :cond_2
    return-void

    .line 218
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->roundShadowCoords(FFFFFFFFI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    .line 222
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->roundShadowColors(III)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    goto :goto_0
.end method

.method public setCircular(Landroid/content/res/Resources;Z)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "circular"    # Z

    .prologue
    .line 145
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircular:Z

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircular:Z

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 149
    :cond_0
    return-void
.end method

.method public setColor(II)V
    .locals 2
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 187
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    if-eq p1, v0, :cond_0

    .line 188
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    .line 189
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 191
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    if-eq p2, v0, :cond_1

    .line 192
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    .line 193
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 195
    :cond_1
    return-void
.end method

.method public setConversionK(F)V
    .locals 1
    .param p1, "k"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 142
    :cond_0
    return-void
.end method

.method public setCornerRadius(IIII)V
    .locals 3
    .param p1, "bottom"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "left"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 152
    if-lez p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    if-eq p1, v0, :cond_1

    .line 153
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 154
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    if-ne v0, v2, :cond_0

    .line 155
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 157
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 160
    :cond_1
    if-lez p2, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    if-eq p2, v0, :cond_3

    .line 161
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 162
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    if-ne v0, v2, :cond_2

    .line 163
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 165
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 166
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 168
    :cond_3
    if-lez p3, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    if-eq p3, v0, :cond_5

    .line 169
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 170
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    if-ne v0, v2, :cond_4

    .line 171
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 173
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 174
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 176
    :cond_5
    if-lez p4, :cond_7

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    if-eq p4, v0, :cond_7

    .line 177
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    .line 178
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    if-ne v0, v2, :cond_6

    .line 179
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 181
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 184
    :cond_7
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    const/4 v0, 0x1

    .line 88
    if-lez p1, :cond_0

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 92
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRadius:I

    .line 93
    return-void
.end method

.method public setRadius(IIII)V
    .locals 3
    .param p1, "bottom"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "left"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 96
    if-lez p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    if-eq p1, v0, :cond_1

    .line 97
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 98
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    if-ne v0, v2, :cond_0

    .line 99
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 101
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 104
    :cond_1
    if-lez p2, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    if-eq p2, v0, :cond_3

    .line 105
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 106
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    if-ne v0, v2, :cond_2

    .line 107
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 109
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 112
    :cond_3
    if-lez p3, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    if-eq p3, v0, :cond_5

    .line 113
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 114
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    if-ne v0, v2, :cond_4

    .line 115
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 117
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 120
    :cond_5
    if-lez p4, :cond_7

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    if-eq p4, v0, :cond_7

    .line 121
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 122
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    if-ne v0, v2, :cond_6

    .line 123
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    .line 125
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 128
    :cond_7
    return-void
.end method

.method public setSegmentCount(I)V
    .locals 1
    .param p1, "segmentCount"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    if-eq p1, v0, :cond_0

    .line 132
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 135
    :cond_0
    return-void
.end method
