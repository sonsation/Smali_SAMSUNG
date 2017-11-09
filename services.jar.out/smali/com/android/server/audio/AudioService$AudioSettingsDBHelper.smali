.class Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSettingsDBHelper"
.end annotation


# static fields
.field private static final APP_VOLUME_TABLE:Ljava/lang/String; = "app_volume"

.field private static final CATEGORY_TABLE:Ljava/lang/String; = "category_packages"

.field private static final DB_NAME:Ljava/lang/String; = "audioservice_sec.db"

.field private static final DB_VERSION:I = 0x1

.field private static final DEVICE_ADDR_TABLE:Ljava/lang/String; = "device_addr"

.field private static final SETTINGS_TABLE:Ljava/lang/String; = "audio_settings"

.field private static final TAG:Ljava/lang/String; = "AudioService.DB"

.field private static final _ADDR:Ljava/lang/String; = "_addr"

.field private static final _CATEGORY:Ljava/lang/String; = "_category"

.field private static final _ID:Ljava/lang/String; = "_id"

.field private static final _INDEX:Ljava/lang/String; = "_index"

.field private static final _KEY:Ljava/lang/String; = "_key"

.field private static final _PACKAGE:Ljava/lang/String; = "_package"

.field private static final _UID:Ljava/lang/String; = "_uid"

.field private static final _VALUE:Ljava/lang/String; = "_value"


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 12872
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->this$0:Lcom/android/server/audio/AudioService;

    .line 12873
    const-string/jumbo v0, "audioservice_sec.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 12872
    return-void
.end method

.method private getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "columnIndex"    # I

    .prologue
    .line 12933
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12934
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 12935
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 12937
    .local v10, "result":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 12938
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 12939
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12940
    invoke-interface {v8, p4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 12945
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 12947
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v10

    .line 12942
    :catch_0
    move-exception v9

    .line 12943
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v1, "AudioService.DB"

    const-string/jumbo v2, "DB error"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12945
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 12944
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    .line 12945
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 12944
    :cond_2
    throw v1
.end method

.method private remove(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 12963
    const/4 v2, 0x0

    .line 12964
    .local v2, "ret":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12966
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 12970
    :goto_0
    return v2

    .line 12967
    :catch_0
    move-exception v1

    .line 12968
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "AudioService.DB"

    const-string/jumbo v4, "DB error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 12951
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12953
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 12954
    .local v2, "updateResult":I
    if-gtz v2, :cond_0

    .line 12955
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12950
    .end local v2    # "updateResult":I
    :cond_0
    :goto_0
    return-void

    .line 12957
    :catch_0
    move-exception v1

    .line 12958
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "AudioService.DB"

    const-string/jumbo v4, "DB error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAppVolume(I)I
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 13019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_uid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13020
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "app_volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_uid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "_index"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getBTVolumeIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 13006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_addr=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13007
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "device_addr"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_addr"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "_index"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_key=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12975
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v4, "audio_settings"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_key"

    aput-object v6, v5, v2

    const-string/jumbo v6, "_value"

    aput-object v6, v5, v3

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 12976
    .local v0, "ret":I
    if-gtz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 12980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12981
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "audio_settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "_value"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPackageList()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13055
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 13056
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 13057
    .local v11, "packageList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 13060
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "category_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_package"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "_category"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 13061
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 13062
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13064
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 13065
    .local v12, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 13066
    .local v8, "category":Ljava/lang/String;
    invoke-virtual {v11, v12, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13067
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13069
    .end local v8    # "category":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13075
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v11

    .line 13071
    :catch_0
    move-exception v10

    .line 13072
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AudioService.DB"

    const-string/jumbo v2, "DB error"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13073
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getPackageListFromCategory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13037
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 13038
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 13039
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 13040
    .local v10, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_category=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13042
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "category_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_package"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "_category"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 13043
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13044
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13046
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 13047
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v1, "AudioService.DB"

    const-string/jumbo v2, "DB error"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13049
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 13051
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v10

    .line 13049
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 13048
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 13049
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 13048
    :cond_2
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 12879
    :try_start_0
    const-string/jumbo v1, "CREATE TABLE audio_settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, _key TEXT UNIQUE, _value INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12887
    const-string/jumbo v1, "CREATE TABLE device_addr (_id INTEGER PRIMARY KEY AUTOINCREMENT, _addr TEXT UNIQUE, _index INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12895
    const-string/jumbo v1, "CREATE TABLE app_volume (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER UNIQUE, _index INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12903
    const-string/jumbo v1, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT, _category TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12877
    :goto_0
    return-void

    .line 12910
    :catch_0
    move-exception v0

    .line 12911
    .local v0, "ex":Landroid/database/SQLException;
    const-string/jumbo v1, "AudioService.DB"

    const-string/jumbo v2, "Create DB Create failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 12917
    const-string/jumbo v0, "DROP TABLE IF EXISTS audio_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12918
    const-string/jumbo v0, "DROP TABLE IF EXISTS device_addr"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12919
    const-string/jumbo v0, "DROP TABLE IF EXISTS app_volume"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12920
    const-string/jumbo v0, "DROP TABLE IF EXISTS category_packages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12921
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12916
    return-void
.end method

.method public removeAppVolume(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 13032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_uid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13033
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "app_volume"

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 13087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_package=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13088
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "category_packages"

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    .line 13086
    return-void
.end method

.method public removeValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 13001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13002
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v1, "audio_settings"

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public resetTable()V
    .locals 2

    .prologue
    .line 12925
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12926
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "delete from audio_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12927
    const-string/jumbo v1, "delete from device_addr"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12928
    const-string/jumbo v1, "delete from app_volume"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12929
    const-string/jumbo v1, "delete from category_packages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12924
    return-void
.end method

.method public setAppVolume(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "index"    # I

    .prologue
    .line 13024
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13025
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13026
    const-string/jumbo v2, "_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13028
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "app_volume"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 13023
    return-void
.end method

.method public setBTVolumeIndex(Ljava/lang/String;I)V
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 13011
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13012
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_addr"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13013
    const-string/jumbo v2, "_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_addr=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13015
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "device_addr"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 13010
    return-void
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 12985
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12986
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12987
    const-string/jumbo v3, "_value"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_key=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12989
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "audio_settings"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 12984
    return-void

    .line 12987
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 13079
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13080
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_package"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13081
    const-string/jumbo v2, "_category"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_package=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13083
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "category_packages"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 13078
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 12993
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12994
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12995
    const-string/jumbo v2, "_value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_key=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12997
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "audio_settings"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 12992
    return-void
.end method
