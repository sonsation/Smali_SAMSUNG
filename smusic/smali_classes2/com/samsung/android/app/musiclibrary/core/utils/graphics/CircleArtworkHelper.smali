.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;
.super Ljava/lang/Object;
.source "CircleArtworkHelper.java"


# static fields
.field private static sColors:[I

.field private static sPositions:[F

.field private static sRotationDegrees:Ljava/lang/Float;


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    .line 26
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$array;->music_library_circle_artwork_effect_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 8

    .prologue
    .line 36
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    if-nez v4, :cond_0

    .line 37
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$array;->music_library_circle_artwork_effect_positions:I

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "positions":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [F

    sput-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "index":I
    array-length v5, v3

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 42
    .local v2, "position":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v1

    .line 41
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 45
    .end local v1    # "index":I
    .end local v2    # "position":Ljava/lang/String;
    .end local v3    # "positions":[Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    return-object v4
.end method

.method public getRotationDegrees()F
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$integer;->music_library_circle_artwork_effect_angle:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    .line 53
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
