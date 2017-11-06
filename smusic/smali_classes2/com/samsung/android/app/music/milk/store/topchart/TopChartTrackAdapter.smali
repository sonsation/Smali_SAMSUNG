.class public Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.source "TopChartTrackAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        "Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;",
        ">;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# instance fields
.field private mPosition:I

.field private mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p4, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mPosition:I

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->type:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCheckBoxResId()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 179
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 180
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 181
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const v9, 0x100050

    const/4 v8, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onApiHandled] reqType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_1

    .line 195
    packed-switch p3, :pswitch_data_0

    .line 220
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mPosition:I

    invoke-static {v5, v9, v8, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 224
    :cond_0
    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    .line 229
    :cond_1
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p4

    .line 197
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 198
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 200
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 201
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 202
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 204
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mPosition:I

    invoke-static {v5, v9, v8, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 216
    :cond_5
    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 79
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 82
    .local v1, "info":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectMode()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectMode()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v7

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getCheckBoxContainer()Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 86
    invoke-virtual {p0, v4, v7, v8}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->setCheckboxBackground(Landroid/content/res/Resources;Landroid/widget/CheckBox;Landroid/view/View;)V

    .line 89
    add-int/lit8 v2, p2, 0x1

    .line 90
    .local v2, "itemPos":I
    const/16 v4, 0x64

    if-ge v2, v4, :cond_4

    const v0, 0x7f0d0695

    .line 93
    .local v0, "fontSizeResource":I
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v4

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 95
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 93
    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-ltz p2, :cond_5

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isRankVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getRankView()Lcom/samsung/android/app/music/milk/store/widget/RankView;

    move-result-object v3

    .line 105
    .local v3, "rank":Lcom/samsung/android/app/music/milk/store/widget/RankView;
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setVisibility(I)V

    .line 107
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getRankingChg()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    .line 111
    .end local v3    # "rank":Lcom/samsung/android/app/music/milk/store/widget/RankView;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getMore()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    .end local v0    # "fontSizeResource":I
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v2    # "itemPos":I
    :cond_1
    :goto_5
    return-void

    .restart local v1    # "info":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_2
    move v4, v6

    .line 83
    goto/16 :goto_0

    :cond_3
    move v4, v5

    .line 84
    goto/16 :goto_1

    .line 90
    .restart local v2    # "itemPos":I
    :cond_4
    const v0, 0x7f0d0696

    goto/16 :goto_2

    .line 100
    .restart local v0    # "fontSizeResource":I
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 118
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 138
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5
.end method

.method public bridge synthetic onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040194

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;
    return-object v1
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public playWithCurrentPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mPosition:I

    .line 162
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mTracks:Ljava/util/List;

    .line 164
    const-string v0, "0"

    .line 165
    .local v0, "reqType":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v0, "1"

    .line 173
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 158
    .end local v0    # "reqType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->mPosition:I

    goto :goto_0

    .line 167
    .restart local v0    # "reqType":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v0, "2"

    goto :goto_1

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->type:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v0, "3"

    goto :goto_1
.end method
