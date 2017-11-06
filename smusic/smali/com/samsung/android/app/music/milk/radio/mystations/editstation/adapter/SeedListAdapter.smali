.class public Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeedListAdapter"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation
.end field

.field private mPermitDelete:Z

.field private mShowFirstCancel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showFirstCancel"    # Z
    .param p4, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    .line 45
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mShowFirstCancel:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mPermitDelete:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mPermitDelete:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    return-object v0
.end method


# virtual methods
.method public addItem(Lcom/samsung/android/app/music/common/model/Seed;)V
    .locals 1
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/Seed;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateOptionMenu()V

    .line 126
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSeedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Seed;

    .line 60
    .local v0, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSeedText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSeeddListPositon(I)V

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "01"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    .line 63
    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setIsArtistSeed(Z)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSeedCoverArt(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedSubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSubSeedText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->isExplictSeed()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setIsExplicitSeed(Z)V

    .line 70
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mShowFirstCancel:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getItemCount()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 71
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setDeleteActionEnable(Z)V

    .line 100
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 65
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setDeleteActionEnable(Z)V

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->registerDeleteAction(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040117

    const/4 v4, 0x0

    .line 52
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    .local v1, "ret":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    return-object v1
.end method

.method public setDeleteEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mPermitDelete:Z

    .line 109
    return-void
.end method

.method public setInterface(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    .line 134
    return-void
.end method

.method public swapList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->mList:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method
