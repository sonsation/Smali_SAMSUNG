.class public Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "RecommendRadioActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
.implements Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final DELAY_ANIMATION:I = 0x1f4

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RecommendRadioActivity"


# instance fields
.field private currentAdBannerState:Z

.field private initialize:Z

.field private mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

.field private mBannerView:Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mRadioBoxId:Ljava/lang/String;

.field private mRecommendRadioAdapter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

.field private mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioAdapter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private createAdBanner()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f120369

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->showAdBannerForFreeUser()V

    .line 131
    return-void
.end method

.method private createBannerView()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f120368

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mBannerView:Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

    .line 126
    return-void
.end method

.method private createRecyclerView()V
    .locals 5

    .prologue
    .line 134
    const v1, 0x7f12038f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mSpinner:Landroid/widget/Spinner;

    .line 136
    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 155
    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioAdapter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    .line 159
    const v1, 0x7f12036a

    .line 160
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 161
    .local v0, "recyclerView":Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioAdapter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 189
    return-void
.end method

.method private hideAdBanner()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->currentAdBannerState:Z

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->currentAdBannerState:Z

    .line 334
    const-string v0, "RecommendRadioActivity"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private initSpinner(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;>;"
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    :cond_0
    const-string v4, "RecommendRadioActivity"

    const-string/jumbo v5, "updateSpinnerItems - spinner already initialized"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 260
    .local v2, "radioBoxTitle":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 261
    .local v1, "radioBoxIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->getRadioBoxTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 263
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    .line 264
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->getRadioBoxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    move v1, v0

    .line 261
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_3
    new-instance v3, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 271
    .local v3, "sortSpinnerAdapter":Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    if-eqz v1, :cond_4

    .line 273
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 276
    :cond_4
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private showAdBanner()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->currentAdBannerState:Z

    if-ne v0, v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->currentAdBannerState:Z

    .line 317
    const-string v0, "RecommendRadioActivity"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private showAdBannerForFreeUser()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    if-nez v1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 290
    .local v0, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mAdBannerBand:Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initialize:Z

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->currentAdBannerState:Z

    .line 88
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 90
    const v1, 0x7f040120

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "radioBoxId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    .line 97
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->createBannerView()V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->createAdBanner()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->createRecyclerView()V

    .line 104
    const v1, 0x7f12027e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 106
    const v1, 0x7f1202b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    const v2, 0x7f1202cc

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initMiniPlayer()V

    .line 111
    if-nez p1, :cond_1

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "993"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->detachView()V

    .line 121
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->removeFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 122
    return-void
.end method

.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v0, "RecommendRadioActivity"

    const-string v1, "onFeatureChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->showAdBannerForFreeUser()V

    .line 195
    return-void
.end method

.method public onRetry()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v0, "RecommendRadioActivity"

    const-string v1, "onRetry - load radios"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->loadRadioStations(I)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initialize:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initialize:Z

    .line 203
    const-string v0, "RecommendRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : radioBoxId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRadioBoxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->loadRadioStations(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioPresenter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->loadRadioStations(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 215
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 360
    return-void
.end method

.method public showBanner(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mBannerView:Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->setVisibility(I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mBannerView:Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

    const-string v1, "993"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->setBannerList(Ljava/util/List;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mBannerView:Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->startAutoScroll()V

    goto :goto_0
.end method

.method public showContents(Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;Ljava/util/List;)V
    .locals 3
    .param p1, "radioBoxInfo"    # Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "radioBoxList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;>;"
    const-string v0, "RecommendRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showContents - Data size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->getStationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mRecommendRadioAdapter:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->getStationList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;->swapArray(Ljava/util/List;)V

    .line 233
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initSpinner(Ljava/util/List;)V

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->showAdBanner()V

    .line 235
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "RecommendRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading - show : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    :cond_0
    return-void

    .line 241
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
