.class public Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.source "NewReleaseTabHostFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# static fields
.field private static final KEY_MORE_TYPE_LIST:Ljava/lang/String; = "key_more_type_list"

.field private static final TAG:Ljava/lang/String; = "NewReleaseTabHostFragment"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;-><init>()V

    .line 27
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "type":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    const-string v3, "key_more_type_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method


# virtual methods
.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v1, 0x2

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 72
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 75
    :cond_0
    return-void
.end method

.method protected getTitleFromType(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    .prologue
    .line 54
    const-string v0, "20"

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string v0, "21"

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "22"

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "key_more_type_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->mMoreTypeList:Ljava/util/ArrayList;

    .line 42
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onDestroyView()V

    .line 85
    return-void
.end method

.method public selectTab(II)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 95
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 90
    return-void
.end method

.method protected setupTabs(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->mMoreTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    .line 47
    .local v0, "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getTitleFromType(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;

    move-result-object v3

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 47
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 51
    .end local v0    # "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    :cond_0
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->setupViews(Landroid/view/View;)V

    .line 80
    return-void
.end method
