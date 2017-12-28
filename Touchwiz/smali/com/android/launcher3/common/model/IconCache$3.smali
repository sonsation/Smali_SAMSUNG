.class Lcom/android/launcher3/common/model/IconCache$3;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/IconCache;->clearCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$3;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$3;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$1200(Lcom/android/launcher3/common/model/IconCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1203
    :try_start_0
    const-string v0, "Launcher.IconCache"

    const-string v2, "mCache is cleared running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$3;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$1200(Lcom/android/launcher3/common/model/IconCache;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1205
    monitor-exit v1

    .line 1206
    return-void

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
