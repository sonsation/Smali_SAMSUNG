.class Lcom/android/launcher3/common/model/FavoritesUpdater$7;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$info:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 372
    sget-object v3, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v4, v5}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 374
    :try_start_0
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 375
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 376
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 377
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v3, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 378
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 379
    sget-object v3, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 380
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V

    .line 381
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 383
    .local v1, "isHomeOnly":Z
    :goto_0
    if-nez v1, :cond_2

    .line 384
    sget-object v3, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 387
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 388
    .local v0, "childInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_1

    .line 390
    .end local v0    # "childInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 378
    .end local v1    # "isHomeOnly":Z
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 382
    .restart local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    .restart local v1    # "isHomeOnly":Z
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :cond_2
    return-void
.end method
