.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1375
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1379
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    .line 1380
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->run()V

    .line 1384
    :cond_0
    return-void
.end method
