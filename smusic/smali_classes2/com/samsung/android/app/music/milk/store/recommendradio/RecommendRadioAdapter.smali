.class public Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "RecommendRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mMilkRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;>;"
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;->mMilkRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    .line 26
    return-void
.end method


# virtual methods
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
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 35
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;

    .line 37
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;

    .line 39
    .local v1, "recommendRadioStation":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;
    if-nez v1, :cond_1

    .line 56
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    .end local v1    # "recommendRadioStation":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v0    # "holder":Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;
    .restart local v1    # "recommendRadioStation":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->getImage()Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;->loadImage(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->getStationTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->getStationTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->getStationDPTitle()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "stationDPTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->getStationDPTitle()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->getStationDPTitle()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->getStationDPTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;

    move-result-object v0

    return-object v0
.end method
