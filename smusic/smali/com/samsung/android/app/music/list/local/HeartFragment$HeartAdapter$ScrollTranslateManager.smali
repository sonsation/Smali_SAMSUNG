.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollTranslateManager"
.end annotation


# instance fields
.field private mScrollContainerHeight:I

.field private final mScrollTranslateImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollTranslateImageViews:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$1;

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addScrollTranslateView(Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;)V
    .locals 1
    .param p1, "imageView"    # Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollTranslateImageViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollContainerHeight:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->setScrollContainerHeight(I)V

    .line 1011
    return-void
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 994
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 995
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollTranslateImageViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;

    .line 996
    .local v0, "imageView":Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->translate(I)Z

    goto :goto_0

    .line 998
    .end local v0    # "imageView":Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 1002
    iput p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollContainerHeight:I

    .line 1003
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollTranslateImageViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;

    .line 1004
    .local v0, "imageView":Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->setScrollContainerHeight(I)V

    goto :goto_0

    .line 1006
    .end local v0    # "imageView":Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;
    :cond_0
    return-void
.end method

.method public removeScrollTranslateView(Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;)V
    .locals 1
    .param p1, "imageView"    # Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->mScrollTranslateImageViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1015
    return-void
.end method
