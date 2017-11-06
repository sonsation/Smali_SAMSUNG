.class Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "LockPlayerNowPlayingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockPlayerNowPlayingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 310
    return-void
.end method


# virtual methods
.method protected onBindViewHolderNowPlayingView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->mPlayingAudioId:J

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->updatePlayingTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->updateNormalTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/app/Activity;
    if-nez p3, :cond_0

    .line 316
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 317
    .local v1, "uiType":I
    if-nez v1, :cond_1

    .line 318
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b0

    .line 319
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 325
    .end local v1    # "uiType":I
    :cond_0
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-direct {v2, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v2

    .line 321
    .restart local v1    # "uiType":I
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b1

    .line 322
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method
