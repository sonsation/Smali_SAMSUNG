.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "ArtistDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/store/IButtonEnabled;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$ArtistDetailActivityLauncher;
    }
.end annotation


# static fields
.field private static final KEY_ARTIST_ID:Ljava/lang/String; = "key_artist_id"

.field private static final LOG_TAG:Ljava/lang/String; = "ArtistDetailActivity"

.field private static final TEST_ARTST_ID:Ljava/lang/String; = "AK012329"


# instance fields
.field private adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

.field private mActionBarTitleText:Landroid/widget/TextView;

.field private mArtistDebutYear:Landroid/widget/TextView;

.field private mArtistGenreType:Landroid/widget/TextView;

.field private mArtistId:Ljava/lang/String;

.field private mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

.field private mBixbyPlayOption:Z

.field protected mContext:Landroid/content/Context;

.field private mCreateStation:Landroid/view/View;

.field private mDetail:Landroid/view/View;

.field private mFavoriteImage:Landroid/widget/ImageView;

.field private mGradient:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mIsActionModeEnabled:Z

.field private mIsLoadFinished:Z

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mPrimaryColor:I

.field private mShareImage:Landroid/view/View;

.field private mTransparent:Landroid/graphics/drawable/Drawable;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsLoadFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setFavorite(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->updateSelectedTabColor()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mGradient:Landroid/view/View;

    return-object v0
.end method

.method private adjustTopMargins()I
    .locals 4

    .prologue
    .line 459
    const v3, 0x7f1203ba

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 461
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 464
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 465
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    neg-int v3, v2

    return v3
.end method

.method private createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;
    .locals 4

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 673
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 674
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .line 680
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 676
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v2, 0x7f110234

    const/4 v3, 0x0

    .line 677
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 676
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .restart local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method

.method private setFavorite(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .prologue
    .line 684
    if-eqz p1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method private setTabPage()V
    .locals 11

    .prologue
    const v10, 0x7f1203de

    const/4 v9, 0x0

    .line 251
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f110236

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 253
    .local v1, "selectedColor":I
    const v5, 0x7f1203c4

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 255
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 256
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    .line 259
    :cond_0
    new-instance v5, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    .line 260
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mBixbyPlayOption:Z

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->newInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    move-result-object v6

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    move-result-object v6

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    move-result-object v6

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 266
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    move-result-object v6

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 269
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 271
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 275
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    instance-of v5, v5, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;

    if-eqz v5, :cond_1

    .line 276
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    check-cast v5, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;

    invoke-virtual {v5, v10}, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->setTextViewLayoutId(I)V

    .line 279
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 280
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 281
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040145

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 282
    invoke-virtual {v5, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 283
    .local v4, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, "tabTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    if-nez v0, :cond_2

    .line 286
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 288
    :cond_2
    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 289
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "tabTextView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 294
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 296
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->updateSelectedTabColor()V

    .line 316
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 317
    return-void
.end method

.method private updateSelectedTabColor()V
    .locals 9

    .prologue
    .line 234
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    .line 235
    .local v2, "selectedIdx":I
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 237
    .local v3, "selectedTab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 238
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    const v7, 0x7f1203de

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 239
    .local v5, "textView":Landroid/widget/TextView;
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 244
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    .line 245
    .local v4, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    .line 246
    .local v6, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v4    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
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
    .line 450
    return-void
.end method

.method public buttonEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 696
    const-string v1, "ArtistDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[buttonEnabled] enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    if-eqz p1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    .line 699
    .local v0, "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 700
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mCreateStation:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 701
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    .line 707
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :goto_1
    return-void

    .restart local v0    # "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_0
    move v1, v3

    .line 699
    goto :goto_0

    .line 703
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 704
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mCreateStation:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 705
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    goto :goto_1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public isArtistInfo()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

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
    .line 710
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsLoadFinished:Z

    return v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 329
    packed-switch p3, :pswitch_data_0

    .line 359
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setLoadFinished(Z)V

    .line 360
    :goto_1
    return-void

    .line 331
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move-object v1, p4

    .line 333
    check-cast v1, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .line 335
    .local v1, "info":Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;
    if-nez v1, :cond_0

    .line 336
    const-string v2, "ArtistDetailActivity"

    const-string v3, "onApiHandled : response type is success but artistInfo is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->showArtistInfo(Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;)V

    goto :goto_0

    .line 347
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;
    :pswitch_3
    const/4 v0, -0x1

    .line 348
    .local v0, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_1

    .line 349
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 352
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x28a1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v6

    .line 476
    .local v6, "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-eqz v6, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9324"

    .line 481
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_1
    const-string v0, "ArtistDetailActivity"

    const-string v1, "onClick : artist is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    .end local v6    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    if-nez v0, :cond_2

    .line 490
    const-string v0, "ArtistDetailActivity"

    const-string v1, "onClick : mCreateStation isn\'t null!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v7

    .line 493
    .local v7, "artistDetailArtist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-eqz v7, :cond_0

    .line 494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v3, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSeedUsable()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 500
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZ)V

    .line 513
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9325"

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    .end local v3    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .end local v7    # "artistDetailArtist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_2
    const-string v0, "ArtistDetailActivity"

    const-string v1, "onClick : mCreateStation is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v6

    .line 525
    .restart local v6    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-eqz v6, :cond_0

    .line 526
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v8, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$6;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    invoke-virtual {v0, v1, v2, v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteArtist(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 551
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9321"

    const-wide/16 v4, 0x1

    .line 552
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 555
    .end local v8    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    .line 577
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v4

    .line 556
    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteArtist(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9321"

    const-wide/16 v4, 0x0

    .line 580
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 587
    .end local v6    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v7

    .line 590
    .restart local v7    # "artistDetailArtist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-eqz v7, :cond_0

    .line 592
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;

    move-result-object v9

    .line 595
    .local v9, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareArtist(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V

    .line 597
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9322"

    .line 598
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    .end local v7    # "artistDetailArtist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    .end local v9    # "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    :pswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsActionModeEnabled:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->isClkImageUrlListEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .line 606
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getClkImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveCoverArt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 612
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "9323"

    .line 613
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .line 609
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getClkImageUrlList()Ljava/util/ArrayList;

    move-result-object v1

    .line 608
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveCoverArt(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x7f1203b8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v2, 0x7f04013a

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 141
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 143
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    const v2, 0x7f040139

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1203b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "contentId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 154
    const-string v2, "AK012329"

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "playOption"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mBixbyPlayOption:Z

    .line 158
    const v2, 0x7f1203c3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 159
    const v2, 0x7f12039b

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setTabPage()V

    .line 162
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mBixbyPlayOption:Z

    .line 164
    const v2, 0x7f1203bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistGenreType:Landroid/widget/TextView;

    .line 165
    const v2, 0x7f1203c0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistDebutYear:Landroid/widget/TextView;

    .line 166
    const v2, 0x7f1203c1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    .line 167
    const v2, 0x7f1203c2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mCreateStation:Landroid/view/View;

    .line 168
    const v2, 0x7f1203b9

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    .line 169
    const v2, 0x7f1203b8

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mShareImage:Landroid/view/View;

    .line 170
    const v2, 0x7f1203bd

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 171
    const v2, 0x7f1203a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mGradient:Landroid/view/View;

    .line 172
    const v2, 0x7f1203bc

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mHeader:Landroid/view/View;

    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mCreateStation:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mShareImage:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->initMiniPlayer()V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adjustTopMargins()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setHeaderTop(I)V

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mParallaxHeaderLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setOnParallaxHeaderScrollListener(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;)V

    .line 191
    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 206
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_2

    .line 207
    const-string v2, "ArtistPage"

    new-array v3, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailResponseExecutor;

    invoke-direct {v4, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 211
    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setLoadFinished(Z)V

    .line 213
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "932"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->finish()V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    const-string v0, "key_artist_id"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 322
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 667
    const-string v0, "ArtistDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabReselected : position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 7
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v6, 0x1

    .line 621
    const-string v3, "ArtistDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTabSelected : position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f110236

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 623
    .local v1, "selectedColor":I
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 624
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mPrimaryColor:I

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 628
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    const v3, 0x7f1203de

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 630
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 633
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    if-nez v3, :cond_2

    .line 634
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "932"

    const-string v5, "9326"

    .line 635
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 637
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "932"

    const-string v5, "9327"

    .line 638
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 640
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "932"

    const-string v5, "9328"

    .line 641
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_4
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 643
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "932"

    const-string v5, "9329"

    .line 644
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 8
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v7, 0x0

    .line 650
    const-string v4, "ArtistDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTabUnselected : position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f110238

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 653
    .local v1, "defaultColor":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 654
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 656
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 659
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 660
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->adapter:Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    .line 661
    .local v2, "fragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->finishActionMode()V

    .line 663
    .end local v2    # "fragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    :cond_0
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 456
    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 1
    .param p1, "loadFinished"    # Z

    .prologue
    .line 714
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mIsLoadFinished:Z

    .line 716
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 719
    :cond_0
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "finishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 730
    return-void
.end method

.method public showArtistInfo(Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;)V
    .locals 13
    .param p1, "artistInfo"    # Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 364
    const-string v10, "ArtistDetailActivity"

    const-string/jumbo v11, "showArtistInfo : artistInfo is null"

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .line 439
    :goto_0
    return-void

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    .line 369
    const-string v10, "ArtistDetailActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showArtistInfo : artistInfo - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    .line 371
    .local v0, "artistDetailArtist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-nez v0, :cond_1

    .line 372
    const-string v10, "ArtistDetailActivity"

    const-string/jumbo v11, "showArtistInfo : artistDetailArtist is null"

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mActionBarTitleText:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistInfo:Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mDetail:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, "imageUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    new-instance v11, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$4;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    const v12, 0x7f0201da

    invoke-virtual {v10, v7, v11, v12}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 405
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getClkImageUrlList()Ljava/util/ArrayList;

    move-result-object v3

    .line 406
    .local v3, "clkImageUrlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getClkImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "clickImageUrl":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->isClkImageUrlListEmpty()Z

    move-result v8

    .line 409
    .local v8, "isValidClkImageUrlEmpty":Z
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v10, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    if-eqz v8, :cond_7

    .line 412
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setEnabled(Z)V

    .line 417
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v1, "artistGenreTypeStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getGenre()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "genre":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, "type":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 422
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 426
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistGenreType:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getDebutYear()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "debutYear":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, "dubtYear":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistDebutYear:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    .end local v5    # "dubtYear":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->isFavorite()Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->setFavorite(Z)V

    goto/16 :goto_0

    .line 378
    .end local v1    # "artistGenreTypeStringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "clickImageUrl":Ljava/lang/String;
    .end local v3    # "clkImageUrlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "debutYear":Ljava/lang/String;
    .end local v6    # "genre":Ljava/lang/String;
    .end local v7    # "imageUrl":Ljava/lang/String;
    .end local v8    # "isValidClkImageUrlEmpty":Z
    .end local v9    # "type":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v2    # "clickImageUrl":Ljava/lang/String;
    .restart local v3    # "clkImageUrlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "imageUrl":Ljava/lang/String;
    .restart local v8    # "isValidClkImageUrlEmpty":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 414
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v10}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_4
.end method
