.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;
.super Ljava/lang/Object;
.source "ServiceTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 37
    .local v0, "now":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->access$000(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->access$100(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->access$200(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->access$300(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->access$400(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->postDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
