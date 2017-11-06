.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "PickDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickDetailActivity"


# instance fields
.field private mActionBarTitleText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mFavoriteImage:Landroid/widget/ImageView;

.field private mGradient:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mHeaderImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

.field private mPickId:Ljava/lang/String;

.field private mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

.field private mPrimaryColor:I

.field private mShareImage:Landroid/view/View;

.field private mTransparent:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPrimaryColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPrimaryColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/common/model/PickInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->setFavorite(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mHeaderImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mGradient:Landroid/view/View;

    return-object v0
.end method

.method private adjustTopMargins()I
    .locals 4

    .prologue
    .line 151
    const v3, 0x7f120443

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 153
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    neg-int v3, v2

    return v3
.end method

.method private setFavorite(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method private showPickDetail(Lcom/samsung/android/app/music/common/model/PickInfo;)V
    .locals 4
    .param p1, "pickInfo"    # Lcom/samsung/android/app/music/common/model/PickInfo;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->isFavorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->setFavorite(Z)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mHeaderImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V

    const v3, 0x7f0200d9

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showPickArticles(Lcom/samsung/android/app/music/common/model/PickInfo;)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 175
    :cond_0
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiCalled(II)V

    .line 205
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 210
    const/16 v2, 0x2906

    if-ne p2, v2, :cond_0

    move-object v1, p4

    .line 211
    check-cast v1, Lcom/samsung/android/app/music/common/model/PickDetail;

    .line 212
    .local v1, "pickData":Lcom/samsung/android/app/music/common/model/PickDetail;
    if-eqz v1, :cond_0

    .line 213
    packed-switch p3, :pswitch_data_0

    .line 219
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/PickDetail;->getResultCode()I

    move-result v0

    .line 220
    .local v0, "code":I
    const-string v2, "PickDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled() error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showError(II)V

    .line 226
    .end local v0    # "code":I
    .end local v1    # "pickData":Lcom/samsung/android/app/music/common/model/PickDetail;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v1    # "pickData":Lcom/samsung/android/app/music/common/model/PickDetail;
    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/PickDetail;->getPickInfo()Lcom/samsung/android/app/music/common/model/PickInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->showPickDetail(Lcom/samsung/android/app/music/common/model/PickInfo;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/PickInfo;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 270
    .local v0, "doFavorite":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v2, "picks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->fromPick(Lcom/samsung/android/app/music/common/model/PickInfo;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteMilkmagazine(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 308
    .end local v2    # "picks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "992"

    const-string v6, "9911"

    if-eqz v0, :cond_3

    const-string v3, "1"

    .line 309
    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v0    # "doFavorite":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    .restart local v0    # "doFavorite":Z
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    .line 306
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickId()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteMilkmagazine(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    goto :goto_2

    .line 308
    :cond_3
    const-string v3, "0"

    goto :goto_3

    .line 315
    .end local v0    # "doFavorite":Z
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    if-eqz v3, :cond_4

    .line 316
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    .line 317
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/PickInfo;->getPickTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    .line 318
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/PickInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickInfo:Lcom/samsung/android/app/music/common/model/PickInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/PickInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;

    move-result-object v1

    .line 320
    .local v1, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->sharePick(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V

    .line 321
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "992"

    const-string v5, "9912"

    .line 322
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v1    # "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    :cond_4
    const-string v3, "PickDetailActivity"

    const-string/jumbo v4, "share pick : pick info is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x7f1203b8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v2, 0x7f04017c

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "contentId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    const v2, 0x7f04017b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1203b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    .line 106
    :cond_0
    const v2, 0x7f120447

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mHeaderImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 107
    const v2, 0x7f1203a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mGradient:Landroid/view/View;

    .line 108
    const v2, 0x7f1203b9

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    .line 109
    const v2, 0x7f1203b8

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mShareImage:Landroid/view/View;

    .line 110
    const v2, 0x7f120445

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mHeader:Landroid/view/View;

    .line 111
    const v2, 0x7f12039b

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->initMiniPlayer()V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->adjustTopMargins()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setHeaderTop(I)V

    .line 116
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setOnParallaxHeaderScrollListener(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mShareImage:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickId:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f120449

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 133
    new-instance v2, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 144
    new-instance v2, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 145
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "992"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 188
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPickDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mPickArticleListFragment:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showError(II)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 200
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 183
    :cond_0
    return-void
.end method
