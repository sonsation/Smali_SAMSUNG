.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "MilkSearchStoreMusicVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreMusicVideoAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->clear(Z)V

    .line 118
    return-void
.end method

.method protected createSearchMusicVideosViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f110044

    const/4 v6, 0x0

    .line 68
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;

    .line 71
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;

    .line 73
    .local v2, "musicVideo":Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 76
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->getMvTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getArtist()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getArtist()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getArtist()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->getArtistsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getPlayBtn()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getPlayBtn()Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "musicVideo":Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;
    :cond_0
    return-void

    .line 89
    .restart local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;
    .restart local v1    # "imageUrl":Ljava/lang/String;
    .restart local v2    # "musicVideo":Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->createSearchMusicVideosViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreMusicVideoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
