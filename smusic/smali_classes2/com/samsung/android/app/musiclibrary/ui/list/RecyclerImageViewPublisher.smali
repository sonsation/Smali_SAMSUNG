.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.source "RecyclerImageViewPublisher.java"


# instance fields
.field private final mUpdateOnlyInUiThread:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;IZ)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I
    .param p3, "updateOnlyInUiThread"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    .line 21
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;->mUpdateOnlyInUiThread:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected allowPublish(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "elapsedTime"    # J
    .param p5, "uiThread"    # Z

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;->mUpdateOnlyInUiThread:Z

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
