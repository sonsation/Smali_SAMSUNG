.class Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;
.super Landroid/os/Handler;
.source "LoopViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopViewPagerHandler"
.end annotation


# static fields
.field public static final AUTO_SCROLL:I


# instance fields
.field private final mAutoScrollViewPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V
    .locals 1
    .param p1, "autoScrollViewPager"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->mAutoScrollViewPager:Ljava/lang/ref/WeakReference;

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 298
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->mAutoScrollViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 301
    .local v0, "pager":Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
    if-eqz v0, :cond_0

    .line 302
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$300(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;I)V

    .line 303
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll(Z)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
