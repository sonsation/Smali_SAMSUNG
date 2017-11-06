.class Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/storage/DBHandler;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->this$0:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    .line 197
    const-string v0, "ppmt.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 198
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 202
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create Tables"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS card (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE,tid TEXT, mtype TEXT, data TEXT, state TEXT, rc INTEGER, extra TEXT, mrt INTEGER, mdt INTEGER, expdt INTEGER  );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    const-string v1, "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE CONSTRAINT fk_cardtable_mid REFERENCES card(mid) ON DELETE CASCADE,lfbid INTEGER NOT NULL,lts INTEGER NOT NULL,fbid TEXT NOT NULL,fv TEXT NOT NULL,ts TEXT NOT NULL,state TEXT NOT NULL, try INTEGER NOT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v1, "CREATE TRIGGER IF NOT EXISTS trigger_delete_fb BEFORE DELETE ON card FOR EACH ROW BEGIN  DELETE FROM feedback WHERE feedback.mid= OLD.mid; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v1, "CREATE TABLE IF NOT EXISTS update_data (key TEXT NOT NULL, value TEXT, type TEXT NOT NULL, send_done INTEGER NOT NULL DEFAULT 0, UNIQUE (key, type) ON CONFLICT REPLACE );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v1, "CREATE TABLE IF NOT EXISTS cumulative_data (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string v1, "CREATE TABLE IF NOT EXISTS cumulative_data_reg (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception onCreate DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
