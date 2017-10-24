.class public Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardServiceBoxPageAdapter.java"


# instance fields
.field private mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mPageCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;",
            "Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    return-void
.end method

.method public getCacheData(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    monitor-exit v2

    .line 173
    return-object v0

    .line 170
    .end local v0    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    .local v0, "itemSize":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "itemSize":I
    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1, "pageView"    # Ljava/lang/Object;

    .prologue
    const/4 v6, -0x2

    .line 137
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "iIdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 141
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 142
    .local v1, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v5

    .line 143
    return v0

    .line 140
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_2
    monitor-exit v5

    .line 146
    return v6

    .end local v0    # "iIdx":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    monitor-exit v5

    .line 149
    return v6

    .line 137
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_2

    .line 70
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v7}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 73
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    const-string/jumbo v5, "clone_clock"

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 92
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :goto_1
    if-nez v2, :cond_5

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "page view is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_1
    move v4, v5

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 80
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 81
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 82
    .local v1, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :goto_2
    monitor-exit v6

    goto :goto_1

    .line 85
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v7}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    .line 87
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 80
    .end local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .end local v2    # "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_4
    move v4, v5

    .line 86
    goto :goto_3

    .line 96
    .end local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .local v2, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_5
    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v3, p1

    .line 97
    check-cast v3, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 99
    :cond_6
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    .line 101
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeTransitionData()V
    .locals 6

    .prologue
    .line 258
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 259
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 260
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 262
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->makeTransitionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 257
    return-void
.end method

.method public refreshViews()V
    .locals 6

    .prologue
    .line 186
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 188
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 190
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 185
    return-void
.end method

.method public removeCacheData(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parcelable"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 115
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCoverState(Z)V
    .locals 6
    .param p1, "isCovered"    # Z

    .prologue
    .line 198
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 200
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 202
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 197
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 234
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 235
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 236
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 238
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 233
    return-void
.end method

.method public setPageType(I)V
    .locals 6
    .param p1, "pageType"    # I

    .prologue
    .line 222
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 223
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 224
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 226
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 221
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    return-void
.end method

.method public updateCMAS(Z)V
    .locals 6
    .param p1, "hasCmasNotification"    # Z

    .prologue
    .line 210
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 212
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 214
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateCMAS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 209
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 6

    .prologue
    .line 246
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 247
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 248
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 250
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateChildViewsLook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 245
    return-void
.end method

.method public updateRemoteViews(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 179
    .local v0, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    .end local v0    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->updateRemoteViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
