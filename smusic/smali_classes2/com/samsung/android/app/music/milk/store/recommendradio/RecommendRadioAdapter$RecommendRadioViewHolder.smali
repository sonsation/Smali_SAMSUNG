.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecommendRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecommendRadioViewHolder"
.end annotation


# instance fields
.field private mBlank:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

.field private mStationDPTitle:Landroid/widget/TextView;

.field private mStationTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    const v0, 0x7f12036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mBlank:Landroid/view/View;

    .line 89
    const v0, 0x7f12036c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    .line 90
    const v0, 0x7f12036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mStationTitle:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f12036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mStationDPTitle:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f12036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mDivider:Landroid/view/View;

    .line 93
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const v2, 0x7f040121

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    return-object v0
.end method


# virtual methods
.method public getBlank()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mBlank:Landroid/view/View;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getImage()Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    return-object v0
.end method

.method public getStationDPTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mStationDPTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStationTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->mStationTitle:Landroid/widget/TextView;

    return-object v0
.end method
