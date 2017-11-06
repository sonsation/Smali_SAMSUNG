.class Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;
.super Landroid/os/Handler;
.source "PullDownOptionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PullUpHandler"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)V
    .locals 1
    .param p1, "pullDownOptionRelativeLayout"    # Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->pullUp(J)V

    .line 297
    return-void
.end method

.method pullUp(J)V
    .locals 7
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 300
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    .line 302
    .local v0, "layout":Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;
    if-eqz v0, :cond_1

    .line 303
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 304
    invoke-static {v0, v5}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->access$002(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;I)I

    .line 305
    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->access$100(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->access$100(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;->onStateChanged(I)V

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getScrollY()I

    move-result v1

    .line 309
    .local v1, "scrollY":I
    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->access$200(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)Landroid/widget/Scroller;

    move-result-object v2

    neg-int v3, v1

    invoke-virtual {v2, v4, v1, v4, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 310
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->postInvalidate()V

    .line 315
    .end local v1    # "scrollY":I
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    invoke-virtual {p0, v4, p1, p2}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
