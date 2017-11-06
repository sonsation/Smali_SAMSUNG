.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.source "AlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_SECTION:I = 0x1

.field private static final VIEW_TYPE_TRACK:I


# instance fields
.field private mIsAllServiceStat:Z

.field private mLargeSizeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mIsAllServiceStat:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDiscSize(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "discCount":I
    const/4 v1, -0x1

    .line 198
    .local v1, "discNo":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    .line 199
    .local v2, "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mIsAllServiceStat:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mIsAllServiceStat:Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 206
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    :cond_3
    return v0
.end method


# virtual methods
.method public getCheckBoxResId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f1200c9

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    .line 137
    .local v0, "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 146
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 147
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 148
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method public isAllServiceStat()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mIsAllServiceStat:Z

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isClickable(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 9
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    .line 50
    .local v1, "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;

    .line 52
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isSelectMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getMoreButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isSelectMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 54
    invoke-virtual {p0, v3, v6, v7}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->setCheckboxBackground(Landroid/content/res/Resources;Landroid/widget/CheckBox;Landroid/view/View;)V

    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getTrackNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "trackNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTrackNumber()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getExplicit()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->isTitle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTitleIcon()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    :goto_4
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->isPlayable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTrackNumber()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getMoreButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_5
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getMoreButton()Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getMoreButton()Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isSelectable(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
    .end local v2    # "trackNumber":Ljava/lang/String;
    :cond_0
    :goto_6
    return-void

    .restart local v0    # "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
    :cond_1
    move v3, v5

    .line 52
    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 53
    goto/16 :goto_1

    .line 64
    .restart local v2    # "trackNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 70
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 76
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTitleIcon()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 85
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTrackNumber()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getMoreButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 109
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 112
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
    .end local v2    # "trackNumber":Ljava/lang/String;
    :cond_8
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;

    .line 114
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->getDiscName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 114
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 41
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public playWithCurrentPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 173
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 169
    .local v0, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mLargeSizeUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 164
    .end local v0    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 p1, 0x0

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x100050

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, p1}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public setLargeSizeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "largeSizeUrl"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->mLargeSizeUrl:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "albumTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getDiscSize(Ljava/util/List;)I

    move-result v1

    .line 179
    .local v1, "discCount":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 180
    const/4 v2, -0x1

    .line 181
    .local v2, "discNo":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    .line 182
    .local v3, "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 183
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v2

    .line 184
    new-instance v5, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;

    invoke-direct {v5, v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v2    # "discNo":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/AlbumTrack;
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_2
    invoke-super {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    .line 192
    return-void
.end method
