.class public Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
.super Ljava/lang/Object;
.source "HighlightFocusedItemsViewBinder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mDefaultTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDuration:J

.field private mFocusTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mFocusedPosition:I

.field private mHighlightPosition:I

.field private mHighlightTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mMediaId:J

.field private final mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultTextColorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    .line 74
    iput-object p3, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 77
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;)V

    invoke-direct {v2, p1, p3, v3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;-><init>(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 103
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    invoke-static {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusTextColor:I

    return p1
.end method

.method private setLyricTextColor(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 255
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    .line 256
    .local v1, "vh":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-direct {p0, v2, p2, v3, p1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextColorAndAlpha(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    goto :goto_0
.end method

.method private setTextColorAndAlpha(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "color"    # I
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "position"    # I

    .prologue
    .line 261
    const/high16 v0, 0x3f800000    # 1.0f

    .line 262
    .local v0, "alpha":F
    invoke-interface {p3, p4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v2

    .line 263
    .local v2, "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    if-eqz v2, :cond_0

    .line 264
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v4

    .line 265
    .local v4, "time":J
    iget-wide v6, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const/4 v1, 0x1

    .line 266
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 268
    .end local v1    # "enabled":Z
    .end local v4    # "time":J
    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 270
    return-void

    .line 265
    .restart local v4    # "time":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 266
    .restart local v1    # "enabled":Z
    :cond_2
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_1
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 244
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    goto :goto_0
.end method

.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
            "<+",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    const/4 v1, -0x1

    .line 148
    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 149
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 151
    iput v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    .line 152
    iput v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusedPosition:I

    .line 153
    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 174
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    if-ne v0, p3, :cond_1

    .line 176
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextColorAndAlpha(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusedPosition:I

    if-ne v0, p3, :cond_2

    .line 178
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusTextColor:I

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextColorAndAlpha(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextColorAndAlpha(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 158
    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 160
    if-eqz p3, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->release()V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 144
    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 1
    .param p1, "line"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .param p2, "oldPos"    # I
    .param p3, "newPos"    # I

    .prologue
    .line 223
    iput p3, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusedPosition:I

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    if-eq p2, v0, :cond_2

    .line 232
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setLyricTextColor(II)V

    .line 234
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    if-eq p3, v0, :cond_0

    .line 235
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusTextColor:I

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setLyricTextColor(II)V

    goto :goto_0
.end method

.method public onHighlightChanged(II)V
    .locals 1
    .param p1, "oldPos"    # I
    .param p2, "newPos"    # I

    .prologue
    .line 187
    iput p2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusedPosition:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mFocusTextColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setLyricTextColor(II)V

    .line 218
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setLyricTextColor(II)V

    goto :goto_0

    .line 212
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setLyricTextColor(II)V

    goto :goto_1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    .line 109
    .local v2, "newMediaId":J
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 110
    iput-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    .line 111
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 112
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    .line 118
    .end local v0    # "cpAttrs":I
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMetadataChanged() duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 115
    .restart local v0    # "cpAttrs":I
    :cond_1
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 127
    .local v0, "newValue":J
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 128
    iput-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 133
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlaybackStateChanged() duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
    .line 139
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
