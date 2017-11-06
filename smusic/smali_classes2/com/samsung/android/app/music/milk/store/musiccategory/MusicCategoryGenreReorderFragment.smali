.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicCategoryGenreReorderFragment.java"


# static fields
.field private static final CUR_LIST:Ljava/lang/String; = "cur_list"

.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreReorderFragment"


# instance fields
.field private adapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

.field private listView:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

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

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "genreIdList"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    const-string v1, "genreIdList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "MusicCategoryGenreReorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : mDefaultGenreIds size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const v1, 0x7f0400f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mRoot:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f1202d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->listView:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    if-nez p3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->getGenreInfosWithReorder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    :goto_0
    const-string v1, "MusicCategoryGenreReorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreateView] list size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->adapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->listView:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->adapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->mRoot:Landroid/view/View;

    return-object v1

    .line 69
    :cond_0
    const-string v1, "cur_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "cur_list"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->adapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->getCurItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 81
    return-void
.end method

.method public saveNewOrder()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->adapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->getReorderValue()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    .local v0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->insertOrderInfos(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.MUSICCATEGORY_USER_UPDATED"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method
