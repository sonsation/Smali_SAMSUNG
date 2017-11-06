.class public Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;
.super Ljava/lang/Thread;
.source "DialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitLoadingWaitThread"
.end annotation


# instance fields
.field mHandle:Landroid/os/Handler;

.field private mShowloading:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;
    .param p2, "handle"    # Landroid/os/Handler;
    .param p3, "show"    # Z

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->mShowloading:Z

    .line 2056
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->mHandle:Landroid/os/Handler;

    .line 2057
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->mShowloading:Z

    .line 2058
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2063
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1500(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2064
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2065
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2067
    :catch_0
    move-exception v0

    .line 2069
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2072
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->mHandle:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->mShowloading:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2073
    return-void

    .line 2072
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
