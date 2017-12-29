.class public Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PushFilterDBOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PCWCLIENTTRACE_PushFilterDBOpenHelper"

.field static factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field static name:Ljava/lang/String;

.field static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "pushfilter.db"

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->name:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->version:I

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->name:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    sget v2, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->version:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v1, "CREATE TABLE pushfilter ( _id INTEGER PRIMARY KEY autoincrement, time INTEGER , messageid TEXT,savetime DATETIME DEFAULT (date(\'now\')))"

    .line 32
    .local v1, "query":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PCWCLIENTTRACE_PushFilterDBOpenHelper"

    const-string v3, "Create DB FAIL"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 41
    const-string v0, "DROP TABLE IF EXISTS pushfilter"

    .line 42
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method
