.class Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;
.super Ljava/lang/Object;
.source "BannerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->initViewPager(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow : StoreFragment activated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-boolean v0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->stopAutoScroll()V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow : StoreFragment activated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->stopAutoScroll()V

    .line 117
    return-void
.end method
