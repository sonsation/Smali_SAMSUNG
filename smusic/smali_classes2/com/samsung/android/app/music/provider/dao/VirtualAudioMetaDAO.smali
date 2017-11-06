.class public Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.source "VirtualAudioMetaDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$VirtualAudioMetaColumns;


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "virtual_audio_meta"

.field public static final VIEW_NAME:Ljava/lang/String; = "all_audio"

.field private static volatile mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->mInstance:Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 30
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 32
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "virtual_audio_meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "source_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "title_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "artist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drm_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "source_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT IGNORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void

    .line 30
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 80
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    const-string v0, "CREATE VIEW IF NOT EXISTS all_audio AS SELECT _id, title, title_key, -1 AS album_id, artist, 0 AS is_secretbox, drm_type, 0 AS sampling_rate, 0 AS bit_depth, null AS mime_type, 524296 AS cp_attrs, source_id FROM virtual_audio_meta UNION ALL SELECT _id, title, title_key, album_id, artist, is_secretbox, drm_type, sampling_rate, bit_depth, mime_type, cp_attrs, source_id FROM audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 90
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    return-void
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "virtual_audio_meta"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "all_audio"

    return-object v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 94
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 95
    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 101
    :cond_0
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
