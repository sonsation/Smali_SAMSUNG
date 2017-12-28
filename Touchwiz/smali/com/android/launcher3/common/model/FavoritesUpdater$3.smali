.class Lcom/android/launcher3/common/model/FavoritesUpdater$3;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 118
    sget-object v1, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 120
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 139
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/model/DataLoader;->decrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    .line 143
    :cond_2
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 144
    monitor-exit v7

    .line 146
    :cond_3
    return-void

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 126
    sget-object v1, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v0

    .line 127
    .local v0, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    iget-object v6, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    .line 128
    .local v6, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v3, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/customer/PostPositionController;->writeFolderReadyIdForNoFDR(JLjava/lang/String;J)V

    .line 134
    :goto_1
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v1, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 144
    .end local v0    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v6    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    .restart local v0    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .restart local v6    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
