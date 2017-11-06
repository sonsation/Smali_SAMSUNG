.class public abstract Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.super Ljava/lang/Object;
.source "BaseDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;,
        Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;,
        Lcom/samsung/android/app/music/provider/dao/BaseDAO$ResetLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CREATE_VERSION:I = 0x4ee8

.field public static final CURRENT_TIME:Ljava/lang/String; = "strftime(\'%s\',\'now\')"

.field protected static final MAXIMUM_WHERE_CLAUSE_DEPTH:I = 0x3de

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field private mNotifyHandler:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "BaseDAO"

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected static execSQL(Ljava/lang/String;)V
    .locals 4
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    const-string v1, "BaseDAO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execSQL : sql - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized getNotifyHandler()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
    .locals 2

    .prologue
    .line 183
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->mNotifyHandler:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->mNotifyHandler:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->mNotifyHandler:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs makeCompoundQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "compound"    # Ljava/lang/String;
    .param p4, "subQueries"    # [Ljava/lang/String;

    .prologue
    .line 1101
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v0, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    array-length v2, p4

    if-lez v2, :cond_0

    .line 1105
    array-length v3, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p4, v2

    .line 1106
    .local v1, "subQuery":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "subQuery":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static moveAllRecords(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sourceTable"    # Ljava/lang/String;
    .param p2, "destTable"    # Ljava/lang/String;
    .param p3, "columns"    # Ljava/lang/String;

    .prologue
    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method protected static rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected createNewScheme(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tempTable"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "columns"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v3, 0x1

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNewScheme : scheme - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TEMP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, p4}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->moveAllRecords(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1217
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->moveAllRecords(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public abstract createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method public abstract createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract createView(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "whereClause":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 783
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v2, "delete : generated where clause is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x0

    .line 786
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 796
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v7, "delete : null or size 0"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v2, 0x0

    .line 834
    :goto_0
    return v2

    .line 800
    :cond_1
    const/4 v2, 0x0

    .line 801
    .local v2, "deleted":I
    const/4 v1, 0x0

    .line 804
    .local v1, "count":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 807
    .local v4, "model":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v1, v1, 0x1

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getDepthThreshold()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 810
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete : over threshold. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const/4 v1, 0x0

    .line 812
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;

    move-result-object v5

    .line 813
    .local v5, "whereClause":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 814
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v2, v7

    .line 816
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 828
    .end local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v4    # "model":Ljava/lang/Object;, "TT;"
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 829
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_0

    .line 820
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_4
    :try_start_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 821
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;

    move-result-object v5

    .line 822
    .restart local v5    # "whereClause":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 823
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    .line 825
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 827
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_0

    .end local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v6
.end method

.method public deleteByWhereClause(Ljava/lang/String;)I
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 875
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteByWhereClause(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 885
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public deleteByWhereClause(Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;)I
    .locals 4
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "notifyUri"    # [Landroid/net/Uri;

    .prologue
    .line 889
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->isPossibleModifyTable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 890
    const/4 v0, 0x0

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    const/4 v0, 0x0

    .line 895
    .local v0, "deleted":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 899
    :goto_1
    if-lez v0, :cond_0

    .line 900
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    goto :goto_0

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public deleteNotIn(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteNotIn(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteNotIn(Ljava/util/Collection;Ljava/lang/String;)I
    .locals 5
    .param p2, "additionalWhereClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 855
    .local v0, "ret":I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "whereClause":Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "selection":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id NOT IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    if-eqz p2, :cond_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v0

    .line 866
    return v0
.end method

.method public deleteTable()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifExists"    # Z

    .prologue
    .line 98
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->isPossibleModifyTable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void

    .line 99
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public abstract dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract dropView(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public varargs exceptQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "subQueries"    # [Ljava/lang/String;

    .prologue
    .line 1070
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const-string v0, "EXCEPT"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->makeCompoundQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "generator":Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "generateWhereclauseFromModels : models is null or size 0"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const/4 v4, 0x0

    .line 1195
    :goto_0
    return-object v4

    .line 1175
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1176
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    const/4 v1, 0x0

    .line 1178
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1179
    .local v2, "model":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 1180
    .local v3, "whereClause":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1181
    invoke-interface {p2, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;->generateWhereClause(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    :goto_2
    if-eqz v3, :cond_3

    .line 1186
    if-eqz v1, :cond_2

    .line 1187
    const-string v5, " OR "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    :cond_2
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1192
    goto :goto_1

    .line 1183
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1193
    .end local v2    # "model":Ljava/lang/Object;, "TT;"
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_5
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public get(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "rowId"    # J

    .prologue
    .line 457
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 406
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereClauseArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 425
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereClauseArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    .line 430
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getFromTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 397
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1289
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 249
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getCountByTable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v2, 0x0

    .line 254
    .local v2, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " =?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 265
    :cond_0
    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v0, 0x0

    .line 270
    :cond_1
    :goto_0
    return v2

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v0, 0x0

    :cond_2
    throw v4
.end method

.method public getCountByTable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 222
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v9, 0x0

    .line 223
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 225
    .local v8, "count":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "count(_id)"

    aput-object v3, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 228
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 234
    :cond_0
    if-eqz v9, :cond_1

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    .line 239
    :cond_1
    :goto_0
    return v8

    .line 231
    :catch_0
    move-exception v10

    .line 232
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    if-eqz v9, :cond_1

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    goto :goto_0

    .line 234
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    :cond_2
    throw v0
.end method

.method public getCountDistinct()I
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getCountDistinct(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountDistinct(Ljava/lang/String;)I
    .locals 11
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 280
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v10, 0x0

    .line 281
    .local v10, "ret":I
    const/4 v8, 0x0

    .line 283
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(distinct _id)"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 286
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 292
    :cond_0
    if-eqz v8, :cond_1

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    const/4 v8, 0x0

    .line 297
    :cond_1
    :goto_0
    return v10

    .line 289
    :catch_0
    move-exception v9

    .line 290
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-eqz v8, :cond_1

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    const/4 v8, 0x0

    goto :goto_0

    .line 292
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method protected getDepthThreshold()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/16 v1, 0x3de

    .line 1158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getWhereClauseExpressionCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1159
    .local v0, "count":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1160
    div-int/2addr v1, v0

    .line 1162
    :cond_0
    return v1
.end method

.method public getFromTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereClauseArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v5, 0x0

    .line 445
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, p6

    .line 447
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMax(Ljava/lang/String;)I
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 350
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 324
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v10, 0x0

    .line 325
    .local v10, "ret":I
    const/4 v8, 0x0

    .line 327
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 336
    :cond_0
    if-eqz v8, :cond_1

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v8, 0x0

    .line 341
    :cond_1
    :goto_0
    return v10

    .line 333
    :catch_0
    move-exception v9

    .line 334
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz v8, :cond_1

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v8, 0x0

    goto :goto_0

    .line 336
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public getModel(J)Ljava/lang/Object;
    .locals 3
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getModel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v8, 0x0

    .line 478
    .local v8, "model":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 482
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "1"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 496
    .end local v8    # "model":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v6, :cond_1

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 v6, 0x0

    .line 501
    :cond_1
    :goto_0
    return-object v8

    .line 493
    .restart local v8    # "model":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    .line 494
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    if-eqz v6, :cond_1

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 v6, 0x0

    goto :goto_0

    .line 496
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p2, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModels(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p2, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .line 534
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 538
    .local v2, "model":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 547
    .end local v2    # "model":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v0, :cond_3

    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 549
    const/4 v0, 0x0

    .line 552
    :cond_3
    :goto_0
    return-object p2

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    if-eqz v0, :cond_3

    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 549
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 549
    const/4 v0, 0x0

    :cond_4
    throw v3
.end method

.method public abstract getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
.end method

.method public getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 1092
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    if-eqz p2, :cond_0

    .line 1095
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getQueryTableName()Ljava/lang/String;
.end method

.method public getSum(Ljava/lang/String;)I
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 389
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getSum(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSum(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 380
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getSumByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSumByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 354
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v10, 0x0

    .line 355
    .local v10, "ret":I
    const/4 v8, 0x0

    .line 357
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sum("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 360
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 366
    :cond_0
    if-eqz v8, :cond_1

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v8, 0x0

    .line 371
    :cond_1
    :goto_0
    return v10

    .line 363
    :catch_0
    move-exception v9

    .line 364
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    if-eqz v8, :cond_1

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v8, 0x0

    goto :goto_0

    .line 366
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getViewName()Ljava/lang/String;
.end method

.method protected getWhereClauseExpressionCount()I
    .locals 1

    .prologue
    .line 1149
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Ljava/util/Collection;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 626
    .local v0, "inserted":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 628
    .local v2, "model":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v4

    .line 629
    .local v4, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v2    # "model":Ljava/lang/Object;, "TT;"
    .end local v4    # "rowId":J
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items are inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-lez v0, :cond_2

    .line 637
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 639
    :cond_2
    return v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Object;Z)J
    .locals 4
    .param p2, "notifyChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)J"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 616
    .local v0, "value":Landroid/content/ContentValues;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insertContentValues(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertContentValues(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 593
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insertContentValues(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertContentValues(Landroid/content/ContentValues;Z)J
    .locals 8
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "notifyChange"    # Z

    .prologue
    .line 564
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const-wide/16 v2, -0x1

    .line 565
    .local v2, "rowId":J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->isPossibleModifyTable()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v4, v2

    .line 584
    .end local v2    # "rowId":J
    .local v4, "rowId":J
    :goto_0
    return-wide v4

    .line 570
    .end local v4    # "rowId":J
    .restart local v2    # "rowId":J
    :cond_0
    if-eqz p1, :cond_2

    .line 571
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 580
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    if-eqz p2, :cond_1

    .line 581
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    :cond_1
    move-wide v4, v2

    .line 584
    .end local v2    # "rowId":J
    .restart local v4    # "rowId":J
    goto :goto_0

    .line 574
    .end local v4    # "rowId":J
    .restart local v2    # "rowId":J
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "insertContentValues : value is null"

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertContentValues : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public insertOrUpdate(Ljava/util/Collection;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const-wide/16 v8, 0x0

    .line 751
    const/4 v0, 0x0

    .line 753
    .local v0, "inserted":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 755
    .local v2, "model":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v4

    .line 757
    .local v4, "rowId":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "insertOrupdate : row id is under zero. so update."

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/lang/Object;)I

    move-result v3

    int-to-long v4, v3

    .line 762
    :cond_1
    cmp-long v3, v4, v8

    if-ltz v3, :cond_0

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    .end local v2    # "model":Ljava/lang/Object;, "TT;"
    .end local v4    # "rowId":J
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items are inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-lez v0, :cond_3

    .line 770
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->INSERT:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 772
    :cond_3
    return v0
.end method

.method public insertOrUpdate(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 731
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 732
    .local v0, "rowId":J
    const-wide/16 v2, 0x0

    .line 734
    .local v2, "updated":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_0

    .line 735
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v5, "insertOrupdate : row id is under zero. so update."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/lang/Object;)I

    move-result v4

    int-to-long v2, v4

    .line 738
    :cond_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public insertOrUpdateWithTx(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .line 679
    .local v1, "inserted":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "insertWithTx : null or size 0"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 693
    .end local v1    # "inserted":I
    .local v2, "inserted":I
    :goto_0
    return v2

    .line 685
    .end local v2    # "inserted":I
    .restart local v1    # "inserted":I
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 686
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insertOrUpdate(Ljava/util/Collection;)I

    move-result v1

    .line 687
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    :goto_1
    move v2, v1

    .line 693
    .end local v1    # "inserted":I
    .restart local v2    # "inserted":I
    goto :goto_0

    .line 688
    .end local v2    # "inserted":I
    .restart local v1    # "inserted":I
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v3
.end method

.method public insertWithTx(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .line 651
    .local v1, "inserted":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "insertWithTx : null or size 0"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 666
    .end local v1    # "inserted":I
    .local v2, "inserted":I
    :goto_0
    return v2

    .line 658
    .end local v2    # "inserted":I
    .restart local v1    # "inserted":I
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 659
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/util/Collection;)I

    move-result v1

    .line 660
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    :goto_1
    move v2, v1

    .line 666
    .end local v1    # "inserted":I
    .restart local v2    # "inserted":I
    goto :goto_0

    .line 661
    .end local v2    # "inserted":I
    .restart local v1    # "inserted":I
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v3
.end method

.method public abstract isPossibleModifyTable()Z
.end method

.method protected notifyDatabaseUpdate([Landroid/net/Uri;)V
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1250
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 1251
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1252
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyHandler()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->notifyUri(Landroid/net/Uri;)V

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected notifyDatabaseUpdateImmediately(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1258
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyHandler()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->internalNotifyUri(Landroid/net/Uri;)V

    .line 1259
    return-void
.end method

.method public now()I
    .locals 4

    .prologue
    .line 193
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v2, 0x0

    .line 195
    .local v2, "time":I
    const/4 v0, 0x0

    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT strftime(\'%s\',\'now\')"

    invoke-static {v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 205
    :cond_0
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    .line 210
    :cond_1
    :goto_0
    return v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    :cond_2
    throw v3
.end method

.method public nowDevice()I
    .locals 4

    .prologue
    .line 218
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected final registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1269
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyHandler()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->registerUri(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "resetLevel"    # I

    .prologue
    .line 1237
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetDatabase : resetLevel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    packed-switch p2, :pswitch_data_0

    .line 1243
    :goto_0
    return-void

    .line 1240
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteTable()I

    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public varargs unionQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "subQueries"    # [Ljava/lang/String;

    .prologue
    .line 1082
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const-string v0, "UNION"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->makeCompoundQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 920
    .local v0, "value":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, "where":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 922
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "update : generated where clause is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/4 v2, 0x0

    .line 925
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public update(Ljava/util/Collection;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "models":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v4, 0x0

    .line 935
    .local v4, "updated":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 937
    .local v1, "model":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/lang/Object;)I

    move-result v5

    int-to-long v2, v5

    .line 938
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 939
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 942
    .end local v1    # "model":Ljava/lang/Object;, "TT;"
    .end local v2    # "rowId":J
    :cond_1
    return v4
.end method

.method public updateContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 953
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p2, "modelForWhereCluase":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    .line 954
    .local v0, "rowId":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    .line 955
    return v0
.end method

.method public updateContentValues(Landroid/content/ContentValues;Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)I
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p2, "modelsForWhereClause":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p3, "generator":Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator<TT;>;"
    const/4 v4, 0x0

    .line 972
    .local v4, "updated":I
    const/4 v1, 0x0

    .line 975
    .local v1, "count":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v0, "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 979
    .local v3, "model":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 980
    add-int/lit8 v1, v1, 0x1

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getDepthThreshold()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 982
    const/4 v1, 0x0

    .line 983
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;

    move-result-object v5

    .line 984
    .local v5, "whereClause":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 985
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 987
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 999
    .end local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v3    # "model":Ljava/lang/Object;, "TT;"
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1000
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    .line 1005
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 991
    .restart local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->generateWhereclauseFromModels(Ljava/util/Collection;Lcom/samsung/android/app/music/provider/dao/BaseDAO$IWhereClauseGenerator;)Ljava/lang/String;

    move-result-object v5

    .line 992
    .restart local v5    # "whereClause":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 993
    if-eqz v5, :cond_3

    .line 994
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 996
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 998
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_1

    .end local v0    # "alterModels":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v5    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v6
.end method

.method public updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 1015
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "notify"    # Z

    .prologue
    .line 1026
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "uris"    # [Landroid/net/Uri;
    .param p5, "notify"    # Z

    .prologue
    .line 1042
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->isPossibleModifyTable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1043
    const/4 v1, 0x0

    .line 1058
    :cond_0
    :goto_0
    return v1

    .line 1046
    :cond_1
    const/4 v1, 0x0

    .line 1048
    .local v1, "rowId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1049
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1054
    :goto_1
    if-lez v1, :cond_0

    if-eqz p5, :cond_0

    .line 1055
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public abstract updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public updateWithTx(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<TT;>;"
    .local p1, "model":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .line 705
    .local v1, "updated":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 706
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateWithTx : null or size 0"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v2, 0x0

    .line 718
    :goto_0
    return v2

    .line 710
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 711
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/util/Collection;)I

    move-result v1

    .line 712
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    :goto_1
    move v2, v1

    .line 718
    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v2
.end method
