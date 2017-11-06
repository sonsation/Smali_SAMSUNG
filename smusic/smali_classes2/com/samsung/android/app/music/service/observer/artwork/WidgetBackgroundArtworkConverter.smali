.class public final Lcom/samsung/android/app/music/service/observer/artwork/WidgetBackgroundArtworkConverter;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;
.source "WidgetBackgroundArtworkConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    return-object p2
.end method

.method public getArtworkSizeResId()I
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    return v0
.end method
