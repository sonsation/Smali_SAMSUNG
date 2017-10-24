.class Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/DesktopModePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final MODE_COLUMN:Ljava/lang/String; = "mode"

.field protected static final MODE_NONE:I = 0x0

.field private static final PKG_COLUMN:Ljava/lang/String; = "packagename"

.field protected static final POLICY_LAUNCH_PACKAGE_TABLE:Ljava/lang/String; = "LaunchPackageList"

.field protected static final POLICY_MODE_CHANGE_PACKAGE_TABLE:Ljava/lang/String; = "ModeChangePackageList"

.field private static final POLICY_UPDATE_DB:Ljava/lang/String; = "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

.field private static final POLICY_UPDATE_DB_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const-string/jumbo v0, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 203
    return-void
.end method


# virtual methods
.method protected findPackageMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "findMode"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    const/4 v11, 0x0

    .line 224
    .local v11, "ret":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 226
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_d

    .line 229
    :try_start_0
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "query, beginTransaction()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "mode"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v3, "packagename=?"

    .line 231
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 230
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 233
    .local v10, "mCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "query, setTransactionSuccessful()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchMode, cursor ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 249
    :cond_4
    :goto_0
    if-eqz v10, :cond_5

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 257
    .end local v10    # "mCursor":Landroid/database/Cursor;
    :cond_6
    :goto_1
    return v11

    .line 241
    .restart local v10    # "mCursor":Landroid/database/Cursor;
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getLaunchMode, cursor is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v10    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 245
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :cond_8
    if-eqz v10, :cond_9

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    .line 246
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 247
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :cond_a
    if-eqz v10, :cond_b

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    .line 248
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 249
    if-eqz v10, :cond_c

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 248
    throw v1

    .line 255
    .local v10, "mCursor":Landroid/database/Cursor;
    :cond_d
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getReadableDatabase() is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 208
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 212
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 217
    return-void
.end method
