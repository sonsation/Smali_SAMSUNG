.class Lcom/android/launcher3/home/DexHomeConverter$3;
.super Ljava/lang/Object;
.source "DexHomeConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/DexHomeConverter;->syncItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/DexHomeConverter;

.field final synthetic val$newFolders:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/DexHomeConverter;Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/DexHomeConverter;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    iput-object p2, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->val$newFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->val$newFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 421
    .local v1, "f":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 422
    .local v0, "c":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 423
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getDexID()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 424
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    iget-object v5, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-static {v5}, Lcom/android/launcher3/home/DexHomeConverter;->access$200(Lcom/android/launcher3/home/DexHomeConverter;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 428
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-static {v5}, Lcom/android/launcher3/home/DexHomeConverter;->access$200(Lcom/android/launcher3/home/DexHomeConverter;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 429
    iget-object v5, p0, Lcom/android/launcher3/home/DexHomeConverter$3;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getDexID()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/home/DexHomeConverter;->notifyItemId(JJ)V

    goto :goto_0

    .line 433
    .end local v0    # "c":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "f":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    return-void
.end method
