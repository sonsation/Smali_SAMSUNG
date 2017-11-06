.class final Lcom/samsung/android/app/music/cover/CoverQueue;
.super Ljava/lang/Object;
.source "CoverQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;,
        Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

.field private final mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/cover/CoverQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p3, "layoutResId"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 85
    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "_id"

    .line 86
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const-string/jumbo v2, "title"

    .line 87
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const-string v2, "artist"

    .line 88
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    .line 89
    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setLayoutResId(I)Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->build()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    new-instance v2, Lcom/samsung/android/app/music/cover/CoverQueue$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/cover/CoverQueue$1;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/music/cover/CoverQueue$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$2;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 122
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/music/cover/CoverQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/cover/CoverQueue;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    return-object v0
.end method

.method private invalidateViews()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method private scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    if-ltz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueue$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$3;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 161
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 126
    const-string v1, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 127
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->setNowPlayingPosition(I)V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->invalidateViews()V

    .line 129
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->updatePlaybackState(I)V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->invalidateViews()V

    .line 135
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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
    .line 140
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    if-eqz v3, :cond_1

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 142
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    .local v1, "oldCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    if-nez p2, :cond_2

    .line 148
    const/4 v2, 0x0

    .line 152
    .local v2, "position":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->setNowPlayingPosition(I)V

    .line 153
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/cover/CoverQueue;->scrollToPosition(I)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->invalidateViews()V

    .line 156
    .end local v0    # "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    .end local v1    # "oldCursor":Landroid/database/Cursor;
    .end local v2    # "position":I
    :cond_1
    return-void

    .line 150
    .restart local v0    # "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    .restart local v1    # "oldCursor":Landroid/database/Cursor;
    :cond_2
    const-string v3, "extra.list_position"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "position":I
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueAdapter:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->mCoverQueueRecycler:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setEnabled(Z)V

    .line 176
    return-void
.end method
