.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "NowPlayingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1400(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    if-eqz p2, :cond_1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1400(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1400(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
