.class public Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "TopChartTrackDetailViewHolder.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/widget/RelativeLayout;

.field private mExplicit:Landroid/widget/TextView;

.field private mMore:Landroid/widget/ImageView;

.field private mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field private mSongItemContainer:Landroid/widget/RelativeLayout;

.field private mSubTitle:Landroid/widget/TextView;

.field private mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    const v0, 0x7f12047c

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mSongItemContainer:Landroid/widget/RelativeLayout;

    .line 39
    const v0, 0x7f12047e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 40
    const v0, 0x7f120481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f120482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mTitle:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f120483

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f120480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mMore:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f12037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    .line 46
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 48
    const v0, 0x7f120416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 49
    const v0, 0x7f120434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mTitleNumber:Landroid/widget/TextView;

    .line 50
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCheckBoxContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMore()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRankView()Lcom/samsung/android/app/music/milk/store/widget/RankView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    return-object v0
.end method

.method public getSongItemContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mSongItemContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;->mTitleNumber:Landroid/widget/TextView;

    return-object v0
.end method
