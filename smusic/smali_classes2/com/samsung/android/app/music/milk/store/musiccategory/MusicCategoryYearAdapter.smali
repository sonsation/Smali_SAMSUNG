.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MusicCategoryYearAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;
.implements Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;",
        "Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryYearAdapter"

.field private static final TYPE_SUBTITLE:I = -0x3e8


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private generatePeriodSubTitle(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "newInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    const-string v2, ""

    .line 48
    .local v2, "prevPeriodId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .line 49
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    new-instance v4, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;-><init>(Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    const-string v2, ""

    .line 56
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    :cond_1
    return-object v1
.end method

.method private isSubTitle(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .line 104
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;

    if-eqz v1, :cond_0

    .line 105
    const/16 v1, -0x3e8

    .line 107
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getMargin(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "type"    # I
        .annotation build Lcom/samsung/android/app/music/milk/store/widget/MarginControllable$MarginPosition;
        .end annotation
    .end param
    .param p3, "originalMargin"    # I

    .prologue
    .line 116
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->isSubTitle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 p3, 0x0

    .line 121
    .end local p3    # "originalMargin":I
    :cond_0
    return p3
.end method

.method public getSpanSize(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "layoutSpanSize"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->isSubTitle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p2    # "layoutSpanSize":I
    :goto_0
    return p2

    .restart local p2    # "layoutSpanSize":I
    :cond_0
    const/4 p2, 0x1

    goto :goto_0
.end method

.method getYearList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "periodId"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 88
    :goto_0
    return-object v3

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "years":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .line 81
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    instance-of v4, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;

    if-nez v4, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->isSubTitle(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .line 64
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 65
    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;

    .line 66
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .end local v1    # "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 69
    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;

    .line 70
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 38
    packed-switch p2, :pswitch_data_0

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodSubTitleViewHolder;

    move-result-object v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch -0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->generatePeriodSubTitle(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    .line 34
    return-void
.end method
