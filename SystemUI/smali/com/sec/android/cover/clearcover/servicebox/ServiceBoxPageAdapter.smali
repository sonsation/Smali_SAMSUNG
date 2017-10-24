.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ServiceBoxPageAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    .line 29
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 87
    return-void

    .line 88
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
    .line 79
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 40
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

    .line 115
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v5

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 117
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 118
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "iIdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 119
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    .line 120
    .local v1, "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v5

    .line 121
    return v0

    .line 118
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    :cond_2
    monitor-exit v5

    .line 124
    return v6

    .end local v0    # "iIdx":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    monitor-exit v5

    .line 127
    return v6

    .line 115
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    .line 49
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    const-string/jumbo v3, "clone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setPageKey(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v3

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    const-string/jumbo v4, "clone"

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    .line 68
    .local v1, "view":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 69
    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 72
    :cond_1
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    .line 74
    return-object v1

    .line 50
    .end local v1    # "view":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    .restart local p1    # "pager":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    .line 57
    .local v0, "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    .restart local v1    # "view":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    goto :goto_0

    .line 60
    .end local v1    # "view":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    move-result-object v1

    .line 61
    .restart local v1    # "view":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v3

    .line 62
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    goto :goto_0

    .line 61
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parcelable"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 96
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExpanded(Z)V
    .locals 7
    .param p1, "expanded"    # Z

    .prologue
    .line 132
    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExpanded: expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    .line 134
    .local v2, "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    invoke-virtual {v2, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->setExpanded(Z)V

    goto :goto_0

    .line 137
    .end local v2    # "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-virtual {v4, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setExpandState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    .line 131
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    return-void
.end method
