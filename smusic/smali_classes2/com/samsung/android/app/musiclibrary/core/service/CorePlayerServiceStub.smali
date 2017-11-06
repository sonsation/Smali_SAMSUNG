.class final Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;
.super Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;
.source "CorePlayerServiceStub.java"


# instance fields
.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mServiceFacade:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 29
    return-void
.end method


# virtual methods
.method public addQueue([JIZI)V
    .locals 1
    .param p1, "ids"    # [J
    .param p2, "action"    # I
    .param p3, "play"    # Z
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueue([JIZI)V

    .line 52
    return-void
.end method

.method public addQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZI)V
    .locals 2
    .param p1, "queue"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .param p2, "action"    # I
    .param p3, "play"    # Z
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 60
    .local v0, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueueItems(Ljava/util/List;IZI)V

    .line 61
    return-void

    .line 59
    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public buffering()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->buffering()I

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingItemExtras()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getQueueList()Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->moveQueueItem(II)V

    .line 76
    return-void
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->next()Z

    .line 132
    return-void
.end method

.method public openQueue(ILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZ)V
    .locals 10
    .param p1, "listType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p4, "queue"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .param p5, "position"    # I
    .param p6, "play"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p4, :cond_0

    const/4 v5, 0x0

    .line 37
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 38
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->convertToUriType(I)I

    move-result v2

    const-wide/16 v8, 0x0

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueue(ILjava/lang/String;[JLjava/util/List;IZJ)V

    .line 40
    return-void

    .line 36
    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public openQueuePosition(IIZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "play"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueuePosition(IIZ)V

    .line 46
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pause()V

    .line 127
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->play()V

    .line 122
    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 1
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(Z)Z

    .line 137
    return-void
.end method

.method public registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 107
    return-void
.end method

.method public removeQueueAudioIds([J)I
    .locals 1
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->removeQueueAudioIds([J)I

    move-result v0

    return v0
.end method

.method public removeQueuePosition([I)I
    .locals 1
    .param p1, "positions"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->removeQueuePosition([I)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendCustomEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public sendCustomEventBundle(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILandroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public togglePlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->togglePlay()V

    .line 117
    return-void
.end method

.method public toggleQueueMode(I)V
    .locals 1
    .param p1, "modeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    .line 81
    return-void
.end method

.method public unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 112
    return-void
.end method
