.class Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MultipleImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewerAdapter"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageViewSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mItems:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mImageViewSparseArray:Landroid/util/SparseArray;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 196
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 198
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 158
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getItem : illegal pos range"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mImageViewSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "imageView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    const v3, 0x7f020249

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setShowImageOnError(I)V

    .line 178
    const v3, 0x7f12039e

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setId(I)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->loadImage(Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 184
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->mImageViewSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 171
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
