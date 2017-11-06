.class Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;
.super Ljava/lang/Object;
.source "SyncInitProcessImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 5

    .prologue
    .line 19
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;->doSync()V

    .line 20
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, "syncImpl":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->doSync()V

    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->isSynced()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "orderId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->doSync()V

    .line 31
    .end local v0    # "orderId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->syncUp(Landroid/content/Context;Z)V

    .line 32
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncPostRestoreContentsImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPostRestoreContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncPostRestoreContentsImpl;->doSync()V

    .line 33
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->doSync()V

    goto :goto_0
.end method