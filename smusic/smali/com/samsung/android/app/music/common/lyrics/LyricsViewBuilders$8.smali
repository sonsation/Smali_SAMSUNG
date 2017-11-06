.class final Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "LyricsViewBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->buildFixedHeader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fixedQueueType:I

.field final synthetic val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

.field final synthetic val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method constructor <init>(ILcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$fixedQueueType:I

    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method buildObservable(I)V
    .locals 2
    .param p1, "queueType"    # I

    .prologue
    .line 202
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    goto :goto_0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$fixedQueueType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 193
    iget v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->val$fixedQueueType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->buildObservable(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "queueType":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;->buildObservable(I)V

    goto :goto_0
.end method
