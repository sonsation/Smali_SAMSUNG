.class public Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$TabMode;
    }
.end annotation


# static fields
.field private static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mCustomTabTextSize:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private mNeedToScrollPosition:I

.field private mPrimaryColor:I

.field private mSelectedPosition:I

.field private mSwipeEnabled:Z

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabMode:I

.field private mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTabViewBackgroundResId:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    .line 67
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->tab_indicator_ripple_material:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabViewBackgroundResId:I

    .line 69
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabMode:I

    .line 71
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    .line 73
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSelectedPosition:I

    .line 75
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mCustomTabTextSize:I

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSwipeEnabled:Z

    .line 524
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->initialize(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private addAllTabs()V
    .locals 7

    .prologue
    .line 227
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    .line 228
    .local v2, "pagerAdapter":Landroid/support/v4/view/PagerAdapter;
    instance-of v4, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    move-object v3, v4

    .line 231
    .local v3, "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 232
    .local v0, "count":I
    if-eqz v3, :cond_1

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 234
    sget v4, Lcom/samsung/android/app/musiclibrary/R$layout;->tab_indicator:I

    invoke-virtual {v2, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 235
    invoke-interface {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;->getTabDrawableResId(I)I

    move-result v6

    .line 234
    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 238
    .restart local v0    # "count":I
    .restart local v3    # "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 239
    sget v4, Lcom/samsung/android/app/musiclibrary/R$layout;->tab_indicator:I

    invoke-virtual {v2, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    :cond_2
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSelectedPosition:I

    add-int/lit8 v5, v0, -0x1

    if-gt v4, v5, :cond_3

    .line 244
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    .line 246
    :cond_3
    return-void
.end method

.method private createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 469
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 470
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .line 475
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 472
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->tab_selected_color:I

    const/4 v3, 0x0

    .line 473
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 472
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .restart local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method

.method private getTabOrderText(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "tabCount"    # I

    .prologue
    .line 429
    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab_n_of_n:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTabTts(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p1, "tabText"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I
    .param p3, "tabCount"    # I

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getTabOrderText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->updateTabViewTextColor()V

    .line 99
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->tab_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setBackgroundResource(I)V

    .line 101
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 103
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setGravity(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 107
    return-void
.end method

.method private scrollToTab(II)V
    .locals 10
    .param p1, "tabIndex"    # I
    .param p2, "extraOffset"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 344
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v4

    .line 345
    .local v4, "tabCount":I
    if-eqz v4, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 350
    .local v1, "selectedTab":Landroid/view/View;
    if-nez v1, :cond_2

    .line 351
    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 354
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 355
    .local v2, "selectedTabLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 356
    .local v3, "selectedTabWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    sub-int v5, v2, v6

    .line 358
    .local v5, "targetScrollX":I
    if-eq p2, v8, :cond_3

    .line 359
    add-int v6, v5, p2

    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->scrollTo(II)V

    .line 366
    :goto_1
    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    goto :goto_0

    .line 361
    :cond_3
    const-string/jumbo v6, "scrollX"

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput v5, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 368
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "selectedTabLeft":I
    .end local v3    # "selectedTabWidth":I
    .end local v5    # "targetScrollX":I
    :cond_4
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    goto :goto_0
.end method

.method private setSelectedTabView(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 374
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSelectedPosition:I

    .line 375
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    .line 376
    .local v2, "pagerAdapter":Landroid/support/v4/view/PagerAdapter;
    instance-of v9, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    if-eqz v9, :cond_1

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    move-object v3, v9

    .line 379
    .local v3, "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v4

    .line 380
    .local v4, "tabCount":I
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 381
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 382
    add-int/lit8 v9, v1, -0x1

    if-le v0, v9, :cond_2

    .line 381
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    .end local v3    # "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    .end local v4    # "tabCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 385
    .restart local v0    # "i":I
    .restart local v1    # "itemCount":I
    .restart local v3    # "samsungFeatureAdapter":Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;
    .restart local v4    # "tabCount":I
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 386
    .local v8, "view":Landroid/view/View;
    sget v9, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 388
    .local v5, "tabView":Landroid/widget/TextView;
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 389
    if-ne v0, p1, :cond_4

    move v9, v10

    :goto_3
    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 390
    invoke-virtual {v8, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 391
    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 392
    .local v7, "talkBackText":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 393
    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;->getTabTalkBackStringResId(I)I

    move-result v6

    .line 394
    .local v6, "talkBackStringResId":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 398
    .end local v6    # "talkBackStringResId":I
    :cond_3
    invoke-direct {p0, v7, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getTabTts(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 400
    if-ne v0, p1, :cond_0

    .line 401
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 402
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .end local v7    # "talkBackText":Ljava/lang/CharSequence;
    :cond_4
    move v9, v11

    .line 389
    goto :goto_3

    .line 405
    .end local v5    # "tabView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private updateTabViewTextColor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 457
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->tab_unselected_text_color:I

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 458
    .local v1, "normalColor":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 459
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->tab_selected_color:I

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 462
    .local v0, "defaultColor":I
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method


# virtual methods
.method public addTab(ILjava/lang/CharSequence;I)Landroid/view/View;
    .locals 9
    .param p1, "layoutResId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "drawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v5, p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 188
    .local v4, "tabView":Landroid/view/View;
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 189
    .local v3, "tabTextView":Landroid/widget/TextView;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabMode:I

    if-nez v5, :cond_0

    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 194
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextSize(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 206
    invoke-virtual {v3, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->heart_tab_view_padding_horizontal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, "heartTabPadding":I
    invoke-virtual {v3, v1, v7, v1, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 213
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "heartTabPadding":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 215
    return-object v4
.end method

.method public addTab(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "layoutResId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    .line 184
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->removeAllViews()V

    .line 260
    return-void
.end method

.method protected final getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSwipeEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 318
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 319
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 320
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mNeedToScrollPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->scrollToTab(II)V

    .line 322
    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 310
    .local v0, "eventType":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setFocusable(Z)V

    .line 313
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method populateFromPagerAdapter()V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->clearAllTabs()V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addAllTabs()V

    .line 540
    return-void
.end method

.method public removeTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->removeViewAt(I)V

    .line 253
    return-void
.end method

.method public setDisableTabWithOnClickListener([ILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "positions"    # [I
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 294
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    .line 295
    .local v0, "position":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    .line 296
    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, "tabView":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 298
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 299
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 302
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 305
    .end local v0    # "position":I
    .end local v1    # "tabView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 328
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 332
    return-void
.end method

.method public setFocusableChild(Z)V
    .locals 3
    .param p1, "focusable"    # Z

    .prologue
    .line 287
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 288
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorEnabled(Z)V

    .line 180
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 7
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 434
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mPrimaryColor:I

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->updateTabViewTextColor()V

    .line 436
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorColor(I)V

    .line 438
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 441
    .local v3, "tabCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 442
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 443
    .local v5, "view":Landroid/view/View;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 444
    .local v4, "tabView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 447
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 448
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 449
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 450
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v4    # "tabView":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mSwipeEnabled:Z

    .line 336
    return-void
.end method

.method public setTabBackgroundResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setBackgroundResource(I)V

    .line 114
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "tabView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 281
    return-void

    .line 280
    :cond_0
    const v1, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorColorResource(I)V

    .line 139
    return-void
.end method

.method public setTabMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabMode:I

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setMeasureWithLargestChildEnabled(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabSelected(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 267
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->scrollToTab(II)V

    .line 268
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public setTabTextColorResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 128
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 131
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mCustomTabTextSize:I

    .line 132
    return-void
.end method

.method protected setTabTextSize(Landroid/view/View;)V
    .locals 4
    .param p1, "tabView"    # Landroid/view/View;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mCustomTabTextSize:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mCustomTabTextSize:I

    :goto_0
    const v3, 0x3f99999a    # 1.2f

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IF)F

    move-result v0

    .line 222
    .local v0, "fontSize":F
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 223
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    return-void

    .line 219
    .end local v0    # "fontSize":F
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->winset_tab_text:I

    goto :goto_0
.end method

.method public setTabTitle(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, "tabView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setTabViewBackgroundResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabViewBackgroundResId:I

    .line 121
    return-void
.end method

.method public setTabViewSelected(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 409
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 410
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 411
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 412
    .local v2, "tabView":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 413
    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 414
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 415
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mTabStrip:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 409
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 418
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 421
    .end local v2    # "tabView":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v2, 0x0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 159
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 160
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->clearAllTabs()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addAllTabs()V

    .line 165
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabSelected(IZ)V

    .line 166
    return-void
.end method
