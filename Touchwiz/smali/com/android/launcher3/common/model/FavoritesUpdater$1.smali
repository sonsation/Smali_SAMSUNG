.class Lcom/android/launcher3/common/model/FavoritesUpdater$1;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    sget-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 71
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->incrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;Z)V

    .line 84
    :cond_2
    monitor-exit v1

    .line 85
    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_1

    .line 77
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v0, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
