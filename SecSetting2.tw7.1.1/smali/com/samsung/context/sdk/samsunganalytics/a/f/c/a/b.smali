.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Unknown"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "SamsungAnalytics.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "create table logs (_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, data TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    return-void
.end method
