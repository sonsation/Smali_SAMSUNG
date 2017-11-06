.class Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
.source "CoverQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopScrollSeslLinearLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;Landroid/content/Context;)V

    .line 59
    .local v0, "smoothScroller":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;->startSmoothScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    .line 61
    return-void
.end method
