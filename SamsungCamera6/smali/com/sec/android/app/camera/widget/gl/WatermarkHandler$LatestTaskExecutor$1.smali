.class Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor$1;
.super Ljava/lang/Object;
.source "WatermarkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;->access$1000(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
