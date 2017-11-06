.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "BannerSmallViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerSmallViewHolder"


# instance fields
.field private mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

.field mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v1, 0x3e1fbe77    # 0.156f

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->forceRatioResize(Landroid/view/View;FII)V

    .line 45
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 33
    const v1, 0x7f040167

    invoke-virtual {p0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "v":Landroid/view/View;
    const v1, 0x3e1fbe77    # 0.156f

    const/4 v2, 0x7

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->forceRatioResize(Landroid/view/View;FII)V

    .line 35
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0200db

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    if-nez v1, :cond_0

    .line 71
    const-string v1, "BannerSmallViewHolder"

    const-string v2, "move : banner is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getLinkType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerSmallViewHolder;->mBanner:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveLink(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9301"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const-string v1, "BannerSmallViewHolder"

    const-string v2, "onClick : but context is not instance of activity"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    return-void
.end method

.method public onUnBindView()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
