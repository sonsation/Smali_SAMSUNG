.class public Lcom/samsung/android/app/music/service/milk/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SyncManager"

.field private static final SYNC_DELAY:J = 0x3e8L

.field private static mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasPending:Z

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private mSyncRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHasPending:Z

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/SyncManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/SyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mSyncRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->init()V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->onActivityStarted(Landroid/app/Activity;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/SyncManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SyncManager;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->startSync(Z)V

    return-void
.end method

.method private checkDuplicatedPlaylistName(Lcom/samsung/android/app/music/common/model/playlist/Playlist;)V
    .locals 6
    .param p1, "playlist"    # Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    .prologue
    .line 210
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->hasPlaylistName(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s(%d)"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getDefaultPlaylistName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "suggest":Ljava/lang/String;
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDuplicatedPlaylistName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;-><init>()V

    .line 217
    .local v1, "req":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    const-string v3, "00"

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->setType(Ljava/lang/String;)V

    .line 218
    new-instance v3, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->addSimplePlaylist(Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;)V

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updatePlaylist(ILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "req":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    .end local v2    # "suggest":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v1    # "req":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    .restart local v2    # "suggest":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-nez v0, :cond_1

    .line 80
    const-class v1, Lcom/samsung/android/app/music/service/milk/SyncManager;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPlaylistsMap()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/model/playlist/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v7, "dateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/playlist/Playlist;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_sync =1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    :cond_0
    const-string/jumbo v0, "source_playlist_id"

    .line 236
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 235
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "sourcePlaylistId":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->from(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    .end local v8    # "sourcePlaylistId":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_2
    return-object v7
.end method

.method private startSync(Z)V
    .locals 5
    .param p1, "byLocalMusicMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSync byLocalMusicMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "SyncManager"

    const-string v2, "isMyMusicMode true, do not sync"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->isUsingData(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    const-string v1, "SyncManager"

    const-string v2, "isUsingData false, do not sync"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHasPending:Z

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHasPending:Z

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 118
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 119
    const-string v1, "SyncManager"

    const-string v2, "no account user, do not sync"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsNewSAUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->startSync(Z)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->syncPlaylist()V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedTracks(I)I

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getVoucher(I)I

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedSubscriptions(I)I

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAllFavoriteStations(I)I

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAllPersonalStations(I)I

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getRadioHistory(I)I

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->loadSettings(I)I

    goto/16 :goto_0
.end method

.method private syncPlaylist()V
    .locals 5

    .prologue
    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getNextReqId()I

    move-result v0

    .line 151
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 152
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->setOnApiInterceptCallback(Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->doWork()V

    .line 155
    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 247
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Ljava/lang/Object;
    .param p5, "errorCode"    # I

    .prologue
    .line 253
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    packed-switch p2, :pswitch_data_0

    .line 266
    .end local p4    # "successResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local p4    # "successResult":Ljava/lang/Object;
    :pswitch_0
    if-nez p3, :cond_0

    .line 258
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    if-eqz v0, :cond_0

    .line 259
    check-cast p4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    .end local p4    # "successResult":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->getPlaylists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->syncDownPlaylistTracks(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x296a
        :pswitch_0
    .end packed-switch
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 4
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged all.connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / hasPending :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHasPending:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHasPending:Z

    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->startSync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->release()V

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mInstance:Lcom/samsung/android/app/music/service/milk/SyncManager;

    .line 271
    return-void
.end method

.method public setMilkServiceInterface(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0
    .param p1, "milkService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .line 91
    return-void
.end method

.method public setOfflineMode(Z)V
    .locals 4
    .param p1, "offlineMode"    # Z

    .prologue
    .line 94
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOfflineMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mSyncRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->startSync(Z)V

    .line 137
    return-void
.end method

.method public syncDownPlaylistTracks(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "playlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/playlist/Playlist;>;"
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 159
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncDownPlaylistTracks playlists size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->getPlaylistsMap()Ljava/util/HashMap;

    move-result-object v17

    .line 161
    .local v17, "prevPlaylistMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/playlist/Playlist;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    .line 163
    .local v11, "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    const-wide/16 v14, -0x1

    .line 164
    .local v14, "prevDateModified":J
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    .line 165
    .local v16, "prevPlaylist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    if-eqz v16, :cond_1

    .line 166
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getUpdateDateLong()J

    move-result-wide v14

    .line 169
    :cond_1
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getUpdateDateLong()J

    move-result-wide v8

    .line 170
    .local v8, "dateModified":J
    cmp-long v2, v8, v14

    if-lez v2, :cond_3

    const/4 v10, 0x1

    .line 171
    .local v10, "needUpdate":Z
    :goto_1
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncDownPlaylistTracks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") playlist needUpdate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ dateModified : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prevDateModified : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz v10, :cond_0

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/music/service/milk/SyncManager;->checkDuplicatedPlaylistName(Lcom/samsung/android/app/music/common/model/playlist/Playlist;)V

    .line 178
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getTrackCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 179
    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getNextReqId()I

    move-result v5

    .line 180
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->doWork()V

    .line 181
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    const-string v2, "name"

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_2
    if-eqz v16, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->getContentUriForId(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 187
    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v10    # "needUpdate":Z
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 192
    .restart local v10    # "needUpdate":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    .line 194
    .local v12, "playlistId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->mContext:Landroid/content/Context;

    .line 196
    invoke-static {v12, v13}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    :cond_5
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncDownPlaylistTracks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " track count is 0. (delete all)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    .end local v8    # "dateModified":J
    .end local v10    # "needUpdate":Z
    .end local v11    # "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    .end local v12    # "playlistId":J
    .end local v14    # "prevDateModified":J
    .end local v16    # "prevPlaylist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    .end local v17    # "prevPlaylistMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/playlist/Playlist;>;"
    :cond_6
    const-string v2, "SyncManager"

    const-string/jumbo v3, "syncDownPlaylistTracks playlists is null or size 0"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_7
    return-void
.end method
