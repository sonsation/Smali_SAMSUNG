.class Lcom/android/server/usage/UsageStatsService$1;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 304
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-get1(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-get0(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-wrap1(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v2

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 313
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplayLocked(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 310
    :cond_0
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 307
    return-void
.end method
