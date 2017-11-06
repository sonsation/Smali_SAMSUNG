.class Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;
.super Ljava/lang/Object;
.source "SyncLocalContentsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# instance fields
.field private final mAddDeleteOnly:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;-><init>(Landroid/content/Context;Z)V

    .line 17
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addDeleteOnly"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mContext:Landroid/content/Context;

    .line 21
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mAddDeleteOnly:Z

    .line 22
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 5

    .prologue
    .line 26
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mAddDeleteOnly:Z

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;-><init>(Landroid/content/Context;Z)V

    .line 27
    .local v1, "syncImpl":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->doSync()V

    .line 28
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->isSynced()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->doSync()V

    .line 32
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "orderId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->doSync()V

    goto :goto_0
.end method
