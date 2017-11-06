.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreTrackViewHolder.java"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtContainer:Landroid/view/View;

.field private mArtist:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mExplicit:Landroid/widget/TextView;

.field private mMore:Landroid/view/View;

.field private mNumber:Landroid/widget/TextView;

.field private mPlay:Landroid/view/View;

.field public mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field private mRoot:Landroid/view/View;

.field private mTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private mTitleNo:Landroid/widget/TextView;

.field public mTitleTrackImage:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    const v0, 0x7f1203f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mRoot:Landroid/view/View;

    .line 52
    const v0, 0x7f120411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 53
    const v0, 0x7f120419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitleNo:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f120414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mArtist:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 55
    const v0, 0x7f1203fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1203f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f1203f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mMore:Landroid/view/View;

    .line 57
    const v0, 0x7f120077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mNumber:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f120406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f120207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mPlay:Landroid/view/View;

    .line 60
    const v0, 0x7f1203fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mAlbumArtContainer:Landroid/view/View;

    .line 61
    const v0, 0x7f12041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitleTrackImage:Landroid/view/View;

    .line 62
    const v0, 0x7f120416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 63
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 64
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->IMAGE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MORE_MENU:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->SHORT_DIVIDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MATCHED_TEXT:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
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
            "Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "type":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->inflate(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getAlbumArt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAlbumArtContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mAlbumArtContainer:Landroid/view/View;

    return-object v0
.end method

.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mArtist:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMore()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mMore:Landroid/view/View;

    return-object v0
.end method

.method public getNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlay()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mPlay:Landroid/view/View;

    return-object v0
.end method

.method public getRankView()Lcom/samsung/android/app/music/milk/store/widget/RankView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getTitleNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitleNo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTrackTitleImage()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->mTitleTrackImage:Landroid/view/View;

    return-object v0
.end method
