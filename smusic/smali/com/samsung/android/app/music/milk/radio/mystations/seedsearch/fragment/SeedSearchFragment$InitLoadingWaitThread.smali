.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;
.super Ljava/lang/Thread;
.source "SeedSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitLoadingWaitThread"
.end annotation


# instance fields
.field mHandle:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

.field private mShowloading:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;
    .param p2, "handle"    # Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    .param p3, "show"    # Z

    .prologue
    .line 393
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->mShowloading:Z

    .line 394
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->mHandle:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    .line 395
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->mShowloading:Z

    .line 396
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 400
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 402
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 409
    .local v1, "msg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->mShowloading:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->what:I

    .line 411
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->mHandle:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->handleMessage(Landroid/os/Message;)V

    .line 412
    return-void

    .line 409
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
