.class public Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
.source "MilkSearchStoreResultTabFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;


# static fields
.field private static final KEY_DEFAULT_TAB:Ljava/lang/String; = "default_tab"

.field private static final KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field public static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreResultTabFragment"

.field private static mIsInit:Z


# instance fields
.field private displayTabTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

.field private mBixbySearchResultTab:Ljava/lang/String;

.field private mDefaultTab:Ljava/lang/String;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mKeyword:Ljava/lang/String;

.field private mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mTabEntireLayout:Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;

.field private mTabEntryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForSearchResultRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mIsInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->setTabEnabled(Z)V

    return-void
.end method

.method private addTabEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 351
    .local v0, "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTabEntry >>> Add new Fragment ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getNewFragmentByDisplaytype(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v0    # "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    :goto_0
    return-void

    .line 357
    .restart local v0    # "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addTabEntry >>> previous Fragment is existed"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v0    # "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addTabEntry >>> tag is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createTabViewRipple(I)Landroid/graphics/drawable/RippleDrawable;
    .locals 4
    .param p1, "primaryColor"    # I

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 580
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 581
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .line 586
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 583
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v2, 0x7f110234

    const/4 v3, 0x0

    .line 584
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 583
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .restart local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method

.method private getNewFragmentByDisplaytype(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    const-string v1, "1"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    move-result-object v0

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    const-string v1, "2"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_2
    const-string v1, "3"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_3
    const-string v1, "5"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_4
    const-string v1, "7"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 338
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_5
    const-string v1, "6"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private initTabentry()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "1"

    const v2, 0x7f0a0395

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "2"

    const v2, 0x7f0a0391

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "3"

    const v2, 0x7f0a0392

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "5"

    const v2, 0x7f0a0396

    .line 154
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "6"

    const v2, 0x7f0a0394

    .line 156
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    const-string v1, "7"

    const v2, 0x7f0a0393

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "defaultTab"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;-><init>()V

    .line 140
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "default_tab"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mIsInit:Z

    .line 145
    return-object v1
.end method

.method private reloadByDisplayType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "displayType"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 309
    .local v0, "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->reload(Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method private removeTabEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 385
    .local v0, "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0, v1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->removeTab(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    .end local v0    # "ret":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    :cond_0
    return-void
.end method

.method private removeTabs()V
    .locals 4

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "removeTabs >>> Start"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 395
    .local v1, "displayTypeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 396
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, "displayType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->removeTabEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0    # "displayType":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "removeTabs >>> End"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private selectDefaultTab(Ljava/lang/String;)V
    .locals 6
    .param p1, "defaultTab"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "defaultTabIndex":I
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    move v0, v1

    .line 426
    .end local v1    # "i":I
    :cond_0
    if-gez v0, :cond_1

    .line 427
    const/4 v0, 0x0

    .line 430
    :cond_1
    const-string v3, "MilkSearchStoreResultTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectDefaultTab : default tab index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    .line 434
    .local v2, "tabCount":I
    if-lez v2, :cond_2

    if-ge v0, v2, :cond_2

    .line 435
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 437
    :cond_2
    return-void

    .line 418
    .end local v2    # "tabCount":I
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendSearchResultToBixby(Ljava/lang/String;ILcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V
    .locals 6
    .param p1, "storeResultType"    # Ljava/lang/String;
    .param p2, "curIndex"    # I
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    const/4 v3, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sendSearchResultToBixby >>> start sending result"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mWaitForSearchResultRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mWaitForSearchResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mWaitForSearchResultRunnable:Ljava/lang/Runnable;

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    .line 527
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 528
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v0, p3, v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mWaitForSearchResultRunnable:Ljava/lang/Runnable;

    .line 530
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mWaitForSearchResultRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 533
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    .line 534
    return-void
.end method

.method private setTabEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTabEnabled : Enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntireLayout:Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->setTouchEnabled(Z)V

    .line 592
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntireLayout:Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->setAlpha(F)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    .line 594
    return-void

    .line 592
    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method private setupAllTabs()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setupAllTabs >>> Start"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 367
    .local v0, "displayTypeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_SEARCH_TAB_COUNT"

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 370
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 371
    const-string v1, "2"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 372
    const-string v1, "3"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 373
    const-string v1, "5"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 374
    const-string v1, "6"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 375
    const-string v1, "7"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->addTabEntry(Ljava/lang/String;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setupAllTabs >>> End"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method


# virtual methods
.method public convertDpToPixel(FLandroid/content/Context;)F
    .locals 5
    .param p1, "dp"    # F
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 458
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 459
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 460
    .local v1, "px":F
    return v1
.end method

.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "position":I
    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    .line 488
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 489
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 490
    .local v1, "index":I
    if-ne v2, v1, :cond_1

    .line 491
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    invoke-direct {p0, v4, v2, v5}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->sendSearchResultToBixby(Ljava/lang/String;ILcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 496
    .end local v1    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v2, :cond_2

    .line 516
    :goto_0
    return-void

    .line 500
    :cond_2
    const-string v0, "9622"

    .line 501
    .local v0, "eventId":Ljava/lang/String;
    const-string v3, "964"

    .line 502
    .local v3, "screenId":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 503
    const-string v0, "9623"

    .line 515
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 505
    const-string v0, "9624"

    goto :goto_1

    .line 506
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "5"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 507
    const-string v0, "9625"

    goto :goto_1

    .line 508
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "6"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 509
    const-string v0, "9626"

    goto :goto_1

    .line 510
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "7"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    const-string v0, "9681"

    .line 512
    const-string v3, "967"

    goto :goto_1
.end method

.method protected getChildPadding()I
    .locals 2

    .prologue
    .line 406
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentTabType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 599
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 600
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 602
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-object v2

    .line 603
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected getCustomTabLayout()I
    .locals 1

    .prologue
    .line 444
    const v0, 0x7f040193

    return v0
.end method

.method public getFragmentByDisplaytype(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    .locals 4
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, "targetIndex":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    .local v0, "tabType":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    .end local v0    # "tabType":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    return-object v2

    .line 621
    .restart local v0    # "tabType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 622
    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method protected initTabItems()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 247
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v8, v11}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 248
    .local v4, "slidingTabStrip":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 250
    .local v0, "childCount":I
    const/4 v5, 0x0

    .line 251
    .local v5, "stripWidth":I
    const/4 v3, 0x0

    .line 253
    .local v3, "maxWidthTab":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 254
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 255
    .local v6, "tabView":Landroid/view/View;
    invoke-virtual {v6, v11, v11}, Landroid/view/View;->measure(II)V

    .line 256
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 257
    .local v7, "tabWidth":I
    add-int/2addr v5, v7

    .line 258
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v6    # "tabView":Landroid/view/View;
    .end local v7    # "tabWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 263
    .local v1, "deviceWidth":I
    const-string v8, "MilkSearchStoreResultTabFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initTabItems => stripWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deviceWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "maxWidthTab : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "deviceWidth/childCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-int v10, v1, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-ge v5, v1, :cond_2

    div-int v8, v1, v0

    if-ge v3, v8, :cond_2

    .line 270
    const/4 v8, 0x5

    if-lt v0, v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v8, v11}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 278
    :goto_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->initTabItems()V

    .line 279
    return-void

    .line 273
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    goto :goto_1

    .line 276
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v8, v11}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 448
    sget-boolean v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mIsInit:Z

    return v0
.end method

.method public moveTab(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->selectDefaultTab(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->onAttach(Landroid/app/Activity;)V

    .line 163
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 166
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 170
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_2

    .line 171
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 173
    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 453
    .local v0, "curIndex":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onBackPressed()Z

    move-result v1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 180
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    .line 181
    const-string v1, "default_tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mDefaultTab:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : default tab - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->initTabentry()V

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    const v1, 0x7f04018d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 191
    .local v7, "view":Landroid/view/View;
    const v1, 0x7f1203e6

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 192
    const v1, 0x7f120476

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntireLayout:Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mMainHandler:Landroid/os/Handler;

    .line 195
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPagerAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchFragmentViewPagerAdapter;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 198
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_0

    .line 199
    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v6, v2, v1, p0, v3}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 202
    .local v6, "playAllExecutor":Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 205
    .local v0, "playExecutor":Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;
    const-string v1, "Search"

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 206
    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 209
    .end local v0    # "playExecutor":Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;
    .end local v6    # "playAllExecutor":Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;
    :cond_0
    return-object v7
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->removeTabs()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 287
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 292
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 295
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->onDestroyView()V

    .line 296
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    sput-boolean v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mIsInit:Z

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewCreated >> Start Bixby command SearchStore"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->reqStoreSearchResultCount(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewCreated >> BixbyStoreTab("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") BixbyCallback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "defaultTab"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    .line 316
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mDefaultTab:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reload >>> Keyword("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") DefaultTab("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 319
    .local v1, "displayTypeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 320
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    .local v0, "displayType":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->reloadByDisplayType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v0    # "displayType":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mDefaultTab:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->selectDefaultTab(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public reqStoreSearchResultCount(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V
    .locals 7
    .param p1, "storeResultType"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Frag is added"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->displayTabTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 541
    .local v1, "index":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 543
    .local v0, "curIndex":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keyword is different Current ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") new keyword("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") TabType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Callback("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->reload(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->sendSearchResultToBixby(Ljava/lang/String;ILcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 575
    .end local v0    # "curIndex":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "curIndex":I
    .restart local v1    # "index":I
    :cond_1
    move v2, v3

    .line 544
    goto :goto_0

    .line 551
    :cond_2
    if-eqz p3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 552
    if-eq v1, v0, :cond_3

    .line 553
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 554
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    .line 555
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->selectDefaultTab(Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_3
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->sendSearchResultToBixby(Ljava/lang/String;ILcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    goto :goto_1

    .line 560
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Some param is empty TabType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Callback("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_5

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    if-eqz p3, :cond_0

    .line 564
    invoke-interface {p3, p1, v3}, Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;->onStoreSearchResultComplete(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 560
    goto :goto_2

    .line 569
    .end local v0    # "curIndex":I
    .end local v1    # "index":I
    :cond_6
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 570
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frag is not added  StoreTab("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Callback("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mBixbySearchResultCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v6, :cond_7

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method protected selectDefaultTab()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mDefaultTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->selectDefaultTab(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setPrimaryColor(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "colorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 464
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6, p1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 466
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 467
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v5

    .line 468
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f12047b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 469
    .local v4, "tabTextView":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->createTabViewRipple(I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 473
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 474
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 465
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v4    # "tabTextView":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setupTabs()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->setupAllTabs()V

    .line 304
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 236
    const v0, 0x7f120055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabEntryList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 239
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->setupViews(Landroid/view/View;)V

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->removeTabs()V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->setupTabs()V

    .line 243
    return-void
.end method
