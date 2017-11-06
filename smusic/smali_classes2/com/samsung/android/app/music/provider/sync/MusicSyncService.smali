.class public Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.super Landroid/app/Service;
.source "MusicSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;,
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;,
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncImplFactory;,
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncEvent;
    }
.end annotation


# static fields
.field private static final ARGS_SYNC_EVENT:Ljava/lang/String; = "args_sync_event"

.field private static final DEBUG:Z = false

.field private static final LIMIT_COUNT:Ljava/lang/String; = "10"

.field private static final PER_UPDATE_MAX_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private volatile mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;-><init>(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mServiceLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;)Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
    .param p1, "x1"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->handleSyncService(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->finishService(I)V

    return-void
.end method

.method private finishService(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 292
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishService startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->stopSelf(I)V

    .line 294
    return-void
.end method

.method private handleSyncService(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 299
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v3, "SyncRequestHandler handleMessage - no storage permission : skip"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 306
    :try_start_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncImplFactory;->newInstance(Landroid/content/Context;I)Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;

    move-result-object v1

    .line 307
    .local v1, "syncable":Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;
    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;->doSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1    # "syncable":Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public static sync(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncEvent"    # I

    .prologue
    const/4 v6, 0x1

    .line 136
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sync event : 0x%04X from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 137
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    .line 136
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args_sync_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void
.end method

.method public static syncFilesDirectly(Landroid/content/Context;[J)Z
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceAudioIds"    # [J

    .prologue
    .line 148
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v8, 0x1

    if-ge v4, v8, :cond_1

    .line 149
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "syncFilesDirectly : sourceAudioIds are invalid"

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v4, 0x0

    .line 209
    :goto_0
    return v4

    .line 153
    :cond_1
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    .local v5, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "group_concat(source_id, \',\')"

    aput-object v8, v6, v4

    .line 156
    .local v6, "projection":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v14, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v8, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_2

    aget-wide v24, p1, v4

    .line 158
    .local v24, "sourceId":J
    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .end local v24    # "sourceId":J
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 163
    .local v22, "sourceAudioIdsString":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syncFilesDirectly : sourceAudioIds "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "source_id IN ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") AND "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "cp_attrs"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v8, 0x10001

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "selection":Ljava/lang/String;
    const/16 v17, 0x0

    .line 169
    .local v17, "existsIds":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 170
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 169
    .local v15, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 171
    if-eqz v15, :cond_3

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v17

    .line 174
    :cond_3
    if-eqz v15, :cond_4

    if-eqz v8, :cond_8

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :cond_4
    :goto_2
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syncFilesDirectly : existsIds "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v19, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;

    const/16 v4, 0xa

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v19, "mediaInserter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
    const-wide/16 v20, 0x0

    .line 180
    .local v20, "lastId":J
    const/16 v16, 0x0

    .line 183
    .local v16, "count":I
    :cond_5
    :goto_3
    new-instance v26, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;

    const-string v4, "10"

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;-><init>(JLjava/lang/String;)V

    .line 184
    .local v26, "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " AND _id IN("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    .line 185
    if-eqz v17, :cond_6

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " AND _id NOT IN("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    .line 189
    :cond_6
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceColumns:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v8, p0

    .line 190
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 189
    const/4 v8, 0x0

    .line 192
    if-eqz v15, :cond_b

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 193
    .local v23, "srcCount":I
    :goto_4
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "syncFilesDirectly() : srcCount - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 194
    if-nez v23, :cond_d

    .line 205
    if-eqz v15, :cond_7

    if-eqz v8, :cond_c

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 207
    :cond_7
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->flushAll()I

    move-result v4

    add-int v16, v16, v4

    .line 208
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syncFilesDirectly() : end : insertedCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 174
    .end local v16    # "count":I
    .end local v19    # "mediaInserter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
    .end local v20    # "lastId":J
    .end local v23    # "srcCount":I
    .end local v26    # "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    :catch_0
    move-exception v4

    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 169
    :catch_1
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    :catchall_0
    move-exception v8

    move-object/from16 v27, v8

    move-object v8, v4

    move-object/from16 v4, v27

    :goto_6
    if-eqz v15, :cond_9

    if-eqz v8, :cond_a

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_7
    throw v4

    :catch_2
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 192
    .restart local v16    # "count":I
    .restart local v19    # "mediaInserter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
    .restart local v20    # "lastId":J
    .restart local v26    # "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    :cond_b
    const/16 v23, 0x0

    goto :goto_4

    .line 205
    .restart local v23    # "srcCount":I
    :catch_3
    move-exception v4

    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 197
    :cond_d
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 198
    :try_start_6
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 199
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 200
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const v9, 0x10001

    const-string v10, "mediaStore"

    .line 202
    invoke-static {v15, v9, v10}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->makeContentValue(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 200
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v4

    add-int v16, v16, v4

    .line 197
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 205
    :cond_e
    if-eqz v15, :cond_5

    if-eqz v8, :cond_f

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v4

    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 189
    .end local v18    # "i":I
    .end local v23    # "srcCount":I
    :catch_5
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    :catchall_1
    move-exception v8

    move-object/from16 v27, v8

    move-object v8, v4

    move-object/from16 v4, v27

    :goto_9
    if-eqz v15, :cond_10

    if-eqz v8, :cond_11

    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_10
    :goto_a
    throw v4

    :catch_6
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_11
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_2
    move-exception v4

    goto :goto_9

    .line 174
    .end local v16    # "count":I
    .end local v19    # "mediaInserter":Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
    .end local v20    # "lastId":J
    .end local v26    # "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    :catchall_3
    move-exception v4

    goto :goto_6
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 215
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v3, "onCreate is called"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 218
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mRunnable:Ljava/lang/Runnable;

    const-string v4, "MusicSyncService"

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 224
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 271
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy - start"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mServiceLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 273
    monitor-enter p0

    .line 275
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v2, "MusicSyncService thread wake up by interrupt."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 282
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy - end"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 284
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    .line 229
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartCommand intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    if-nez v5, :cond_0

    .line 231
    monitor-enter p0

    .line 233
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v6, "MusicSyncService thread wake up by interrupt."

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-nez p1, :cond_1

    .line 241
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent is null in onStartCommand startId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->finishService(I)V

    move v2, v4

    .line 265
    :goto_2
    return v2

    .line 246
    :cond_1
    const/4 v2, 0x3

    .line 247
    .local v2, "retState":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_sync_event"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 248
    .local v3, "syncEvent":I
    if-ne v3, v8, :cond_2

    .line 249
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->finishService(I)V

    move v2, v4

    .line 250
    goto :goto_2

    .line 254
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v5, "onStartCommand() sync event: 0x%04X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    const-string v5, "We receive a same request for syncing media. It will be ignored."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 260
    .local v1, "m":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->mSyncRequestHandler:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    const/4 v2, 0x2

    .line 264
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
