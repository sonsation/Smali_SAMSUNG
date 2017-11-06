.class public Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.source "MusicVideoTabHostFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment$MusicVideoTabId;
    }
.end annotation


# static fields
.field private static final KEY_DISPLAY_MAP:Ljava/lang/String; = "key_display_id_map"

.field public static final TAG:Ljava/lang/String; = "MusicVideoTabHostFragment"


# instance fields
.field private mDisplayIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mDisplayIdMap:Ljava/util/Map;

    return-void
.end method

.method private getTabEventName(I)Ljava/lang/String;
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 104
    const-string v0, "9931"

    .line 108
    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    const-string v0, "9932"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v0, "9933"

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;-><init>()V

    .line 39
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "type":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key_display_id_map"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key_display_id_map"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "moreTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    .line 56
    .local v2, "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mDisplayIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->getDisplayId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    .end local v2    # "type":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    :cond_1
    return-void
.end method

.method public selectTab(II)V
    .locals 3
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 96
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "994"

    .line 97
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getTabEventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 91
    return-void
.end method

.method protected setupTabs(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mDisplayIdMap:Ljava/util/Map;

    const-string v2, "40"

    .line 67
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "40"

    .line 66
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 70
    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mDisplayIdMap:Ljava/util/Map;

    const-string v2, "42"

    .line 71
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "42"

    .line 70
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 70
    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 74
    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mDisplayIdMap:Ljava/util/Map;

    const-string v2, "44"

    .line 76
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "44"

    .line 74
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "994"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->setupViews(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 87
    return-void
.end method
