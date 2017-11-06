.class public Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StoreMainRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StoreMainRecyclerViewAdapter"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

.field private mStoreMainGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public findPositionByGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Ljava/util/List;
    .locals 5
    .param p1, "groupType"    # Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "positionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemCount()I

    move-result v0

    .line 186
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 188
    .local v3, "type":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "type":I
    :cond_1
    return-object v2
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, "type":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 137
    const-string v3, "StoreMainRecyclerViewAdapter"

    const-string v4, "getViewType : Legal Notice type"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toValue()I

    move-result v2

    .line 152
    :goto_0
    return v2

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 141
    .local v0, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v1

    .line 143
    .local v1, "groupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toValue()I

    move-result v2

    .line 144
    const-string v3, "StoreMainRecyclerViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getViewType : Pos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Group type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v1    # "groupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_1
    const-string v3, "StoreMainRecyclerViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getViewType : Pos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Group type: unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 93
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 94
    .local v1, "groupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    if-eqz v5, :cond_2

    .line 95
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 114
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 115
    .local v0, "groupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 116
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 117
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 118
    .local v4, "tempGroupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v5

    if-ne v5, v1, :cond_a

    .line 119
    move-object v0, v4

    .line 124
    .end local v4    # "tempGroupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    .line 125
    return-void

    .line 96
    .end local v0    # "groupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;

    if-eqz v5, :cond_3

    .line 97
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 98
    :cond_3
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;

    if-eqz v5, :cond_4

    .line 99
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 100
    :cond_4
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;

    if-eqz v5, :cond_5

    .line 101
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 102
    :cond_5
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;

    if-eqz v5, :cond_6

    .line 103
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 104
    :cond_6
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;

    if-eqz v5, :cond_7

    .line 105
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 106
    :cond_7
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;

    if-eqz v5, :cond_8

    .line 107
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 108
    :cond_8
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoViewHolder;

    if-eqz v5, :cond_9

    .line 109
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 110
    :cond_9
    instance-of v5, p1, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;

    if-eqz v5, :cond_0

    .line 111
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 116
    .restart local v0    # "groupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "tempGroupData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 40
    const-string v4, "StoreMainRecyclerViewAdapter"

    const-string v5, "onCreateViewHolder : Unknown type"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v3, 0x0

    .line 88
    :goto_0
    return-object v3

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->fromValue(I)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v2

    .line 50
    .local v2, "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$1;->$SwitchMap$com$samsung$android$app$music$milk$store$StoreMainConstant$StoreMainGroupType:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 79
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type !! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :pswitch_0
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 82
    .local v3, "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :goto_1
    iget-object v4, v3, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 83
    iget-object v4, v3, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->onCreateView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 55
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_1
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 56
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 58
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_2
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 59
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 61
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_3
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 62
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 64
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_4
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 65
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 67
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    invoke-static {v1, p1, v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 68
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 70
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_6
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 71
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 73
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_7
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v3

    .line 74
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 76
    .end local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :pswitch_8
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;

    move-result-object v3

    .line 77
    .restart local v3    # "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    goto :goto_1

    .line 85
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "storeMainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public setGroupData(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 6
    .param p1, "groupData"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 166
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 167
    .local v3, "size":I
    const/4 v0, -0x1

    .line 168
    .local v0, "foundIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 169
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 170
    .local v1, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 171
    move v0, v2

    .line 176
    .end local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->mStoreMainGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 181
    :cond_1
    return-void

    .line 168
    .restart local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
