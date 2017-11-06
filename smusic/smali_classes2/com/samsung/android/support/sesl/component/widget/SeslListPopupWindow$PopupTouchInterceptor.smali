.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1353
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1354
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1356
    .local v2, "y":I
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1357
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1358
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1359
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1363
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1360
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
