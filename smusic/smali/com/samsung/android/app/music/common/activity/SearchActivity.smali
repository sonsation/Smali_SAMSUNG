.class public Lcom/samsung/android/app/music/common/activity/SearchActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;
    }
.end annotation


# static fields
.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_STORE:I = 0x1


# instance fields
.field private mApplyAnimation:Z

.field private mContentsType:I

.field private mDefaultSearchHint:Ljava/lang/String;

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private final mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

.field private mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

.field private mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mApplyAnimation:Z

    .line 87
    iput v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    .line 323
    new-instance v0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 340
    new-instance v0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mDefaultSearchHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/activity/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/SearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->attachFragment(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/SearchActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private attachFragment(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 421
    invoke-static {p1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 423
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 424
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_2

    .line 425
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    if-eqz v4, :cond_0

    .line 426
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->clearHelperFragment()V

    .line 428
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 438
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mApplyAnimation:Z

    if-eqz v4, :cond_1

    .line 439
    const v4, 0x7f060001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 441
    :cond_1
    const v4, 0x7f1204b5

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 443
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mApplyAnimation:Z

    .line 444
    return-void

    .line 430
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getSearchFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 431
    goto :goto_0

    .line 433
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getMilkSearchStoreFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 434
    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGoogleMediaSearchText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 236
    const-string v4, ""

    .line 237
    .local v4, "searchText":Ljava/lang/String;
    const-string v6, "android.intent.extra.focus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "focus":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 240
    const-string/jumbo v6, "query"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    :cond_0
    :goto_0
    return-object v4

    .line 242
    :cond_1
    const-string v6, "android.intent.extra.title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "title":Ljava/lang/String;
    const-string v6, "android.intent.extra.artist"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "artist":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v6, "audio/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    move-object v4, v5

    goto :goto_0

    .line 246
    :cond_2
    const-string/jumbo v6, "vnd.android.cursor.item/album"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    const-string v6, "android.intent.extra.album"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "album":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    move-object v4, v0

    .line 250
    if-eqz v1, :cond_0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 256
    .end local v0    # "album":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v6, "vnd.android.cursor.item/artist"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    if-eqz v1, :cond_0

    .line 258
    move-object v4, v1

    goto :goto_0
.end method

.method private getMilkSearchStoreFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;-><init>()V

    .line 417
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-object v0
.end method

.method private getSearchFragment()Landroid/app/Fragment;
    .locals 7

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 396
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 398
    const-string v5, "extra_list_type"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 400
    .local v4, "listType":I
    const-string v5, "extra_key_word"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "keyWord":Ljava/lang/String;
    const v5, 0x10000b

    if-ne v4, v5, :cond_0

    .line 402
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getNewInstance(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 406
    .end local v3    # "keyWord":Ljava/lang/String;
    .end local v4    # "listType":I
    :cond_0
    if-nez v1, :cond_1

    .line 407
    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;-><init>()V

    .line 409
    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    return-object v1
.end method

.method private static makeFragmentTag(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .prologue
    .line 447
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

.method public static startActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "toggleButton"    # I
    .param p3, "tab"    # I
    .param p4, "data"    # Landroid/os/Bundle;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "key_keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 289
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;
    .param p2, "hintSubmit"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V

    .line 294
    return-void
.end method

.method public final changeContentsType(I)V
    .locals 2
    .param p1, "contentType"    # I

    .prologue
    .line 375
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    if-ne v1, p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x0

    .line 379
    .local v0, "toggleButton":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 388
    :goto_1
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 381
    :pswitch_0
    const v1, 0x7f12004e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 382
    goto :goto_1

    .line 384
    :pswitch_1
    const v1, 0x7f12004f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 385
    goto :goto_1

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHelperFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->getHelperFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

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
    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget-boolean v9, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v9

    if-nez v9, :cond_1

    const v9, 0x7f0401a6

    :goto_0
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 112
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_0

    .line 117
    sget-boolean v9, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 118
    const/4 v6, 0x0

    .line 122
    .local v6, "screenState":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v12, Lcom/samsung/android/app/music/bixby/executor/search/LaunchSearchResponseExecutor;

    invoke-direct {v12, v2}, Lcom/samsung/android/app/music/bixby/executor/search/LaunchSearchResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v12, v9, v10

    const/4 v12, 0x1

    new-instance v13, Lcom/samsung/android/app/music/bixby/executor/search/local/SetLocalQueryExecutor;

    invoke-direct {v13, v2, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/search/local/SetLocalQueryExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/activity/SearchActivity;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;)V

    aput-object v13, v9, v12

    new-instance v12, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-direct {v12, v2, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/activity/SearchActivity;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;)V

    aput-object v12, v9, v11

    invoke-interface {v2, v6, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 128
    .end local v6    # "screenState":Ljava/lang/String;
    :cond_0
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 131
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string v9, "key_keyword"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "keyword":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 134
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 159
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v9, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v12, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v9, v12

    invoke-static {v5, v9}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    new-instance v9, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 165
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 167
    const v9, 0x7f1204b6

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 168
    .local v8, "toggleLayout":Landroid/view/View;
    if-eqz v8, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "music_player_pref"

    .line 170
    invoke-virtual {v9, v12, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 171
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "current_contents"

    .line 172
    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    .line 174
    new-instance v9, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    invoke-direct {v9, p0, v8}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    const v12, 0x7f12004e

    const v13, 0x7f0a02f7

    .line 175
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setButtonLeft(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    move-result-object v9

    const v12, 0x7f12004f

    const v13, 0x7f0a03a5

    .line 176
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setButtonRight(II)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    move-result-object v1

    .line 177
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    if-nez v9, :cond_7

    move v9, v10

    :goto_3
    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->setSelectedButton(I)Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;

    .line 179
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;->build()Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .line 180
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    iget-object v10, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mOnToggleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->attachFragment(I)V

    .line 183
    new-instance v9, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;-><init>(Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    .line 184
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 188
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mDefaultSearchHint:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->initMiniPlayer()V

    .line 190
    return-void

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "keyword":Ljava/lang/String;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "toggleLayout":Landroid/view/View;
    :cond_1
    const v9, 0x7f0401fd

    goto/16 :goto_0

    .line 120
    .restart local v2    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    :cond_2
    const-string v6, "Search"

    .restart local v6    # "screenState":Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    .end local v6    # "screenState":Ljava/lang/String;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "keyword":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "query"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "searchText":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 138
    const-string v7, ""

    .line 139
    if-eqz v0, :cond_5

    .line 140
    const-string v9, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.SEARCH"

    .line 141
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 142
    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getGoogleMediaSearchText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 143
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mContentsType:I

    if-nez v9, :cond_6

    .line 144
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v9

    const-string v12, "961"

    const-string v13, "1301"

    .line 145
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_5
    :goto_5
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v9

    const-string v12, "963"

    const-string v13, "9611"

    .line 149
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v7    # "searchText":Ljava/lang/String;
    .restart local v1    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    .restart local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "toggleLayout":Landroid/view/View;
    :cond_7
    move v9, v11

    .line 177
    goto :goto_3

    .line 186
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;
    :cond_8
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->attachFragment(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mToggleButtonHelper:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->release()V

    .line 229
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 230
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 197
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 221
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPause()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 216
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onStart()V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->finish()V

    .line 210
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
    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method public removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 299
    return-void
.end method

.method public setHelperFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->setHelperFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 463
    :cond_0
    return-void
.end method

.method public setHelperFragmentVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->setHelperFragmentVisible(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 274
    return-void
.end method
