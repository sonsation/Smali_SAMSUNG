.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainTabAdapter"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

.field private final mOnDlnaTabListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

.field private mRefreshAllData:Z

.field private mSelectedFragment:Landroid/app/Fragment;

.field private mSelectedPosition:I

.field private final mTabIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 1636
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 1623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mRefreshAllData:Z

    .line 1631
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mSelectedPosition:I

    .line 1781
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mOnDlnaTabListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    .line 1637
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mActivity:Landroid/app/Activity;

    .line 1638
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->initTabIds(Landroid/app/Activity;)V

    .line 1639
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DLNA_DMS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mActivity:Landroid/app/Activity;

    .line 1640
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mOnDlnaTabListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    .line 1642
    return-void

    .line 1640
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->updateDlnaDmsItem()V

    return-void
.end method

.method private hasRemoteDevices()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1750
    new-instance v6, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    .line 1751
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 1752
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1754
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1755
    :goto_0
    if-eqz v7, :cond_0

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return v0

    .line 1754
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1751
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1755
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private updateDlnaDmsItem()V
    .locals 7

    .prologue
    const v6, 0x1000b

    const/4 v5, -0x1

    .line 1759
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->refreshDlna()V

    .line 1760
    const/4 v2, 0x0

    .line 1761
    .local v2, "needUpdate":Z
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->hasRemoteDevices()Z

    move-result v1

    .line 1762
    .local v1, "isVisible":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1763
    .local v0, "dlnaDmsPosition":I
    if-eqz v1, :cond_2

    .line 1764
    if-ne v0, v5, :cond_0

    .line 1765
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    const/4 v2, 0x1

    .line 1774
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1775
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mRefreshAllData:Z

    .line 1776
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->notifyDataSetChanged()V

    .line 1777
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mRefreshAllData:Z

    .line 1779
    :cond_1
    return-void

    .line 1769
    :cond_2
    if-eq v0, v5, :cond_0

    .line 1770
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1771
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method findTabPosition(I)I
    .locals 2
    .param p1, "tabId"    # I

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstance(ILjava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x2

    .line 1683
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mRefreshAllData:Z

    if-eqz v1, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return v0

    .line 1691
    :cond_1
    instance-of v1, p1, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    if-nez v1, :cond_0

    .line 1694
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1662
    .local v0, "tabId":I
    const v1, 0x10030

    if-ne v0, v1, :cond_0

    .line 1663
    const/4 v1, 0x0

    .line 1666
    :goto_0
    return-object v1

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1666
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeTextResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getSelectedFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mSelectedFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method getSelectedTabId()I
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTabDrawableResId(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x10030

    if-ne v0, v1, :cond_0

    const v0, 0x7f02021f

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabTalkBackStringResId(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x10030

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a00c8

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method initTabIds(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1708
    new-instance v0, Ljava/util/StringTokenizer;

    .line 1709
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1714
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DLNA_DMS:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->hasRemoteDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    const v2, 0x1000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1720
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1722
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->notifyDataSetChanged()V

    .line 1723
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1700
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1701
    iput p2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mSelectedPosition:I

    .line 1702
    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mSelectedFragment:Landroid/app/Fragment;

    .line 1703
    return-void
.end method

.method startDlnaDmsObserving()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->startObserving()V

    .line 1741
    :cond_0
    return-void
.end method

.method stopDlnaDmsObserving()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->mDlnaDmsUpdateListener:Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->stopObserving()V

    .line 1747
    :cond_0
    return-void
.end method
