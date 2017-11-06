.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "RadiosViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadiosViewHolder"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;

.field private mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

.field mHeader:Landroid/widget/LinearLayout;

.field mRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mSpaceItemDecoration:Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .line 48
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mTitle:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f12042c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 50
    const v0, 0x7f1202cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mHeader:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;)Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mCallback:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    return-object v0
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    .line 41
    const v1, 0x7f040173

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V

    return-object v1
.end method

.method private initRecyclerView(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    const/4 v7, 0x0

    .line 77
    new-instance v4, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;

    .line 78
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v7, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 80
    .local v2, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mSpaceItemDecoration:Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    if-nez v4, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d021b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 83
    .local v3, "sidePadding":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d021a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 84
    .local v1, "interval":I
    new-instance v4, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v6, v3, v1

    invoke-direct {v4, v5, v3, v6}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mSpaceItemDecoration:Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    .line 85
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mSpaceItemDecoration:Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 87
    .end local v1    # "interval":I
    .end local v3    # "sidePadding":I
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 88
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 89
    .local v0, "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    instance-of v4, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v4, :cond_1

    .line 90
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    .end local v0    # "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 92
    :cond_1
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->initRecyclerView(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;

    .line 99
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9313"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f1202cd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->initTitle()V

    .line 59
    return-void
.end method

.method public onUnBindView()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
