.class public abstract enum Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.super Ljava/lang/Enum;
.source "LyricsViewBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;,
        Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixed:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleScrollable:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

.field private static final sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder",
            "<",
            "Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;

    const-string v1, "StyleTitleFixed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixed:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$2;

    const-string v1, "StyleTitleFixedWithMagnifier"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$3;

    const-string v1, "StyleTitleFixedHighlightOnly"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$4;

    const-string v1, "StyleTitleScrollable"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$5;

    const-string v1, "StyleTitleScrollableHighlightOnly"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixed:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->$VALUES:[Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 344
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$10;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$10;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->createHighlightFocusedViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p2, "x2"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->buildFixedHeader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V

    return-void
.end method

.method static synthetic access$300()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    return-object v0
.end method

.method private static buildFixedHeader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)V
    .locals 10
    .param p0, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p2, "lifeCycleObserver"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p3, "fixedQueueType"    # I

    .prologue
    .line 180
    const v0, 0x7f1201e4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 181
    .local v9, "titleText":Landroid/widget/TextView;
    const v0, 0x7f1201e5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 182
    .local v7, "artistText":Landroid/widget/TextView;
    const v0, 0x7f12033f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 183
    .local v8, "genreText":Landroid/widget/TextView;
    new-instance v5, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    const/4 v2, 0x1

    aput-object v7, v0, v2

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;-><init>([Landroid/view/View;)V

    .line 185
    .local v5, "marqueeController":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;
    new-instance v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;

    invoke-direct {v1, v9, v7, v8, p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 188
    .local v1, "headerUpdater":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;
    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;

    invoke-direct {v3, p3, v1, p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$8;-><init>(ILcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 210
    .local v3, "observableKeeper":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 211
    invoke-virtual {p2, v5}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 212
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 213
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$9;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addResetController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;)V

    .line 222
    return-void
.end method

.method private static createHighlightFocusedViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .locals 4
    .param p0, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p2, "fixedQueueType"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    const v3, 0x7f1100c6

    invoke-direct {v1, v0, v3, p1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 145
    .local v1, "highlightFocusedItemBinder":Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    new-instance v2, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$6;

    invoke-direct {v2, p2, v1, p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$6;-><init>(ILcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 166
    .local v2, "observableKeeper":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$7;

    invoke-direct {v3, p1, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$7;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addResetController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;)V

    .line 172
    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 174
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->$VALUES:[Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 1
    .param p1, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "lifeCycleObserver"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    .prologue
    .line 337
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v0

    return-object v0
.end method

.method public abstract build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end method
