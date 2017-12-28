.class final Lcom/android/launcher3/common/model/IconCache$IconDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IconDB"
.end annotation


# static fields
.field static final COLUMN_COMPONENT:Ljava/lang/String; = "componentName"

.field static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field static final COLUMN_ICON_LOW_RES:Ljava/lang/String; = "icon_low_res"

.field static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field static final COLUMN_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field static final COLUMN_ROWID:Ljava/lang/String; = "rowid"

.field static final COLUMN_SYSTEM_STATE:Ljava/lang/String; = "system_state"

.field static final COLUMN_USER:Ljava/lang/String; = "profileId"

.field static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x7

.field static final TABLE_NAME:Ljava/lang/String; = "icons"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1033
    const-string v0, "app_icons.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1034
    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/common/model/IconCache$IconDB;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache$IconDB;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1067
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1068
    const-string v1, "DROP TABLE IF EXISTS icons"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1070
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1077
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Launcher.IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClearDB Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1038
    const-string v0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1060
    if-eq p2, p3, :cond_0

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1053
    if-eq p2, p3, :cond_0

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1056
    :cond_0
    return-void
.end method
