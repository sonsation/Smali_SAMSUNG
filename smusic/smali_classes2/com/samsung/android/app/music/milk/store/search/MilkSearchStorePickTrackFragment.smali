.class public Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchStorePickTrackFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;
.implements Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;
    }
.end annotation


# static fields
.field protected static final AUTOCOMPLETE_TAG:Ljava/lang/String; = "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStorePickTrackFragment"

.field protected static final PRESET_TAG:Ljava/lang/String; = "com.samsung.android.app.music.milk.store.search.picktrack.preset"

.field protected static final SEARCH_RESULT_TAG:Ljava/lang/String; = "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"


# instance fields
.field private isAutocompleteSearchEnable:Z

.field private isFirstServiceConncected:Z

.field private isInitCheckboxChecked:Z

.field private isPressedOption:Z

.field protected mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

.field private mInitHeaderCheckboxCount:I

.field protected mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

.field protected mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field protected mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field protected mPresetFramelayout:Landroid/widget/FrameLayout;

.field protected mSearchResultLayout:Landroid/widget/FrameLayout;

.field private mSearchSubmit:Z

.field protected mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field protected mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method private disableSelectAllViewEnabled()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    .line 837
    :cond_1
    return-void
.end method


# virtual methods
.method protected assginFragment(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;
    .locals 4
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "initKeyword"    # Ljava/lang/String;
    .param p4, "defaultTab"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "isNewAssigned":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 470
    .local v2, "ret":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 471
    const/4 v1, 0x1

    .line 472
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    move-result-object v2

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 481
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p1, v2, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 482
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 485
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    if-nez v1, :cond_1

    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 486
    check-cast v3, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-virtual {v3, p3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->reload(Ljava/lang/String;)V

    .line 489
    :cond_1
    return-object v2

    .line 474
    :cond_2
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    invoke-static {p3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    move-result-object v2

    goto :goto_0

    .line 477
    :cond_3
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;

    .end local v2    # "ret":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;-><init>()V

    .restart local v2    # "ret":Landroid/app/Fragment;
    goto :goto_0
.end method

.method protected clearSearchResultFragment()V
    .locals 2

    .prologue
    .line 806
    const-string v1, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    .line 807
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .line 808
    .local v0, "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->clearFragment()V

    .line 811
    :cond_0
    return-void
.end method

.method protected getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableAutocomplete()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isAutocompleteSearchEnable:Z

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "MilkSearchStorePickTrackFragment"

    return-object v0
.end method

.method protected final hideKeyboardAndCursor()V
    .locals 4

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 820
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 821
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 822
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 823
    return-void
.end method

.method protected init(Ljava/lang/String;)V
    .locals 5
    .param p1, "deafultTab"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 416
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_8

    .line 417
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .line 418
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->isNetworkMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 419
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->isLocalMusicMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "keyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init >>> There are keyword("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") go to SearchResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    .line 440
    .end local v1    # "keyword":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz v2, :cond_2

    .line 441
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isInitCheckboxChecked:Z

    .line 442
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 443
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 445
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mInitHeaderCheckboxCount:I

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HeaderChecked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isInitCheckboxChecked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") HeaderCheckedCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mInitHeaderCheckboxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    .line 460
    :cond_2
    :goto_1
    return-void

    .line 427
    .restart local v1    # "keyword":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init >>> not keyword .. go to Preset"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    goto :goto_0

    .line 431
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    goto :goto_0

    .line 434
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init >>> Local Music Mode !!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init >>> No Network Mode !!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    goto :goto_1

    .line 458
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init >>> Activity is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected isFragmentVisible(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "ret":Z
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 499
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 505
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 499
    goto :goto_0

    .line 500
    :cond_2
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.preset"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 502
    :cond_4
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected isKeyboardShown()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 731
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 732
    .local v1, "a":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 734
    .local v7, "w":Landroid/view/Window;
    if-eqz v7, :cond_0

    .line 735
    const/16 v0, 0x80

    .line 736
    .local v0, "SOFT_KEYBOARD_HEIGHT_DP_THRESHOLD":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 737
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 738
    .local v6, "rootView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 739
    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 740
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 741
    .local v5, "res":Landroid/content/res/Resources;
    if-eqz v5, :cond_0

    .line 742
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 743
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v9, v10

    .line 744
    .local v3, "heightDiff":I
    int-to-float v9, v3

    const/high16 v10, 0x43000000    # 128.0f

    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    const/4 v8, 0x1

    .line 749
    .end local v0    # "SOFT_KEYBOARD_HEIGHT_DP_THRESHOLD":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "heightDiff":I
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "rootView":Landroid/view/View;
    .end local v7    # "w":Landroid/view/Window;
    :cond_0
    return v8
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 121
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_2

    .line 122
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 125
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isPressedOption:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isFirstServiceConncected:Z

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 570
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Landroid/app/FragmentManager;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->start()V

    .line 589
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isAutocompleteSearchEnable:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchSubmit:Z

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 250
    const v0, 0x7f13002c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateOptionsMenu >>> Create Memu"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setHasOptionsMenu(Z)V

    .line 157
    const v0, 0x7f040187

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isPressedOption:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mInitHeaderCheckboxCount:I

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isInitCheckboxChecked:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->release()V

    .line 236
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isFirstServiceConncected:Z

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isFirstServiceConncected:Z

    .line 240
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 241
    return-void
.end method

.method public onMilkLocalMusicReleased()V
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->init(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->init(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->onNetworkStateChanged(Landroid/content/Context;Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1205e6

    if-ne v0, v1, :cond_0

    .line 276
    iput-boolean v6, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isPressedOption:Z

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Landroid/app/FragmentManager;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->start()V

    move v0, v6

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 257
    const v2, 0x7f1205e6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    .local v0, "done":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 259
    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    .line 260
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .line 261
    .local v1, "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    if-eqz v1, :cond_3

    .line 262
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getSelectedItemCount()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareOptionsMenu >>> SelectedCount("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 264
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getSelectedItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")Option visibility => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getSelectedItemCount()I

    move-result v6

    if-lez v6, :cond_2

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v1    # "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    :cond_1
    move v2, v4

    .line 262
    goto :goto_0

    :cond_2
    move v3, v4

    .line 265
    goto :goto_1

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPrepareOptionsMenu >>> Option disable"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    const-string v1, "MilkSearchStorePickTrackFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryTextChange : query ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") fragment Not added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_0
    return v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    const-string v0, "MilkSearchStorePickTrackFragment"

    const-string v2, "onQueryTextChange : Bixby Mode ... So return"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 630
    goto :goto_0

    .line 633
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->isNetworkMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryTextChange : query ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setSubmitState(Z)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    .line 638
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->clearSearchResultFragment()V

    .line 642
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    .line 644
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setEnableAutocomplete(Z)V

    :cond_3
    :goto_1
    move v0, v1

    .line 654
    goto :goto_0

    .line 646
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getEnableAutocomplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceAutoCompleteFragment()Landroid/app/Fragment;

    .line 648
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->reloadAutocompleteFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onQueryTextChange : Local Music Mode!! skip!!"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    const-string v1, "MilkSearchStorePickTrackFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryTextSubmit : query ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") fragment Not added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :goto_0
    return v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    const-string v0, "MilkSearchStorePickTrackFragment"

    const-string v2, "onQueryTextSubmit : Bixby Mode ... So return"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 601
    goto :goto_0

    .line 604
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 606
    const-string v2, "MilkSearchStorePickTrackFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryTextSubmit : query ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setAutocompleteVisibility(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getEnableAutocomplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setSubmitState(Z)V

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "MilkSearchStorePickTrackFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryTextSubmit : Search content ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v0, v1

    .line 617
    goto :goto_0

    .line 615
    :cond_3
    const-string v0, "MilkSearchStorePickTrackFragment"

    const-string v2, "onQueryTextSubmit : Local Music Mode!! skip!!"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->init(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method protected onSearchCommandCompleted()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStart()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->shouldReceiveHint()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 151
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 221
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStop()V

    .line 222
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v7

    .line 165
    .local v7, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    const v0, 0x7f120375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    .line 166
    const v0, 0x7f12046c

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    .line 168
    const v0, 0x7f120376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 171
    .local v6, "a":Landroid/app/Activity;
    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v0, :cond_0

    .line 172
    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .end local v6    # "a":Landroid/app/Activity;
    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 176
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    const v1, 0x7f120373

    const v2, 0x7f120374

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getPrimaryColor()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->setCallback(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;)V

    .line 183
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    const v4, 0x7f120372

    const v5, 0x7f120377

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;-><init>(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->initNetworkLayout(Landroid/content/Context;)V

    .line 190
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    invoke-virtual {v7, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isFirstServiceConncected:Z

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->init(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 2
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->setColor(Landroid/content/Context;I)V

    .line 134
    :cond_0
    return-void
.end method

.method protected reloadAutocompleteFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string v1, "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

    .line 799
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .line 800
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->setKeyword(Ljava/lang/String;)V

    .line 803
    :cond_0
    return-void
.end method

.method protected replaceAutoCompleteFragment()Landroid/app/Fragment;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, "ret":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replaceAutoCompleteFragment : Try replace AutoCompleteFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->disableSelectAllViewEnabled()V

    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    const v1, 0x7f12046c

    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->assginFragment(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    move-result-object v6

    move-object v0, v6

    .line 538
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->setCallback(Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;)V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 543
    :cond_2
    return-object v6
.end method

.method public replaceBaseFragment()V
    .locals 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchSubmit:Z

    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replaceBaseFragment ()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "submit state"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected replacePresetFragment()Landroid/app/Fragment;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 509
    const/4 v6, 0x0

    .line 510
    .local v6, "ret":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replacePresetFragment : Try replace PresetFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->disableSelectAllViewEnabled()V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 515
    const v1, 0x7f120375

    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.preset"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->assginFragment(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    move-result-object v6

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    :cond_2
    return-object v6
.end method

.method protected replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "deafultTab"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 548
    const/4 v6, 0x0

    .line 549
    .local v6, "ret":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replaceSearchResultFragment : Try replace SearchResultFragment Keyword("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") DefaultTab("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") Callback("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->disableSelectAllViewEnabled()V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mPresetFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mAutoCompleteFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 563
    const v1, 0x7f120376

    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->assginFragment(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    move-result-object v6

    .line 566
    :cond_2
    return-object v6

    :cond_3
    move v0, v1

    .line 549
    goto :goto_0
.end method

.method public searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->isLocalMusicMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->hideKeyboardAndCursor()V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "searchStoreContents >>> Hide keyboard"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    .line 699
    .local v0, "lateExecution":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 721
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 725
    .end local v0    # "lateExecution":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "searchStoreContents : Local Music Mode !!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAutocompleteVisibility(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 754
    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceAutoCompleteFragment()Landroid/app/Fragment;

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    goto :goto_0
.end method

.method public setEnableAutocomplete(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isAutocompleteSearchEnable:Z

    .line 764
    return-void
.end method

.method protected setSubmitState(Z)V
    .locals 0
    .param p1, "submit"    # Z

    .prologue
    .line 826
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchSubmit:Z

    .line 827
    return-void
.end method

.method protected shouldReceiveHint()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method
