.class public Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/store/IButtonEnabled;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AlbumDetailActivity"


# instance fields
.field private mActionBarTitleText:Landroid/widget/TextView;

.field private mAlbum:Lcom/samsung/android/app/music/common/model/Album;

.field private mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumInfoContainer:Landroid/widget/LinearLayout;

.field private mArtistName:Landroid/widget/TextView;

.field private mArtistNameContainer:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field private mDetail:Landroid/view/View;

.field private mFavoriteImage:Landroid/widget/ImageView;

.field private mGenre:Landroid/widget/TextView;

.field private mGradient:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mIsActionModeEnable:Z

.field private mLoadFinished:Z

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mPrimaryColor:I

.field private mReleaseDate:Landroid/widget/TextView;

.field private mShareImage:Landroid/view/View;

.field private mTransparent:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mPrimaryColor:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mPrimaryColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/common/model/Album;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setFavorite(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mGradient:Landroid/view/View;

    return-object v0
.end method

.method private adjustTopMargins()I
    .locals 4

    .prologue
    .line 206
    const v3, 0x7f120399

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 208
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    neg-int v3, v2

    return v3
.end method

.method private setFavorite(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .prologue
    .line 433
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method private showAlbumInfo(Lcom/samsung/android/app/music/common/model/AlbumInfo;)V
    .locals 7
    .param p1, "albumInfo"    # Lcom/samsung/android/app/music/common/model/AlbumInfo;

    .prologue
    const/4 v2, 0x0

    .line 294
    const-string v3, "AlbumDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showAlbumInfo : info - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 296
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo;->getArtistList()Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "artist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumInfo;->getTrackList()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getDisplayArtistsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mGenre:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mReleaseDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/model/Album;->getReleaseDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    const v6, 0x7f0201da

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 324
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getAgency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 325
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getDistributor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 324
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistNameContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->hasAvailableArtist()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 328
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->getTrackList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Album;->hasMore()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showTrackInfo(Ljava/util/List;Ljava/lang/String;Z)V

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Album;->isFavorite()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setFavorite(Z)V

    .line 332
    return-void
.end method

.method public static final startActivity(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J

    .prologue
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Album;->getSourceId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "sourceAlbumId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "contentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    return-void
.end method

.method public buttonEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    if-eqz p1, :cond_2

    .line 445
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->getAgency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 446
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->getDistributor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->hasDescription()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistNameContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Album;->hasAvailableArtist()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 450
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    .line 457
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 446
    goto :goto_0

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 455
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    goto :goto_1
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAlbumInfo()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mLoadFinished:Z

    return v0
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiCalled(II)V

    .line 255
    const/16 v0, 0x283d

    if-ne p2, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showLoading(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 264
    const/16 v2, 0x283d

    if-ne p2, v2, :cond_0

    .line 265
    packed-switch p3, :pswitch_data_0

    .line 289
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setLoadFinished(Z)V

    .line 290
    return-void

    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p4

    .line 267
    check-cast v1, Lcom/samsung/android/app/music/common/model/AlbumInfo;

    .line 268
    .local v1, "info":Lcom/samsung/android/app/music/common/model/AlbumInfo;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->showAlbumInfo(Lcom/samsung/android/app/music/common/model/AlbumInfo;)V

    goto :goto_0

    .line 274
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/AlbumInfo;
    :pswitch_2
    const/4 v0, -0x1

    .line 275
    .local v0, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_1

    .line 276
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 279
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-virtual {v2, p3, v0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 338
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    if-nez v3, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 340
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Album;->getDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Album;->getAgency()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Album;->getDistributor()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9364"

    .line 343
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    if-nez v3, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getClkImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveCoverArt(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 353
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 356
    .local v1, "doFavorite":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->fromAlbum(Lcom/samsung/android/app/music/common/model/Album;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteAlbum(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 375
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9361"

    const-wide/16 v6, 0x1

    .line 376
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 354
    .end local v0    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .end local v1    # "doFavorite":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 379
    .restart local v1    # "doFavorite":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 394
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteAlbum(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9361"

    const-wide/16 v6, 0x0

    .line 396
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 402
    .end local v1    # "doFavorite":Z
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    if-eqz v3, :cond_3

    .line 403
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 404
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Album;->getArtistName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 403
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;

    move-result-object v2

    .line 405
    .local v2, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareAlbum(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V

    .line 406
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9362"

    .line 407
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v2    # "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    :cond_3
    const-string v3, "AlbumDetailActivity"

    const-string/jumbo v4, "shareAlbum : album info is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 414
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Album;->getDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Album;->getAgency()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Album;->getDistributor()Ljava/lang/String;

    move-result-object v7

    .line 413
    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9364"

    .line 417
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :sswitch_5
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mIsActionModeEnable:Z

    if-nez v3, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbum:Lcom/samsung/android/app/music/common/model/Album;

    .line 422
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Album;->getArtistList()Ljava/util/List;

    move-result-object v5

    .line 421
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveArtist(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/util/List;)Z

    .line 424
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    const-string v5, "9363"

    .line 425
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x7f12039e -> :sswitch_1
        0x7f1203a2 -> :sswitch_5
        0x7f1203a4 -> :sswitch_0
        0x7f1203b8 -> :sswitch_3
        0x7f1203b9 -> :sswitch_2
        0x7f1203c1 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v3, 0x7f040134

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "contentId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 135
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 137
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 138
    const v3, 0x7f040139

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1203b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    .line 146
    :cond_0
    const v3, 0x7f12019f

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistName:Landroid/widget/TextView;

    .line 147
    const v3, 0x7f120272

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mGenre:Landroid/widget/TextView;

    .line 148
    const v3, 0x7f1203a3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mReleaseDate:Landroid/widget/TextView;

    .line 149
    const v3, 0x7f12039e

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 150
    const v3, 0x7f1203a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mGradient:Landroid/view/View;

    .line 151
    const v3, 0x7f1203a1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumInfoContainer:Landroid/widget/LinearLayout;

    .line 152
    const v3, 0x7f1203b9

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    .line 153
    const v3, 0x7f1203b8

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mShareImage:Landroid/view/View;

    .line 154
    const v3, 0x7f1203a4

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    .line 155
    const v3, 0x7f1203a2

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistNameContainer:Landroid/widget/LinearLayout;

    .line 156
    const v3, 0x7f12039b

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 157
    const v3, 0x7f12039d

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mHeader:Landroid/view/View;

    .line 159
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->initMiniPlayer()V

    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->adjustTopMargins()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setHeaderTop(I)V

    .line 163
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setOnParallaxHeaderScrollListener(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;)V

    .line 172
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mShareImage:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mArtistNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f1203a5

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .line 180
    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 183
    new-instance v3, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 195
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_1

    .line 196
    const-string v3, "AlbumPage"

    new-array v4, v7, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V

    aput-object v5, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 200
    :cond_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->setLoadFinished(Z)V

    .line 202
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "934"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 237
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 249
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 1
    .param p1, "loadFinished"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mLoadFinished:Z

    .line 466
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 469
    :cond_0
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 473
    return-void
.end method
