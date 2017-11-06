.class public Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "TabHostFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDisableIndicator:Z

.field private mEnableDivider:Z

.field private mEnableHeader:Z

.field private mEnableTab:Z

.field protected mHeader:Landroid/view/View;

.field private mLastFragmentManager:Landroid/app/FragmentManager;

.field private mPrimaryColor:I

.field protected mTabFrame:Landroid/view/View;

.field private mTabInitialized:Z

.field protected mTabLayout:Landroid/support/design/widget/TabLayout;

.field private mTransparent:Landroid/graphics/drawable/Drawable;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;

.field protected mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableHeader:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableTab:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableDivider:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mDisableIndicator:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabInitialized:Z

    .line 60
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTransparent:Landroid/graphics/drawable/Drawable;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabInitialized:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 337
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .line 343
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 339
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v2, 0x7f110234

    const/4 v3, 0x0

    .line 340
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 339
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .restart local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method

.method private ensureViewPagerAdapter(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mLastFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mLastFragmentManager:Landroid/app/FragmentManager;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->clone(Landroid/app/FragmentManager;)Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;-><init>()V

    .line 68
    .local v0, "tabHostFragment":Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;
    return-object v0
.end method

.method private updateSelectedTabColor()V
    .locals 9

    .prologue
    .line 317
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    .line 318
    .local v2, "selectedIdx":I
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 320
    .local v3, "selectedTab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 321
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    const v7, 0x7f1203de

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 322
    .local v5, "textView":Landroid/widget/TextView;
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 327
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    .line 328
    .local v4, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    .line 329
    .local v6, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->createTabViewRipple()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 76
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->ensureViewPagerAdapter(Landroid/app/FragmentManager;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTab : fr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->ensureViewPagerAdapter(Landroid/app/FragmentManager;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTab : fr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0, p2, p1, p4}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public disableIndicator()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mDisableIndicator:Z

    .line 301
    return-void
.end method

.method protected dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 297
    return-void
.end method

.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 8
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, "position":I
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f110236

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 261
    .local v3, "selectedColor":I
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 262
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 266
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    const v5, 0x7f1203de

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 268
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchTabSelected : tab pos - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 274
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 275
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v5, v1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v5, :cond_2

    .line 276
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->onSelected()V

    .line 278
    :cond_2
    return-void
.end method

.method protected dispatchTabUnSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 7
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v6, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f110238

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 284
    .local v1, "defaultColor":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 285
    .local v0, "cutView":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 287
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 290
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    .line 291
    .local v2, "fragment":Landroid/app/Fragment;
    instance-of v4, v2, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v4, :cond_0

    .line 292
    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->onUnSelected()V

    .line 294
    :cond_0
    return-void
.end method

.method public enableHeader(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableHeader:Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mHeader:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableHeader:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    return-void

    .line 108
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public enableTab(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableTab:Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabFrame:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableTab:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    return-void

    .line 116
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected getChildPadding()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, -0x1

    return v0
.end method

.method protected getCustomTabLayout()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7f040145

    return v0
.end method

.method public getTabAdapter()Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    return-object v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected initTabItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 187
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 193
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 194
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getCustomTabLayout()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 196
    .local v4, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getChildPadding()I

    move-result v1

    .line 197
    .local v1, "padding":I
    if-ltz v1, :cond_2

    .line 198
    invoke-virtual {v4, v1, v8, v1, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 200
    :cond_2
    const v5, 0x7f1203de

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
    .local v3, "tabTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 206
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initTabItems : select tab. pos - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v1    # "padding":I
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "tabTextView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v6, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->selectDefaultTab()V

    .line 244
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabInitialized:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 174
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->setupViews(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->ensureViewPagerAdapter(Landroid/app/FragmentManager;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onViewCreated : adapter count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 148
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mHeader:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableHeader:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabFrame:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabFrame:Landroid/view/View;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mEnableTab:Z

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_2
    const v1, 0x7f1203e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f110236

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 159
    .local v0, "selectedColor":I
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 160
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->initTabItems()V

    .line 166
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mDisableIndicator:Z

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorHeight(I)V

    .line 169
    :cond_4
    return-void

    .end local v0    # "selectedColor":I
    :cond_5
    move v1, v3

    .line 148
    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 178
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mPrimaryColor:I

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->updateSelectedTabColor()V

    .line 180
    return-void
.end method

.method protected selectDefaultTab()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 252
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 130
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object v1, v0

    .line 131
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getHeader()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mHeader:Landroid/view/View;

    .line 132
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getTabFrame()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->mTabFrame:Landroid/view/View;

    .line 134
    :cond_0
    return-void
.end method
