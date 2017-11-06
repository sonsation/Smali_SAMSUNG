.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;
.super Ljava/lang/Object;
.source "GLGalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;
    }
.end annotation


# static fields
.field public static final DEBUG_SURFACE_FORMAT:Z

.field public static final PERFORMANCE_TEST:Z

.field public static final PROFILING:Z

.field static mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

.field static mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

.field static mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mix(FFF)F
    .locals 2
    .param p0, "v1"    # F
    .param p1, "v2"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static mix(IIF)I
    .locals 4
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .param p2, "fraction"    # F

    .prologue
    .line 54
    int-to-float v0, p0

    .line 55
    .local v0, "fv1":F
    int-to-float v1, p1

    .line 56
    .local v1, "fv2":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v2, v0

    mul-float v3, p2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public static mix(JJF)J
    .locals 2
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .param p4, "fraction"    # F

    .prologue
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    long-to-float v1, p0

    mul-float/2addr v0, v1

    long-to-float v1, p2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static mixColorsHSV(IIF)I
    .locals 8
    .param p0, "c1"    # I
    .param p1, "c2"    # I
    .param p2, "fraction"    # F

    .prologue
    .line 105
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 106
    .local v2, "hsv1":[F
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 107
    .local v3, "hsv2":[F
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 108
    .local v5, "res":[F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 109
    .local v0, "a1":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 111
    .local v1, "a2":I
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 112
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 113
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_0

    .line 114
    aget v6, v2, v4

    aget v7, v3, v4

    invoke-static {v6, v7, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(FFF)F

    move-result v6

    aput v6, v5, v4

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v6

    invoke-static {v6, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    return v6
.end method

.method public static mixColorsRGB(IIF)I
    .locals 12
    .param p0, "c1"    # I
    .param p1, "c2"    # I
    .param p2, "fraction"    # F

    .prologue
    .line 83
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 84
    .local v6, "r1":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 85
    .local v7, "r2":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 86
    .local v4, "g1":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 87
    .local v5, "g2":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 88
    .local v2, "b1":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 89
    .local v3, "b2":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 90
    .local v0, "a1":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 91
    .local v1, "a2":I
    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v8

    invoke-static {v6, v7, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v9

    invoke-static {v4, v5, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v10

    .line 92
    invoke-static {v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v11

    .line 91
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method public static modMax(FF)F
    .locals 1
    .param p0, "x1"    # F
    .param p1, "x2"    # F

    .prologue
    .line 151
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static modMin(FF)F
    .locals 1
    .param p0, "x1"    # F
    .param p1, "x2"    # F

    .prologue
    .line 144
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 145
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method
