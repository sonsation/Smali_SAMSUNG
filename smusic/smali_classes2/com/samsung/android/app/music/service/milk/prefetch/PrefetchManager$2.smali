.class Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->doPrefetchChunkData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    return-void
.end method
