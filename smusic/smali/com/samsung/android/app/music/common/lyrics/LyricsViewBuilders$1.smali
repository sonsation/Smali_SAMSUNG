.class final enum Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;
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
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 7
    .param p1, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "lifeCycleObserver"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p4, "fixedQueueType"    # I

    .prologue
    const v4, 0x7f1100c6

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    invoke-static {p1, p2, p4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    move-result-object v1

    .line 44
    .local v1, "highlightFocusedItemBinder":Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V

    .line 45
    new-instance v2, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;

    const v3, 0x7f04007c

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;->setDefaultTextColorResId(I)Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;->setDefaultSyncTextColorResId(I)Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$Builder;->build()Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter;

    move-result-object v2

    .line 45
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 49
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    .line 51
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterFocusController;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-direct {v6, v0, p2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;-><init>([Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterFocusController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V

    .line 54
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;-><init>()V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    .line 56
    return-object p1
.end method
