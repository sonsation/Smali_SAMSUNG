.class final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingProviderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingDBHelper"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final DATABASE_VERSION:I = 0x1

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PRIMARY_DATABASE_NAME:Ljava/lang/String; = "setting.db"

.field private static final SETTING_TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string/jumbo v0, "setting.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 144
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    .line 139
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 166
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "updateDatabase fromVersion[%d],  toVersion[%d])"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 167
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-le p2, p3, :cond_0

    .line 171
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :cond_0
    const-string v0, "CREATE TABLE IF NOT EXISTS setting (name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 148
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 150
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 154
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 157
    return-void
.end method
