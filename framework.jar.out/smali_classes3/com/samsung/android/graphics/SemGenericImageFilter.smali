.class public Lcom/samsung/android/graphics/SemGenericImageFilter;
.super Lcom/samsung/android/graphics/SemImageFilterSet;
.source "SemGenericImageFilter.java"


# static fields
.field protected static final FALSE:F = 0.0f

.field protected static final FILTER_BLEND_DST_FACTOR:I = 0x6

.field protected static final FILTER_BLEND_SRC_FACTOR:I = 0x5

.field protected static final FILTER_BLEND_USAGE:I = 0x4

.field protected static final FILTER_DOWN_SAMPLE_RATE_H:I = 0x8

.field protected static final FILTER_DOWN_SAMPLE_RATE_V:I = 0x9

.field protected static final FILTER_FILTERING_STATE_ANTIALIASING_DISABLED:I = 0x2

.field protected static final FILTER_FILTERING_STATE_ANTIALIASING_ENABLED:I = 0x1

.field protected static final FILTER_FILTERING_STATE_UNCHANGED:I = 0x0

.field protected static final FILTER_HAS_SAMPLERS:I = 0x3

.field protected static final FILTER_HAS_UNIFORMS:I = 0x2

.field protected static final FILTER_INPUT_TEXTURE_FILTERING_STATE:I = 0xa

.field protected static final FILTER_IS_CHANGED:I = 0x1

.field protected static final FILTER_IS_ENABLED:I = 0x0

.field protected static final FILTER_OUTPUT_TEXTURE_FILTERING_STATE:I = 0xb

.field protected static final FILTER_TRANSFORM:I = 0x7

.field protected static final FILTER_WRAP_STATE_CLAMP_TO_EDGE:I = 0x1

.field protected static final FILTER_WRAP_STATE_MIRRORED:I = 0x3

.field protected static final FILTER_WRAP_STATE_REPEAT:I = 0x2

.field protected static final FILTER_WRAP_STATE_UNCHANGED:I = 0x0

.field protected static final GL_CONSTANT_ALPHA:F = 12.0f

.field protected static final GL_CONSTANT_COLOR:F = 10.0f

.field protected static final GL_DST_ALPHA:F = 8.0f

.field protected static final GL_DST_COLOR:F = 4.0f

.field protected static final GL_ONE:F = 1.0f

.field protected static final GL_ONE_MINUS_CONSTANT_ALPHA:F = 13.0f

.field protected static final GL_ONE_MINUS_CONSTANT_COLOR:F = 11.0f

.field protected static final GL_ONE_MINUS_DST_ALPHA:F = 9.0f

.field protected static final GL_ONE_MINUS_DST_COLOR:F = 5.0f

.field protected static final GL_ONE_MINUS_SRC_ALPHA:F = 7.0f

.field protected static final GL_ONE_MINUS_SRC_COLOR:F = 3.0f

.field protected static final GL_SRC_ALPHA:F = 6.0f

.field protected static final GL_SRC_ALPHA_SATURATE:F = 14.0f

.field protected static final GL_SRC_COLOR:F = 2.0f

.field protected static final GL_ZERO:F = 0.0f

.field protected static final TRUE:F = 1.0f

.field public static final mVertexShaderCodeCommon:Ljava/lang/String; = "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"


# instance fields
.field protected mData1:[F

.field protected mData2:[F

.field protected mFrag:[Ljava/lang/String;

.field protected mIsFilterData01Modified:Z

.field protected mIsFilterData01Used:Z

.field protected mIsFilterData02Modified:Z

.field protected mIsFilterData02Used:Z

.field protected mIsFilterParamsModified:Z

.field protected mIsFilterParamsUsed:Z

.field protected mParams:[F

.field protected mPassNum:I

.field protected mVert:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "passNum"    # I
    .param p2, "vert"    # [Ljava/lang/String;
    .param p3, "frag"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    .line 112
    iput v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 114
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    .line 116
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    .line 118
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "vert"    # Ljava/lang/String;
    .param p2, "frag"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    .line 112
    iput v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 114
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    .line 116
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    .line 118
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    .line 120
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    .line 122
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    .line 124
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    .line 126
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    .line 128
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    .line 130
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    .line 145
    iput v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 146
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected buildWorkerFilters()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clearFilters()V

    .line 225
    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getVertexShaderCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getFragmentShaderCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGenericImageFilter;

    .line 161
    .local v0, "imageFilter":Lcom/samsung/android/graphics/SemGenericImageFilter;
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    iput v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 163
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 165
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 167
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    .line 168
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    .line 170
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    .line 171
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    .line 172
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    .line 174
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getFragmentShaderCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "pass"    # I

    .prologue
    .line 246
    if-gez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getParam(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 325
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aget v0, v0, p1

    return v0
.end method

.method protected getVertexShaderCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "pass"    # I

    .prologue
    .line 237
    if-gez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getVertexShaderCodeCommon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    return-object v0
.end method

.method protected notifyWorkerFilters()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 201
    const/4 v1, 0x0

    .local v1, "pass":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v1, v2, :cond_3

    .line 202
    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    .line 204
    .local v0, "filter":Lcom/samsung/android/graphics/SemCustomFilter;
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    if-eqz v2, :cond_0

    .line 205
    const-string/jumbo v2, "filterParams"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    .line 208
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    if-eqz v2, :cond_1

    .line 209
    const-string/jumbo v2, "filterData01"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    .line 212
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    if-eqz v2, :cond_2

    .line 213
    const-string/jumbo v2, "filterData02"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "filter":Lcom/samsung/android/graphics/SemCustomFilter;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    if-eqz v2, :cond_4

    .line 218
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-interface {v2}, Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;->onParamsChanged()V

    .line 200
    :cond_4
    return-void
.end method

.method protected resetFilterData01Changed()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    .line 291
    return-void
.end method

.method protected resetFilterData02Changed()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    .line 312
    return-void
.end method

.method protected resetFilterParamsChanged()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    .line 270
    return-void
.end method

.method public setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method protected setBitmapFiltering(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "filterPass"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isAntiAliasing"    # Z

    .prologue
    .line 339
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    .line 340
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 343
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 344
    .local v0, "filtering":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapFiltering(Ljava/lang/String;I)V

    .line 338
    return-void

    .line 343
    .end local v0    # "filtering":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "filtering":I
    goto :goto_0
.end method

.method protected setBitmapWrap(ILjava/lang/String;ZZ)V
    .locals 2
    .param p1, "filterPass"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isRepeatable"    # Z
    .param p4, "isMirrored"    # Z

    .prologue
    .line 349
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    .line 350
    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 353
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x3

    .line 354
    .local v0, "wrap":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapWrap(Ljava/lang/String;I)V

    .line 348
    return-void

    .line 353
    .end local v0    # "wrap":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "wrap":I
    goto :goto_0

    .end local v0    # "wrap":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "wrap":I
    goto :goto_0
.end method

.method protected setFilterData01Changed()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    .line 286
    return-void
.end method

.method protected setFilterData02Changed()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    .line 307
    return-void
.end method

.method protected setFilterParamsChanged()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    .line 265
    return-void
.end method

.method protected setFiltering(III)V
    .locals 3
    .param p1, "filter"    # I
    .param p2, "inputTextureFilteringState"    # I
    .param p3, "outputTextureFilteringState"    # I

    .prologue
    .line 369
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    .line 370
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    .line 373
    .local v0, "f":Lcom/samsung/android/graphics/SemImageFilter;
    int-to-float v1, p2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    .line 374
    int-to-float v1, p3

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    .line 368
    return-void
.end method

.method protected setParam(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aput p2, v0, p1

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 317
    return-void
.end method

.method protected setSamplingRate(IFF)V
    .locals 2
    .param p1, "filter"    # I
    .param p2, "horizontal"    # F
    .param p3, "vertical"    # F

    .prologue
    .line 359
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    .line 360
    :cond_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    .line 363
    .local v0, "f":Lcom/samsung/android/graphics/SemImageFilter;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    .line 364
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    .line 358
    return-void
.end method

.method protected setup(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "passNum"    # I
    .param p2, "vert"    # [Ljava/lang/String;
    .param p3, "frag"    # [Ljava/lang/String;

    .prologue
    .line 192
    iput p1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 193
    iput-object p2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->buildWorkerFilters()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 191
    return-void
.end method

.method protected setup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vert"    # Ljava/lang/String;
    .param p2, "frag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    iput v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    .line 183
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    .line 184
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->buildWorkerFilters()V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 181
    return-void
.end method

.method protected unUseFilterData01()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    .line 281
    return-void
.end method

.method protected unUseFilterData02()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    .line 302
    return-void
.end method

.method protected unUseFilterParams()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    .line 260
    return-void
.end method

.method protected useFilterData01()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    .line 276
    return-void
.end method

.method protected useFilterData02()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    .line 297
    return-void
.end method

.method protected useFilterParams()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    .line 255
    return-void
.end method
