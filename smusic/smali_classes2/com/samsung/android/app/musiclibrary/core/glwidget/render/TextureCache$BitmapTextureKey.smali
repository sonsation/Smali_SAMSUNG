.class Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;
.super Ljava/lang/ref/WeakReference;
.source "TextureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapTextureKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapHashcode:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->mBitmapHashcode:I

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 157
    if-ne p0, p1, :cond_1

    .line 158
    const/4 v3, 0x1

    .line 171
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move-object v1, p1

    .line 164
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;

    .line 165
    .local v1, "that":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 166
    .local v2, "thatBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$BitmapTextureKey;->mBitmapHashcode:I

    return v0
.end method
