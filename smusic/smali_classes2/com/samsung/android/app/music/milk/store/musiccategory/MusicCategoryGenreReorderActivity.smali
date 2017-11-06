.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MusicCategoryGenreReorderActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MyStationsActivity"


# instance fields
.field private mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "MyStationsActivity"

    const-string v1, "[onBackPressed] click back button"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->saveNewOrder()V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onBackPressed()V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f0400f6

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->initMiniPlayer()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "genreIdList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    .local v1, "defaultGenreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 41
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f1202cc

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 46
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "986"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 59
    :pswitch_0
    const-string v0, "MyStationsActivity"

    const-string v1, "[onOptionsItemSelected] click home button"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->mReorderFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderFragment;->saveNewOrder()V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0a03d1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderActivity;->setTitle(I)V

    .line 53
    return-void
.end method
