.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;
.super Ljava/lang/Object;
.source "ServiceCallbackStub.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioMediaObserver"
.end annotation


# instance fields
.field private final mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$1;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 183
    monitor-exit v2

    .line 184
    return-void

    .line 183
    .end local v0    # "data":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    monitor-enter v5

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V

    .line 198
    const-string v4, "extra.list_position"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "listPosition":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 200
    .local v2, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v4, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 201
    .local v3, "metaListPosition":I
    if-eq v1, v3, :cond_0

    .line 202
    const-string v4, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    int-to-long v6, v1

    .line 203
    invoke-static {v2, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 205
    .local v0, "changedMeta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 207
    .end local v0    # "changedMeta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :cond_0
    monitor-exit v5

    .line 208
    return-void

    .line 207
    .end local v1    # "listPosition":I
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v3    # "metaListPosition":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
