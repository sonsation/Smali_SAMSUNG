.class Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;
.super Ljava/lang/Object;
.source "SyncCheckImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private checkNeedSync(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 30
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 32
    .local v8, "hasPermission":Z
    const/4 v7, 0x0

    .line 33
    .local v7, "count":I
    if-eqz v8, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v10

    const-string v3, "cp_attrs=65537"

    move-object v5, v4

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 41
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNeedSync : count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-ge v7, v9, :cond_5

    move v0, v9

    :goto_1
    return v0

    .line 41
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    move v0, v10

    .line 44
    goto :goto_1

    .line 41
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public doSync()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->checkNeedSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->doSync()V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->syncUp(Landroid/content/Context;Z)V

    .line 27
    :cond_0
    return-void
.end method
