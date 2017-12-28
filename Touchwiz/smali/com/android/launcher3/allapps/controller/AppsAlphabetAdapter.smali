.class public Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;
.super Lcom/android/launcher3/allapps/controller/AppsAdapter;
.source "AppsAlphabetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsAlphabetAdapter"


# instance fields
.field private final mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;
    .param p3, "holder"    # Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V

    .line 46
    new-instance v0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;)Lcom/android/launcher3/allapps/controller/Normalizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    return-object v0
.end method


# virtual methods
.method public createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 22
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "targetItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v6, "createFolderAndAddItem"

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 152
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "screen"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "rank"

    aput-object v7, v4, v6

    .line 155
    .local v4, "projection":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "selection":Ljava/lang/String;
    new-instance v18, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;-><init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;)V

    .line 158
    .local v18, "rawInfo":Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;
    const/16 v16, 0x0

    .line 160
    .local v16, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 161
    if-nez v16, :cond_1

    .line 162
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query fail, itemInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v6

    if-eqz v16, :cond_0

    .line 171
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v6

    .line 165
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    const-string v6, "screen"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->screenId:I

    .line 167
    const-string v6, "rank"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->rank:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :cond_2
    if-eqz v16, :cond_3

    .line 171
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_3
    const-wide/16 v6, -0x66

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 177
    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 180
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 181
    .local v12, "oldParentId":J
    const-wide/16 v6, -0x66

    cmp-long v6, v12, v6

    if-nez v6, :cond_4

    const/4 v11, 0x1

    .line 182
    .local v11, "isInApps":Z
    :goto_1
    const-wide/16 v6, -0x66

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 183
    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 184
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iput v6, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 188
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v21, "values":Landroid/content/ContentValues;
    const-string v6, "container"

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v7, "screen"

    if-eqz v11, :cond_5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->screenId:I

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v7, "rank"

    if-eqz v11, :cond_6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->rank:I

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 194
    const-string v6, "AppsAlphabetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position info to create folder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "container"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "screen"

    .line 195
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "rank"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v20, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v15, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 201
    .local v17, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 202
    const-wide/16 v8, -0x1

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 203
    const/4 v7, -0x1

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 204
    const/4 v7, 0x1

    move-object/from16 v0, v17

    iput-boolean v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 206
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v19, "update":Landroid/content/ContentValues;
    const-string v7, "container"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v7, "screen"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v7, "rank"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 181
    .end local v11    # "isInApps":Z
    .end local v15    # "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v17    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v19    # "update":Landroid/content/ContentValues;
    .end local v20    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 190
    .restart local v11    # "isInApps":Z
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v6, -0x1

    goto/16 :goto_2

    .line 191
    :cond_6
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 213
    .restart local v15    # "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v20    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    invoke-virtual {v6, v7, v0, v15}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 215
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v14, p2

    invoke-direct/range {v7 .. v15}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;ZJLcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method public getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "AppsAlphabetAdapter"

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method protected removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v3, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    .line 289
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v2

    .line 290
    .local v2, "maxItems":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v0

    .line 291
    .local v0, "cellCountX":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 292
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->rearrangeAllViews(Z)V

    .line 293
    return-void
.end method

.method protected updateAppsContents(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "oldItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 51
    const-string v4, "AppsAlphabetAdapter"

    const-string v5, "no change items"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v3, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeApps(Ljava/util/ArrayList;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .local v0, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v2

    .line 66
    .local v2, "maxItems":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v1

    .line 67
    .local v1, "cellCountX":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 69
    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->rearrangeAllViews(Z)V

    .line 74
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->addItemView(Ljava/util/ArrayList;Z)V

    .line 76
    const-string v4, "removeApps : "

    invoke-static {v4, v3}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    const-string v4, "addItemView"

    invoke-static {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected updateFolderContents(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "folderItems":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v3

    .line 82
    .local v3, "count":I
    const/4 v11, 0x0

    .line 84
    .local v11, "rearrange":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v8

    .line 86
    .local v8, "key":J
    const-wide/16 v14, -0x66

    cmp-long v13, v8, v14

    if-eqz v13, :cond_2

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 88
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v4, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v12, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 91
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v14

    if-eqz v14, :cond_0

    iget v14, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v14, :cond_0

    .line 93
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v13, v12}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->updateApps(Ljava/util/ArrayList;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v13, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeApps(Ljava/util/ArrayList;)V

    .line 101
    const-string v13, "removeApps : "

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v14, v8, v9}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 102
    const-string v13, "update folder item : "

    invoke-static {v13, v12}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    const-string v13, "remove folder item : "

    invoke-static {v13, v4}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 106
    const/4 v11, 0x1

    .line 84
    .end local v4    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v12    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    .end local v8    # "key":J
    :cond_3
    if-eqz v11, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v13}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v10

    .line 113
    .local v10, "maxItems":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v13}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v2

    .line 114
    .local v2, "cellCountX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v14, v10, v2}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->rearrangeAllViews(Z)V

    .line 117
    .end local v2    # "cellCountX":I
    .end local v10    # "maxItems":I
    :cond_4
    return-void
.end method

.method public updateIconAndTitle(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
