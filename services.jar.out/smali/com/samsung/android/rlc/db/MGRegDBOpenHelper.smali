.class public Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MGRegDBOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field static name:Ljava/lang/String;

.field static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "rmmreg.db"

    .line 13
    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v0, 0x1

    .line 15
    sput v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->version:I

    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->name:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    sget v2, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->version:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "CREATE TABLE rmmreg ( _id INTEGER PRIMARY KEY autoincrement, pushreg TEXT,pushtype TEXT,dlvurl TEXT,savetime DATETIME DEFAULT (date(\'now\')))"

    const-string/jumbo v1, "CREATE TABLE rmmpref ( _id INTEGER PRIMARY KEY autoincrement, key TEXT,value TEXT,savetime DATETIME DEFAULT (date(\'now\')))"

    .line 36
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Create DB FAIL"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    const-string/jumbo v0, "DROP TABLE IF EXISTS rmmreg"

    .line 47
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method
