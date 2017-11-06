.class final Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;
.super Ljava/lang/Object;
.source "LyricsViewBuilders.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->buildFixedHeader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

.field final synthetic val$lifeCycleObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field final synthetic val$lyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field final synthetic val$marqueeController:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;

.field final synthetic val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field final synthetic val$observableKeeper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$observableKeeper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    iput-object p4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$lifeCycleObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iput-object p5, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$marqueeController:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;

    iput-object p6, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$lyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$headerUpdater:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->release()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$observable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$observableKeeper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$lifeCycleObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$marqueeController:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->removeCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$lyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;->val$marqueeController:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->removeOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 220
    return-void
.end method
