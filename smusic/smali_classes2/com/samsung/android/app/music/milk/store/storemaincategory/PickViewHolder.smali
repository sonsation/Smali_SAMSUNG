.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "PickViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PickViewHolder"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;

.field mHeader:Landroid/view/View;

.field mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

.field mTitle:Landroid/widget/TextView;

.field mViewpager:Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    const v0, 0x7f1202cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mHeader:Landroid/view/View;

    .line 44
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f120425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .line 46
    const v0, 0x7f120424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    const v1, 0x7f040171

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method

.method private initViewPager(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/PickViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->initViewPager(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;

    .line 84
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9311"

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f1202cd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->initTitle()V

    .line 54
    return-void
.end method

.method public onUnBindView()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->clearAnimation()V

    .line 67
    :cond_0
    return-void
.end method
