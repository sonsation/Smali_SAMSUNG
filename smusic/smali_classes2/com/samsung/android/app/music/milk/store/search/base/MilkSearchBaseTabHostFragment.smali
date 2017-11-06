.class public Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchBaseTabHostFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchBaseTabHostFragment"


# instance fields
.field private mDisableIndicator:Z

.field private mEnableDivider:Z

.field private mEnableHeader:Z

.field private mEnableTab:Z

.field protected mHeader:Landroid/view/View;

.field protected mTabFrame:Landroid/view/View;

.field private mTabInitialized:Z

.field protected mTabLayout:Landroid/support/design/widget/TabLayout;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;

.field protected mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

.field protected mViewPagerOnTabSelectedListener:Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableHeader:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableTab:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableDivider:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mDisableIndicator:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabInitialized:Z

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerOnTabSelectedListener:Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabInitialized:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;-><init>()V

    .line 91
    .local v0, "tabHostFragment":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
    return-object v0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 96
    .local v0, "current":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTab : fr - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1, p2, p1, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->notifyDataSetChanged()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTab : fr - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is existed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableIndicator()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mDisableIndicator:Z

    .line 264
    return-void
.end method

.method protected dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 260
    return-void
.end method

.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 231
    .local v1, "position":I
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTabSelected : tab pos - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 238
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 239
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v2, :cond_1

    .line 240
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->onSelected()V

    .line 242
    :cond_1
    return-void
.end method

.method protected dispatchTabUnSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTabUnSelected : tab pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 253
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->onUnSelected()V

    .line 257
    :cond_0
    return-void
.end method

.method public enableDivider(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableDivider:Z

    .line 268
    if-ne p1, v0, :cond_0

    .line 269
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableTab:Z

    .line 271
    :cond_0
    return-void
.end method

.method protected findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 277
    const v0, 0x7f040192

    return v0
.end method

.method protected initTabItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 187
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 193
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 195
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getCustomTabLayout()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 197
    .local v4, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getChildPadding()I

    move-result v1

    .line 198
    .local v1, "padding":I
    if-ltz v1, :cond_2

    .line 199
    invoke-virtual {v4, v1, v8, v1, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 201
    :cond_2
    const v5, 0x7f12047b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 202
    .local v3, "tabTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 207
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

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

    .line 211
    .end local v1    # "padding":I
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "tabTextView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerOnTabSelectedListener:Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->selectDefaultTab()V

    .line 213
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabInitialized:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v1, 0x7f040149

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    .line 121
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerOnTabSelectedListener:Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 175
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->setupViews(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onViewCreated : adapter count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mHeader:Landroid/view/View;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableHeader:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mHeader:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableHeader:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabFrame:Landroid/view/View;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableTab:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabFrame:Landroid/view/View;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableTab:Z

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_2
    const v0, 0x7f1203e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->initTabItems()V

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableTab:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mEnableDivider:Z

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->showDivider()V

    .line 160
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mDisableIndicator:Z

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorHeight(I)V

    .line 163
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 144
    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 180
    return-void
.end method

.method public removeTab(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 107
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTab : fr - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->removeFragment(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->notifyDataSetChanged()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTab : fr - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not existed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected selectDefaultTab()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 221
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 127
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object v1, v0

    .line 128
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getHeader()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mHeader:Landroid/view/View;

    .line 129
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/TabSupport;->getTabFrame()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mTabFrame:Landroid/view/View;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 133
    return-void
.end method

.method public showDivider()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
