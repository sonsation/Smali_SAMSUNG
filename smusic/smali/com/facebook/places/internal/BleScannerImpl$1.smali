.class Lcom/facebook/places/internal/BleScannerImpl$1;
.super Ljava/lang/Object;
.source "BleScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/BleScannerImpl;->waitForMainLooper(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/places/internal/BleScannerImpl;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    iput-object p2, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 143
    monitor-exit v2

    .line 147
    :goto_0
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception waiting for main looper"

    invoke-static {v1, v0}, Lcom/facebook/places/internal/BleScannerImpl;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
