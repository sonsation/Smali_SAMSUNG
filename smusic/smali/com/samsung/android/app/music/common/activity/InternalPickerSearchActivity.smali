.class public Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "InternalPickerSearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;,
        Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;
    }
.end annotation


# static fields
.field private static final KEY_CONTENTS_TYPE:Ljava/lang/String; = "key_contents_type"

.field private static final SAVED_INSTANCE_STATE_CHECKED_ITEM_IDS:Ljava/lang/String; = "saved_instance_state_checked_item_ids"

.field private static final TYPE_LOCAL:I = 0x0

.field private static final TYPE_STORE:I = 0x1


# instance fields
.field private mApplyAnimation:Z

.field private mContentsType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private final mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mParentItemCount:I

.field private mResultIntent:Landroid/content/Intent;

.field private final mSaveCheckedItemRunnable:Ljava/lang/Runnable;

.field private mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 76
    iput v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mApplyAnimation:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mHandler:Landroid/os/Handler;

    .line 84
    iput v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mParentItemCount:I

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSaveCheckedItemRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->attachFragment(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    return p1
.end method

.method private attachFragment(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-static {p1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 232
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 233
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 244
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mApplyAnimation:Z

    if-eqz v4, :cond_0

    .line 245
    const v4, 0x7f060001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 247
    :cond_0
    const v4, 0x7f1200fd

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 249
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mApplyAnimation:Z

    .line 250
    return-void

    .line 236
    :pswitch_0
    const-string v4, "content://com.sec.android.app.music/"

    invoke-static {v6, v4}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;

    move-result-object v0

    .line 237
    goto :goto_0

    .line 239
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;-><init>()V

    .line 240
    .restart local v0    # "fg":Landroid/app/Fragment;
    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static makeFragmentTag(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment_tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 340
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;
    .param p2, "hintSubmit"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V

    .line 345
    return-void
.end method

.method public getCheckedItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsInArray()[J
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsInArray(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 264
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray(I)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isItemChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->isItemChecked(J)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 376
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 378
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 379
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 380
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onBackPressed()V

    .line 382
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onBackPressed()V

    .line 383
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 111
    .local v5, "context":Landroid/content/Context;
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v8

    if-nez v8, :cond_2

    const v8, 0x7f04025e

    :goto_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->setContentView(I)V

    .line 115
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 117
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mResultIntent:Landroid/content/Intent;

    .line 119
    const v8, 0x7f1204b6

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 120
    .local v7, "toggleLayout":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 121
    if-eqz p1, :cond_3

    .line 122
    const-string v8, "key_contents_type"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    .line 127
    :goto_1
    new-instance v8, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    invoke-direct {v8, p0, v7}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    const v10, 0x7f12004e

    const v11, 0x7f0a02f7

    .line 128
    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setButtonLeft(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    move-result-object v8

    const v10, 0x7f12004f

    const v11, 0x7f0a03a5

    .line 129
    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setButtonRight(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    move-result-object v0

    .line 130
    .local v0, "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    iget v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    if-nez v8, :cond_4

    move v8, v9

    :goto_2
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setSelectedButton(I)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->build()Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .line 133
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    iget-object v10, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->attachFragment(I)V

    .line 136
    new-instance v8, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v8, v5}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 137
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 142
    .end local v0    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    :goto_3
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 144
    new-instance v8, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 145
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 149
    .local v4, "checkedItemIds":[J
    if-eqz p1, :cond_6

    .line 150
    const-string/jumbo v8, "saved_instance_state_checked_item_ids"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 154
    :cond_0
    :goto_4
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v8, :cond_1

    .line 155
    const-string v8, "extra_item_count"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mParentItemCount:I

    .line 158
    :cond_1
    if-eqz v4, :cond_7

    .line 159
    array-length v8, v4

    :goto_5
    if-ge v9, v8, :cond_7

    aget-wide v2, v4, v9

    .line 160
    .local v2, "checkedItemId":J
    iget-object v10, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    const/4 v11, 0x1

    invoke-interface {v10, v2, v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 159
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 111
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "checkedItemId":J
    .end local v4    # "checkedItemIds":[J
    .end local v7    # "toggleLayout":Landroid/view/View;
    :cond_2
    const v8, 0x7f040096

    goto/16 :goto_0

    .line 124
    .restart local v7    # "toggleLayout":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "key_contents_type"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    goto/16 :goto_1

    .line 130
    .restart local v0    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    :cond_4
    const/4 v8, 0x2

    goto :goto_2

    .line 139
    .end local v0    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    :cond_5
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->attachFragment(I)V

    goto :goto_3

    .line 151
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "checkedItemIds":[J
    :cond_6
    if-eqz v1, :cond_0

    .line 152
    const-string v8, "extra_checked_item_ids"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    goto :goto_4

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 165
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v8, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v9, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v8, v9

    invoke-static {v6, v8}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v8

    const-string v9, "232"

    .line 171
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->release()V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onDestroy()V

    .line 204
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 188
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "232"

    const-string v2, "2631"

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 387
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1205e6

    if-ne v1, v2, :cond_0

    .line 388
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    .line 389
    .local v0, "checkedCount":I
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mParentItemCount:I

    add-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 390
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MaxExceed"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x1

    .line 394
    .end local v0    # "checkedCount":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const-string/jumbo v0, "saved_instance_state_checked_item_ids"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 99
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v1

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "key_contents_type"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mContentsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onStart()V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->finish()V

    .line 181
    :cond_0
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method public removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 350
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "value"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSaveCheckedItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSaveCheckedItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 298
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public updateCheckedItemIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "removeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItemIds(Ljava/util/ArrayList;)V

    .line 293
    return-void
.end method

.method public updateCheckedItems([J)V
    .locals 1
    .param p1, "checkedItemIds"    # [J

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItems([J)V

    .line 303
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 314
    return-void
.end method
