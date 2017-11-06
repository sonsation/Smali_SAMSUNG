.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicCategoryGenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreFragment"


# instance fields
.field private mDefaultGenreIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

.field private mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private mProgress:Landroid/view/View;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setSelectMode(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getSelectedGenreIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->saveCategoryGenreOrder(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->showLoading(Z)V

    return-void
.end method

.method private getSelectedGenreIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$5;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V

    .line 234
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils;->convert(Ljava/util/Collection;Ljava/util/Collection;Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private isSelectMode()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v0

    return v0
.end method

.method private loadGenreList(Landroid/content/Context;)Lrx/Observable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "MusicCategoryGenreFragment"

    const-string v1, "loadGenreList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$6;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;Landroid/content/Context;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;-><init>()V

    .line 66
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "genreIdList"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private saveCategoryGenreOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->updateVisibleCategory(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->updateCategoryChanges()V

    .line 261
    return-void
.end method

.method private setSelectMode(ZZ)V
    .locals 2
    .param p1, "selectMode"    # Z
    .param p2, "saveOrder"    # Z

    .prologue
    .line 246
    if-eqz p2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getSelectedGenreIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->saveCategoryGenreOrder(Ljava/util/ArrayList;)V

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->isSelectMode()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 251
    const-string v0, "MusicCategoryGenreFragment"

    const-string/jumbo v1, "setSelectMode. select mode is same. so do not change mode."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->setSelectMode(Z)V

    goto :goto_0
.end method

.method private showLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mProgress:Landroid/view/View;

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateCategoryChanges()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 266
    const-string v1, "MusicCategoryGenreFragment"

    const-string/jumbo v2, "updateCategoryChanges. activity is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.MUSICCATEGORY_USER"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.MUSICCATEGORY_USER"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 274
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.MUSICCATEGORY_USER_UPDATED"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getRealItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    const-string v2, "MusicCategoryGenreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onBackPressed] isSelectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->isSelectMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setSelectMode(ZZ)V

    .line 312
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setRetainInstance(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 80
    const-string v2, "genreIdList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "MusicCategoryGenreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : mDefaultGenreIds size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 87
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_1

    .line 88
    const-string v2, "MusicCategory"

    new-array v3, v5, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v5, v3, v4

    .line 88
    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 92
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->setPreSelectedItems(Ljava/util/List;)V

    .line 122
    const-string v2, "MusicCategoryGenreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate. saved instance state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    const-string v0, "MusicCategoryGenreFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView. savedInstanceState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const v0, 0x7f0400f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mRootView:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f12027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mProgress:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1202d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "984"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "984"

    const-string v2, "9841"

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 211
    if-eqz p2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->isSelectMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setSelectMode(ZZ)V

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->showLoading(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->loadGenreList(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    .line 217
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 218
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V

    .line 219
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mGenreAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->updatePrimaryColor(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public setAdapter()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 1
    .param p1, "finished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 300
    :cond_0
    return-void
.end method
