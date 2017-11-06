.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
.source "FlatResizeLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIMENSION_UNSPECIFIED:I = -0x1


# instance fields
.field mAlbumContentDescription:Ljava/lang/String;

.field mAlbumOpacity:F

.field mAlbumSize:I

.field mAlbumSpacing:I

.field mAlbumSpacingAdditional:I

.field mAlbumVerticalDelta:I

.field mBackgroundColor:I

.field mBitmapDimension:I

.field mBitmapSize:I

.field mScrollingFriction:F

.field mSegmentCount:I

.field mSelectedAlbumSize:I

.field mShadowBitmap:I

.field final mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

.field mShadowMeshRadius:I

.field mTextLayout:I

.field mTextSelectedOpacity:F

.field mTextUnselectedOpacity:F

.field mUseCircle:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    .line 71
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    .line 167
    :try_start_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumOpacity:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 168
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    .line 169
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSize:I

    const/16 v3, 0xb4

    .line 170
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    .line 171
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumVerticalDelta:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    .line 173
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSpacing:I

    const/16 v3, 0x1a

    .line 174
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    .line 175
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSpacingAdditional:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    .line 177
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_backgroundColor:I

    const/high16 v3, -0x1000000

    .line 178
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    .line 179
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_selectedAlbumSize:I

    const/4 v3, -0x1

    .line 180
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    .line 182
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_scrollingFriction:I

    .line 183
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    .line 182
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    .line 184
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowBitmap:I

    const/4 v3, -0x1

    .line 185
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowBitmap:I

    .line 187
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_useCircle:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    .line 189
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowBitmap:I

    if-ne v2, v6, :cond_0

    .line 190
    const/4 v0, -0x1

    .line 191
    .local v0, "def":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowBottomRadius:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowRightRadius:I

    .line 193
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowTopRadius:I

    .line 195
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowLeftRadius:I

    .line 197
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 191
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setRadius(IIII)V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowBottomCornerRadius:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowRightCornerRadius:I

    .line 202
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowTopCornerRadius:I

    .line 204
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowLeftCornerRadius:I

    .line 206
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 200
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setCornerRadius(IIII)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowInnerColor:I

    const v4, -0x7f7f80

    .line 210
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowOuterColor:I

    const/4 v5, 0x0

    .line 212
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 209
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setColor(II)V

    .line 214
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_segmentCount:I

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v3, v3

    div-float v3, v7, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setConversionK(F)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setSegmentCount(I)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setCircular(Landroid/content/res/Resources;Z)V

    .line 219
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_circleShadowRadius:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setRadius(I)V

    .line 224
    .end local v0    # "def":I
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_bitmapSize:I

    const v3, 0x7fffffff

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    .line 227
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v1, "value":Landroid/util/TypedValue;
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_bitmapSize:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I

    .line 234
    :goto_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textLayout:I

    const/4 v3, -0x1

    .line 235
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextLayout:I

    .line 236
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textSelectedOpacity:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 237
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    .line 239
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textUnselectedOpacity:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 240
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    .line 242
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumContentDescription:I

    .line 243
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    return-void

    .line 231
    :cond_1
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method public getAlbumAlpha()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    return v0
.end method

.method public getAlbumSize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    return v0
.end method

.method public getAlbumSpacing()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    return v0
.end method

.method public getAlbumSpacingAdditinal()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    return v0
.end method

.method public getAlbumVerticalDelta()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    return v0
.end method

.method public getBitmapSize()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    return v0
.end method

.method public getScrollingFriction()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    return v0
.end method

.method public getSelectedAlbumSize()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    return v0
.end method

.method public getShadowBitmap()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowBitmap:I

    return v0
.end method

.method public getTextLayoutId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextLayout:I

    return v0
.end method

.method public getTextSelectedAlpha()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    return v0
.end method

.method public getTextUnselectedAlpha()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    return v0
.end method

.method public setAlbumAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 126
    return-void
.end method

.method public setAlbumSize(I)V
    .locals 0
    .param p1, "albumSize"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 81
    return-void
.end method

.method public setAlbumSpacing(I)V
    .locals 0
    .param p1, "albumSpacing"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 99
    return-void
.end method

.method public setAlbumSpacingAdditional(I)V
    .locals 0
    .param p1, "albumSpacingAdditional"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 108
    return-void
.end method

.method public setAlbumVerticalDelta(I)V
    .locals 0
    .param p1, "albumVerticalDelta"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 90
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    .line 117
    return-void
.end method

.method public setBitmapSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    .line 150
    return-void
.end method

.method public setScrollingFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    .line 138
    return-void
.end method
