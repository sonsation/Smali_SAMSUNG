.class Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "SeslSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 50
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->mScrolled:Z

    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->snapToTargetExistingView()V

    .line 54
    :cond_0
    return-void
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 58
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;->mScrolled:Z

    .line 61
    :cond_1
    return-void
.end method
