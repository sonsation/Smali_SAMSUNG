.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/CircularImageViewPublisher;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.source "CircularImageViewPublisher.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/CircularImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;IZ)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I
    .param p3, "setDefaultImageBeforeLoad"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 34
    return-void
.end method


# virtual methods
.method protected assignBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 40
    .local v0, "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    invoke-virtual {v0, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method
