.class final enum Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$2;
.super Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.source "LyricsViewBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 3
    .param p1, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "lifeCycleObserver"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p4, "fixedQueueType"    # I

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$2;->StyleTitleFixed:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 66
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    const v2, 0x7f0400c8

    invoke-direct {v1, v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    .line 69
    return-object p1
.end method
