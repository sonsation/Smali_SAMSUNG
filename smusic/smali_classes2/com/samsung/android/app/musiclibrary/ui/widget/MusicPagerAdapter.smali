.class public abstract Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MusicPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_TAGS:Ljava/lang/String; = "key_tags"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContainerId:I

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mRestoredTags:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 51
    return-void
.end method

.method private getTags(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "t":Ljava/util/Collection;, "TT;"
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getCount()I

    move-result v0

    .line 229
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 230
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "tag":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUnwantedFragments()V
    .locals 8

    .prologue
    .line 207
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mRestoredTags:Ljava/util/List;

    if-nez v4, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getTags(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .end local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/HashSet;

    .line 212
    .restart local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 213
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mRestoredTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 216
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 219
    :cond_2
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUnwantedFragments().remove fg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mRestoredTags:Ljava/util/List;

    .line 223
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 111
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->removeUnwantedFragments()V

    .line 137
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 68
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 75
    .local v2, "itemId":J
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    .line 78
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    invoke-static {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 80
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 84
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_2

    .line 94
    invoke-static {v0, v7}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 95
    invoke-static {v0, v7}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 98
    :cond_2
    return-object v0

    .line 86
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 90
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
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

.method public reset()V
    .locals 9

    .prologue
    .line 188
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mContainerId:I

    .line 189
    .local v0, "containerId":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getCount()I

    move-result v1

    .line 190
    .local v1, "count":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 191
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 192
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 194
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 196
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove fg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ft: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "containerId":I
    .end local v1    # "count":I
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->view_pager:I

    goto :goto_0

    .line 199
    .restart local v0    # "containerId":I
    .restart local v1    # "count":I
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 200
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 156
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreState() | state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 158
    check-cast v0, Landroid/os/Bundle;

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mRestoredTags:Ljava/util/List;

    .line 168
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 146
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveState()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "state":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "key_tags"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getTags(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 116
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 123
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 125
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 127
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61
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

    .line 64
    :cond_0
    return-void
.end method
