.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "BannerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;

.field mGradientFg:Landroid/view/View;

.field mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

.field mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    const v0, 0x7f120424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 48
    const v0, 0x7f120425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .line 49
    const v0, 0x7f120426

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mGradientFg:Landroid/view/View;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    const v2, 0x7f040165

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    .local v0, "bannerViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->forceResize()V

    .line 42
    return-object v0
.end method

.method private initViewPager(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 8
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 87
    .local v6, "bannerSize":I
    if-lez v6, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getRollingTime()I

    move-result v7

    .line 89
    .local v7, "rollingTime":I
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    mul-int/lit16 v1, v7, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAutoScrollDuration(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setOffscreenPageLimit(I)V

    .line 93
    .end local v7    # "rollingTime":I
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setBoundaryLooping(Z)V

    .line 97
    .end local v6    # "bannerSize":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setBoundaryCaching(Z)V

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mGradientFg:Landroid/view/View;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v5, 0x33

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setGradientBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable$Orientation;IIII)V

    .line 123
    return-void
.end method


# virtual methods
.method public forceResize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3e3e76c9    # 0.186f

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->forceRatioResize(Landroid/view/View;FII)V

    .line 147
    return-void
.end method

.method public getAdapter()Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;

    return-object v0
.end method

.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .end local p1    # "data":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-direct {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;-><init>()V

    .line 64
    .restart local p1    # "data":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setBannerList(Ljava/util/List;)V

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->initViewPager(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    return-void
.end method

.method public onUnBindView()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->clearAnimation()V

    .line 82
    :cond_0
    return-void
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll()V

    goto :goto_0
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->stopAutoScroll()V

    goto :goto_0
.end method
