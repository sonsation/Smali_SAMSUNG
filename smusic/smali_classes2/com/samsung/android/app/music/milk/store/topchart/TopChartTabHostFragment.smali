.class public Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.source "TopChartTabHostFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# static fields
.field private static final KEY_MORE_TYPE_LIST:Ljava/lang/String; = "key_more_type_list"

.field public static final TAG:Ljava/lang/String; = "TopChartTabHostFragment"


# instance fields
.field private mMoreTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation
.end field

.field private topChartFragmentMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;-><init>()V

    .line 31
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "type":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    const-string v3, "key_more_type_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v1, 0x2

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 99
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    :cond_0
    return-void
.end method

.method protected getTitleFromType(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    .prologue
    .line 81
    const-string v0, "2"

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string v0, "3"

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "4"

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const v0, 0x7f0a03e2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoadFinished(I)Z
    .locals 3
    .param p1, "tabId"    # I

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    .line 108
    .local v0, "f":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->isLoadFinished()Z

    move-result v1

    .line 114
    .end local v0    # "f":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "key_more_type_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->mMoreTypeList:Ljava/util/ArrayList;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onDestroy()V

    .line 55
    return-void
.end method

.method public selectTab(II)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 136
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;I)V
    .locals 2
    .param p1, "finished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;
    .param p2, "tabId"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    .line 121
    .local v0, "f":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 126
    .end local v0    # "f":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    :cond_0
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 131
    return-void
.end method

.method protected setupTabs(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "index":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->mMoreTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    .line 61
    .local v3, "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    const-string v5, "10"

    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "setupTabs : banner type!!"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupTabs : displayid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", displayType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", displaytitle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    .line 73
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 71
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    move-result-object v0

    .line 75
    .local v0, "fragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->topChartFragmentMap:Landroid/util/SparseArray;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getTitleFromType(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p0, v5, v0, v6}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    move v1, v2

    .line 77
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_0

    .line 78
    .end local v0    # "fragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    .end local v3    # "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    :cond_1
    return-void
.end method
