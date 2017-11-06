.class public Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;
.super Ljava/lang/Object;
.source "JumpFocusViewBinder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# static fields
.field private static final VIEW_ALPHA_DIM:F = 0.3f

.field private static final VIEW_ALPHA_NORMAL:F = 1.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDuration:J

.field private mFocusedLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

.field private mJumpButton:Landroid/view/View;

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mMediaId:J

.field private mOnLyricsJumpedListener:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootContainer:Landroid/view/View;

.field private mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mFocusedLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mOnLyricsJumpedListener:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    return-object v0
.end method

.method private invalidate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 167
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mFocusedLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    if-nez v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mFocusedLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v2

    .line 171
    .local v2, "time":J
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->setTimeTextInternal(J)V

    .line 173
    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    const/4 v1, 0x1

    .line 174
    .local v1, "enabled":Z
    :goto_1
    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    .local v0, "alpha":F
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 173
    .end local v0    # "alpha":F
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 174
    .restart local v1    # "enabled":Z
    :cond_3
    const v0, 0x3e99999a    # 0.3f

    goto :goto_2
.end method

.method private setTimeTextInternal(J)V
    .locals 7
    .param p1, "timeStamp"    # J

    .prologue
    .line 184
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 185
    .local v0, "second":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setAirView(Landroid/content/Context;Landroid/view/View;)V

    .line 189
    return-void
.end method


# virtual methods
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
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 109
    const v0, 0x7f1201e6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040079

    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    const v1, 0x7f1201df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mTimeText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    const v1, 0x7f1201e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f2

    .line 133
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mJumpButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setAirView(Landroid/content/Context;Landroid/view/View;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->setTimeTextInternal(J)V

    .line 138
    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 0
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 158
    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mRootContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    if-eqz p3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 104
    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 2
    .param p1, "line"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .param p2, "oldPos"    # I
    .param p3, "newPos"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mFocusedLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 163
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->invalidate(J)V

    .line 164
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    .line 75
    .local v2, "newMediaId":J
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 76
    iput-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    .line 77
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 78
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    .line 84
    .end local v0    # "cpAttrs":I
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "cpAttrs":I
    :cond_1
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 92
    .local v0, "newValue":J
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 93
    iput-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

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
    .line 100
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public setOnLyricsJumpedListener(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->mOnLyricsJumpedListener:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    .line 70
    return-void
.end method
