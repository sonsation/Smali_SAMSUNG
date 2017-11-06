.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.source "ArtistDetailSongAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        "Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistDetailSongAdapter"


# instance fields
.field private trackInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .param p4, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->trackInfos:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->trackInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCheckBoxResId()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
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
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 106
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 107
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 108
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isClickable(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 59
    .local v0, "info":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->setCheckboxBackground(Landroid/content/res/Resources;Landroid/widget/CheckBox;Landroid/view/View;)V

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    :cond_0
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :goto_4
    return-void

    :cond_1
    move v1, v3

    .line 60
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 61
    goto/16 :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public bridge synthetic onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040144

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;
    return-object v1
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public playWithCurrentPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    move v0, p1

    .line 131
    .local v0, "newPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x100050

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 132
    return-void

    .line 127
    .end local v0    # "newPosition":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v0, 0x0

    .restart local v0    # "newPosition":I
    goto :goto_0
.end method
