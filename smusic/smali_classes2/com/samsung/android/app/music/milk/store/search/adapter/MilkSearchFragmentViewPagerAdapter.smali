.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MilkSearchFragmentViewPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchFragmentViewPagerAdapter"


# instance fields
.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mFragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mTagList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 44
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->addFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clone(Landroid/app/FragmentManager;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;
    .locals 3
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 239
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 241
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v2, "MilkSearchFragmentViewPagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyItem : position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p3

    .line 103
    check-cast v0, Landroid/app/Fragment;

    .line 105
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 107
    .local v1, "mCurTransaction":Landroid/app/FragmentTransaction;
    const-string v2, "MilkSearchFragmentViewPagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing item #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p3, Landroid/app/Fragment;

    .line 108
    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v2

    .line 113
    :goto_1
    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 118
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 120
    return-void

    :cond_1
    move-object v2, v3

    .line 114
    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 227
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 230
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 48
    .local v0, "ret":Landroid/app/Fragment;
    const-string v2, "MilkSearchFragmentViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem >>> Position("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") has fragment ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 68
    const-string v4, "MilkSearchFragmentViewPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiateItem : position - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 71
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 97
    .end local v0    # "f":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 77
    .local v3, "mCurTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 79
    .local v1, "fragment":Landroid/app/Fragment;
    const-string v4, "MilkSearchFragmentViewPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding item #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_1

    .line 82
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment$SavedState;

    .line 83
    .local v2, "fss":Landroid/app/Fragment$SavedState;
    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 87
    .end local v2    # "fss":Landroid/app/Fragment$SavedState;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, p2, :cond_2

    .line 88
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v1, v7}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 91
    invoke-static {v1, v7}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 92
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 94
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFragment(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public removeFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 199
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->removeFragment(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 167
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 168
    check-cast v0, Landroid/os/Bundle;

    .line 169
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 170
    const-string/jumbo v7, "states"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 171
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 173
    if-eqz v2, :cond_0

    .line 174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 175
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v7, v2, v3

    check-cast v7, Landroid/app/Fragment$SavedState;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 179
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, "key":Ljava/lang/String;
    const-string v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 181
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 182
    .local v4, "index":I
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v8, v0, v5}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 183
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 184
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 185
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_2
    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 188
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    :cond_3
    const-string v8, "MilkSearchFragmentViewPagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 147
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 148
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/app/Fragment$SavedState;

    .line 149
    .local v1, "fss":[Landroid/app/Fragment$SavedState;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    const-string/jumbo v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 152
    .end local v1    # "fss":[Landroid/app/Fragment$SavedState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 154
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    if-nez v4, :cond_1

    .line 156
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 158
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 152
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_3
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 125
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    .line 131
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 132
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 134
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 136
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method
