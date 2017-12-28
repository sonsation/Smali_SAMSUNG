.class Lcom/android/launcher3/common/model/FavoritesUpdater$5;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 283
    const/4 v9, 0x0

    .line 284
    .local v9, "folderCountChanged":Z
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 285
    .local v10, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v3, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    sget-object v12, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v12

    .line 287
    :try_start_0
    instance-of v3, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_0

    instance-of v3, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_2

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 304
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 305
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 291
    :cond_2
    :try_start_1
    instance-of v3, v10, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 292
    sget-object v3, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 293
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    move-object v0, v10

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v8, v0

    .line 294
    .local v8, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v3, v8, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 295
    iget-wide v3, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v5, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v8, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/customer/PostPositionController;->writeFolderReadyIdForNoFDR(JLjava/lang/String;J)V

    .line 300
    :goto_2
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 301
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 302
    const/4 v9, 0x1

    goto :goto_1

    .line 297
    :cond_3
    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 307
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v8    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    if-eqz v9, :cond_5

    .line 308
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v3, v13}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 310
    :cond_5
    return-void
.end method
