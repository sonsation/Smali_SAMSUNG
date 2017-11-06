.class public Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MusicVideoContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final SELECT_HEADER_POSITION:I = 0x0

.field public static final TYPE_CONTENT_ITEM:I = 0x64


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected createMusicVideoViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;

    move-result-object v0

    return-object v0
.end method

.method getHeaderSize()I
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->shouldShowSelectHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->getHeaderSize()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    const/16 v0, 0x64

    return v0
.end method

.method protected getSelectHeaderPosition()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 66
    instance-of v6, p1, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 67
    check-cast v3, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;

    .line 68
    .local v3, "holder":Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->getItemPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    move-result-object v0

    .line 70
    .local v0, "artistDetailMusicVideo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->getMvInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->getMvId()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "mvId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;

    invoke-direct {v7, p0, v5, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->getArtistList()Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "artistNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;

    .line 90
    .local v4, "info":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v4    # "info":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ", "

    .line 94
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v2    # "artistNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->isExplicit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    .end local v0    # "artistDetailMusicVideo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    .end local v1    # "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;>;"
    .end local v3    # "holder":Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
    .end local v5    # "mvId":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 100
    .restart local v0    # "artistDetailMusicVideo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    .restart local v1    # "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;>;"
    .restart local v3    # "holder":Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
    .restart local v5    # "mvId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 53
    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->createMusicVideoViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowSelectHeader()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
