.class Lcom/android/launcher3/home/HomeLoader$41;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateContactShortcutInfo(JLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$41;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$41;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4312
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$10000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4313
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$10100()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 4314
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$10200()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$41;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4315
    monitor-exit v1

    .line 4319
    :goto_0
    return-void

    .line 4315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$41;->val$r:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$10300(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
