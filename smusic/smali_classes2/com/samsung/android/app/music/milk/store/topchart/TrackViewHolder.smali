.class public Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrackViewHolder.java"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtContainer:Landroid/view/View;

.field private mArtist:Landroid/widget/TextView;

.field private mExplicit:Landroid/widget/TextView;

.field private mMore:Landroid/view/View;

.field private mNumber:Landroid/widget/TextView;

.field private mPlay:Landroid/view/View;

.field public mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field private mRoot:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleNo:Landroid/widget/TextView;

.field public mTitleTrackImage:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f1203f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mRoot:Landroid/view/View;

    .line 42
    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitle:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f120419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitleNo:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f120131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mArtist:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f1203f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f1203f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mMore:Landroid/view/View;

    .line 47
    const v0, 0x7f120077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mNumber:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f120406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f120207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mPlay:Landroid/view/View;

    .line 50
    const v0, 0x7f1203fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mAlbumArtContainer:Landroid/view/View;

    .line 51
    const v0, 0x7f12041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitleTrackImage:Landroid/view/View;

    .line 52
    const v0, 0x7f120416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 53
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->IMAGE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MORE_MENU:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->SHORT_DIVIDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "type":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->inflate(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    return-object v0
.end method


# virtual methods
.method public getAlbumArt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAlbumArtContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mAlbumArtContainer:Landroid/view/View;

    return-object v0
.end method

.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMore()Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mMore:Landroid/view/View;

    return-object v0
.end method

.method public getNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlay()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mPlay:Landroid/view/View;

    return-object v0
.end method

.method public getRankView()Lcom/samsung/android/app/music/milk/store/widget/RankView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitleNo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTrackTitleImage()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->mTitleTrackImage:Landroid/view/View;

    return-object v0
.end method
