.class public Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "LockPlayerNowPlayingListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;",
        ">;",
        "Landroid/view/View$OnCreateContextMenuListener;"
    }
.end annotation


# static fields
.field private static final SAVED_HIDDEN_STATE:Ljava/lang/String; = "saved_hidden_state"

.field public static final TAG:Ljava/lang/String;

.field private static final TURN_OFF_ANIMATION_INTERVAL:I = 0xc8


# instance fields
.field private mIsHidden:Z

.field private mIsReCreation:Z

.field private mNeedSetSelection:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsHidden:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsReCreation:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mNeedSetSelection:Z

    .line 225
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method private getDlnaDmsNowPlayingListAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string v1, "artist"

    .line 199
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string v1, "album_id"

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string v1, "_id"

    .line 201
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getNowPlayingListAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .locals 4

    .prologue
    const v3, 0x80002

    .line 180
    new-instance v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "audio_id"

    .line 182
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string/jumbo v2, "title"

    .line 183
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string v2, "artist"

    .line 184
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const-string v2, "album_id"

    .line 185
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    const v2, 0x7f0d0064

    .line 186
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    .line 188
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 190
    sget-object v1, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 191
    const-string/jumbo v1, "streaming"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->addCpTagText(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v1

    return-object v1
.end method

.method private scrollToNowPlayingPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 301
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mNeedSetSelection:Z

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 303
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 304
    return-void
.end method

.method private turnOffItemAnimatorDuringSomeTime()V
    .locals 6

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 160
    .local v1, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 161
    .local v0, "itemAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 162
    new-instance v2, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 216
    const v0, 0x100012

    return v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    const-string v0, "523"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsReCreation:Z

    .line 73
    const-string/jumbo v0, "saved_hidden_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsHidden:Z

    .line 75
    :cond_0
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 173
    .local v1, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 175
    .local v0, "cpAttrs":I
    const v2, 0x20004

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getDlnaDmsNowPlayingListAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v2

    .line 176
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getNowPlayingListAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 211
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateView() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v0, 0x7f0400c5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onHiddenChanged(Z)V

    .line 131
    sget-object v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHiddenChanged() - hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsHidden:Z

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->unregisterMediaChangeObserver()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 137
    .local v0, "view":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 146
    .end local v0    # "view":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mNeedSetSelection:Z

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->turnOffItemAnimatorDuringSomeTime()V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->registerMediaChangeObserver()V

    .line 144
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 259
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 260
    .local v2, "albumId":J
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v8, v4

    .line 261
    .local v8, "position":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 263
    const-string v0, "SMUSIC-UiList"

    const-string/jumbo v4, "onMetadataChanged cursor is null. "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_1
    move v7, v8

    .line 267
    .local v7, "orderedPosition":I
    instance-of v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v0, :cond_2

    .line 268
    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .end local v6    # "c":Landroid/database/Cursor;
    invoke-virtual {v6, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v7

    .line 270
    :cond_2
    int-to-long v4, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->updatePlayingAudioId(IJJ)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 11
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
    .line 276
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v0, 0x0

    invoke-direct {v7, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 277
    .local v7, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    .line 278
    .local v6, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    if-eqz v6, :cond_1

    .line 279
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 281
    if-nez p2, :cond_2

    .line 282
    const/4 v10, 0x0

    .line 286
    .local v10, "position":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v9

    .line 287
    .local v9, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 288
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 289
    .local v2, "albumId":J
    int-to-long v4, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->updatePlayingAudioId(IJJ)V

    .line 290
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v8

    .line 291
    .local v8, "count":I
    if-lez v8, :cond_0

    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mNeedSetSelection:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->scrollToNowPlayingPosition(I)V

    .line 296
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setListShown(Z)V

    .line 298
    .end local v1    # "cpAttrs":I
    .end local v2    # "albumId":J
    .end local v8    # "count":I
    .end local v9    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v10    # "position":I
    :cond_1
    return-void

    .line 284
    :cond_2
    const-string v0, "extra.list_position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "position":I
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 118
    sget-object v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsReCreation:Z

    .line 120
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const-string/jumbo v0, "saved_hidden_state"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsHidden:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mIsReCreation:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mNeedSetSelection:Z

    .line 113
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0a013a

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    sget-object v1, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onViewCreated() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0323

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    invoke-virtual {p1, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 95
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d0194

    .line 96
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d04e9

    .line 97
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 98
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 101
    const v1, 0x7f040039

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setEmptyView(II)V

    .line 102
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setReorderEnabled(Z)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->setListShown(Z)V

    .line 105
    return-void
.end method
