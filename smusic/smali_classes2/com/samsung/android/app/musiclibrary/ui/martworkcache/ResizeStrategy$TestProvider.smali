.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;
.super Ljava/lang/Object;
.source "ResizeStrategy.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field private mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mValues:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$1;

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 324
    return-void
.end method

.method public getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public putResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 335
    return-void
.end method
