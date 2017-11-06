.class Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;
.super Landroid/util/LruCache;
.source "TextureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LruCache",
        "<TK;",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field private mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V
    .locals 0
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache<TK;>;"
    .local p2, "texturesPool":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;>;"
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 120
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 121
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p3, "oldValue"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    .param p4, "newValue"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->release()V

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache<TK;>;"
    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    check-cast p4, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$TextureLruCache;->entryRemoved(ZLjava/lang/Object;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V

    return-void
.end method
