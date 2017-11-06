.class final Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "NowPlayingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
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


# instance fields
.field private final mCpIconColors:Landroid/util/SparseIntArray;

.field private mIsOnlineDisable:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mIsOnlineDisable:Z

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->access$000(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mCpIconColors:Landroid/util/SparseIntArray;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)V

    return-void
.end method

.method private onBindViewCpIconColor(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 71
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mPlayingAudioId:J

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mPlayingTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v0

    .line 78
    .local v0, "cpAttrs":I
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mCpIconColors:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private realignComponents(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "isPlayingItem"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 83
    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->reorderView:Landroid/view/View;

    .line 84
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .line 85
    .local v1, "isShowingReorder":Z
    :goto_0
    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    move v0, v6

    .line 88
    .local v0, "isShowingMenuItem":Z
    :goto_1
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 90
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 91
    .local v4, "parentParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 93
    .local v5, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_2

    .line 94
    const v6, 0x7f0d0502

    .line 95
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 116
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void

    .end local v0    # "isShowingMenuItem":Z
    .end local v1    # "isShowingReorder":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v4    # "parentParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    move v1, v7

    .line 84
    goto :goto_0

    .restart local v1    # "isShowingReorder":Z
    :cond_1
    move v0, v7

    .line 86
    goto :goto_1

    .line 97
    .restart local v0    # "isShowingMenuItem":Z
    .restart local v3    # "parent":Landroid/view/View;
    .restart local v4    # "parentParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_4

    .line 98
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 100
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_3

    .line 102
    const v6, 0x7f0d0501

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 107
    :goto_3
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const v6, 0x7f0d04fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_3

    .line 112
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    const v6, 0x7f0d04fe

    .line 113
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_2
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mIsOnlineDisable:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v0

    const v1, 0x80002

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->onBindViewCpIconColor(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 55
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderNowPlayingView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 60
    .local v0, "position":I
    iget-wide v4, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mPlayingAudioId:J

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->updatePlayingTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 67
    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mPlayingAudioId:J

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->realignComponents(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 68
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->updateNormalTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 36
    if-nez p3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v2

    .line 41
    .local v2, "uiType":I
    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    const v1, 0x7f0400b6

    .line 46
    .local v1, "layout":I
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 48
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "layout":I
    .end local v2    # "uiType":I
    :cond_0
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-direct {v3, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v3

    .line 44
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "uiType":I
    :cond_1
    const v1, 0x7f0400b5

    .restart local v1    # "layout":I
    goto :goto_0
.end method

.method setOnlineContentDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->mIsOnlineDisable:Z

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method
