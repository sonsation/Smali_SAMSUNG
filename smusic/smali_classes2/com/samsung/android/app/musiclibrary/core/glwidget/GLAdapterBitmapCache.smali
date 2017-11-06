.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;
.super Ljava/lang/Object;
.source "GLAdapterBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$GLAdapterBitmapCache2Holder;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;
    }
.end annotation


# instance fields
.field private final mDynamicIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mStaticIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mStaticIcons:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicViews:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicIcons:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$GLAdapterBitmapCache2Holder;->access$000()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v0

    return-object v0
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    .local v1, "width":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 85
    .local v0, "height":I
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;-><init>(Landroid/view/View;II)V

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private inflateView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDynamicBitmap(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "c"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicIcons:Ljava/util/Map;

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;->getSearchKey()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    .local v0, "res":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 79
    :goto_0
    return-object v2

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 70
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->inflateView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {p3, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;->onBindView(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicIcons:Ljava/util/Map;

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;->getSearchKey()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 79
    goto :goto_0
.end method

.method public getStaticBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mStaticIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 52
    .local v0, "res":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->inflateView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 60
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 57
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mStaticIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move-object v2, v0

    .line 60
    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mStaticIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mDynamicViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    return-void
.end method
