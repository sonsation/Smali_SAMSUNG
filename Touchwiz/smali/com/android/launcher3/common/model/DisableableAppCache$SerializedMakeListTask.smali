.class Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;
.super Ljava/lang/Object;
.source "DisableableAppCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DisableableAppCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerializedMakeListTask"
.end annotation


# instance fields
.field private final mAppsToMakeList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/common/model/DisableableAppCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/DisableableAppCache;Ljava/util/Stack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DisableableAppCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "appsToMakeList":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    .line 343
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 347
    iget-object v6, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    iget-object v6, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 350
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-static {v6}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$000(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 351
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 352
    .local v3, "md":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 353
    .local v5, "unblock":Z
    const/4 v0, 0x0

    .line 354
    .local v0, "block":Z
    if-eqz v3, :cond_0

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 355
    const-string v6, "com.sec.android.app.unblockdisabling"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 356
    const-string v6, "com.sec.android.app.blockdisabling"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 358
    :cond_0
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 359
    if-eqz v0, :cond_3

    .line 360
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0    # "block":Z
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "md":Landroid/os/Bundle;
    .end local v5    # "unblock":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->scheduleNext()V

    .line 384
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void

    .line 362
    .restart local v0    # "block":Z
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "md":Landroid/os/Bundle;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "unblock":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 363
    :try_start_1
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 364
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "block":Z
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "md":Landroid/os/Bundle;
    .end local v5    # "unblock":Z
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "DisableableAppCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while making list from Meta : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "block":Z
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "md":Landroid/os/Bundle;
    .restart local v5    # "unblock":Z
    :cond_4
    :try_start_2
    sget-boolean v6, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v6, :cond_5

    const-string v6, "com.samsung.knox.securefolder"

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    .line 369
    invoke-static {v6}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$100(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/util/SecureFolderHelper;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 370
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 371
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$200(Lcom/android/launcher3/common/model/DisableableAppCache;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 374
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    sget-object v6, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$400(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$300()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 388
    return-void
.end method
