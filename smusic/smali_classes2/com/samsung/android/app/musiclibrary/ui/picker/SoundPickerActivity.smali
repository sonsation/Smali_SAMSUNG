.class public abstract Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SoundPickerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$LibraryListSelectorFocusable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;
    }
.end annotation


# static fields
.field private static final EXTRA_AUTO_RECOMMENDATION_ENABLED:Ljava/lang/String; = "enable_ringtone_recommender"

.field private static final EXTRA_PICK_MULTIPLE_ITEM:Ljava/lang/String; = "isMultiple"

.field private static final KEY_CHECKED_ITEM_IDS:Ljava/lang/String; = "checked_item_ids"

.field private static final KEY_IS_AUTO_RECOMMENDATION_ON:Ljava/lang/String; = "auto_recommendation_on"

.field private static final KEY_SELECTED_LIST_TYPE:Ljava/lang/String; = "selected_list_type"


# instance fields
.field private mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

.field private mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

.field private mIsAddedCustomFragmentAnimation:Z

.field private mListType:I

.field private mMultipleItemPicker:Z

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private final mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    .line 171
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->attachLibraryListFragment(I)V

    return-void
.end method

.method private attachLibraryListFragment(I)V
    .locals 6
    .param p1, "listType"    # I

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->hasSubListFragment(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 240
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 244
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 245
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v4, :cond_2

    .line 246
    const/4 v4, 0x0

    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->newInstance(IZLjava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 250
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 251
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    if-nez v4, :cond_3

    .line 252
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    .line 256
    :goto_2
    const v4, 0x1020011

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 259
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    .line 260
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setTabSelected(I)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;->newInstance(I)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_1

    .line 254
    .restart local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_3
    sget v4, Lcom/samsung/android/app/musiclibrary/R$animator;->library_fragment_visible:I

    invoke-virtual {v2, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method private attachTrackListFragment(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "trackListType"    # I
    .param p2, "trackKeyword"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "audioId"    # J

    .prologue
    .line 265
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getMatchedLibraryListType(I)I

    move-result v3

    .line 266
    .local v3, "libraryListType":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->attachLibraryListFragment(I)V

    .line 268
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->newSingleItemPickerListFragment(ILjava/lang/String;Ljava/lang/String;J)Landroid/app/Fragment;

    move-result-object v0

    .line 269
    .local v0, "fg":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 270
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 271
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 272
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const v4, 0x1020011

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 275
    return-void
.end method

.method private static getMatchedLibraryListType(I)I
    .locals 1
    .param p0, "trackListType"    # I

    .prologue
    .line 539
    sparse-switch p0, :sswitch_data_0

    .line 553
    const/4 v0, -0x1

    .line 556
    .local v0, "libraryListType":I
    :goto_0
    return v0

    .line 541
    .end local v0    # "libraryListType":I
    :sswitch_0
    const v0, 0x110001

    .line 542
    .restart local v0    # "libraryListType":I
    goto :goto_0

    .line 544
    .end local v0    # "libraryListType":I
    :sswitch_1
    const v0, 0x10002

    .line 545
    .restart local v0    # "libraryListType":I
    goto :goto_0

    .line 547
    .end local v0    # "libraryListType":I
    :sswitch_2
    const v0, 0x10003

    .line 548
    .restart local v0    # "libraryListType":I
    goto :goto_0

    .line 550
    .end local v0    # "libraryListType":I
    :sswitch_3
    const v0, 0x10007

    .line 551
    .restart local v0    # "libraryListType":I
    goto :goto_0

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_1
        0x100003 -> :sswitch_2
        0x100007 -> :sswitch_3
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMatchedTrackListType(I)I
    .locals 1
    .param p0, "listType"    # I

    .prologue
    .line 561
    packed-switch p0, :pswitch_data_0

    .line 572
    :pswitch_0
    const/4 v0, -0x1

    .line 575
    .local v0, "trackListType":I
    :goto_0
    return v0

    .line 563
    .end local v0    # "trackListType":I
    :pswitch_1
    const v0, 0x100002

    .line 564
    .restart local v0    # "trackListType":I
    goto :goto_0

    .line 566
    .end local v0    # "trackListType":I
    :pswitch_2
    const v0, 0x100003

    .line 567
    .restart local v0    # "trackListType":I
    goto :goto_0

    .line 569
    .end local v0    # "trackListType":I
    :pswitch_3
    const v0, 0x100007

    .line 570
    .restart local v0    # "trackListType":I
    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private hasSubListFragment(I)Z
    .locals 4
    .param p1, "listType"    # I

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "hasSubListFragment":Z
    const v3, 0x110001

    if-eq p1, v3, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 281
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getMatchedTrackListType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 282
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 286
    .end local v0    # "fg":Landroid/app/Fragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_0
    return v2
.end method

.method private static newSingleItemPickerListFragment(ILjava/lang/String;Ljava/lang/String;J)Landroid/app/Fragment;
    .locals 5
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "audioId"    # J

    .prologue
    .line 348
    sparse-switch p0, :sswitch_data_0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not Matched ListType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :sswitch_0
    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->newInstance(J)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;

    move-result-object v0

    .line 362
    .local v0, "fg":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 353
    .end local v0    # "fg":Landroid/app/Fragment;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;->newInstance(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;

    move-result-object v0

    .line 354
    .restart local v0    # "fg":Landroid/app/Fragment;
    goto :goto_0

    .line 356
    .end local v0    # "fg":Landroid/app/Fragment;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;->newInstance(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;

    move-result-object v0

    .line 357
    .restart local v0    # "fg":Landroid/app/Fragment;
    goto :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_1
        0x100003 -> :sswitch_2
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->addAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    .line 368
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
    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIdsInArray()[J
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 292
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIdsInArray(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 298
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
    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSoundPickerSearchActivityClass()Ljava/lang/Class;
.end method

.method public isAutoRecommendationOn()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->isAutoRecommendationOn()Z

    move-result v0

    return v0
.end method

.method public isEmptyViewAnimationEnabled()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->isEmptyViewAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isItemChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->isItemChecked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method protected isNeedToIntentForwarding()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public launchSearch()V
    .locals 3

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSoundPickerSearchActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isMultiple"

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "extra_checked_item_ids"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getCheckedItemIdsInArray()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 397
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 398
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v0, :cond_2

    .line 200
    if-nez p1, :cond_0

    .line 201
    if-ne p2, v7, :cond_1

    .line 202
    invoke-virtual {p0, v7, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p2, :cond_0

    .line 205
    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "extra_checked_item_ids"

    .line 207
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    .line 208
    .local v6, "checkedItemIds":[J
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->updateCheckedItems([J)V

    goto :goto_0

    .line 213
    .end local v6    # "checkedItemIds":[J
    :cond_2
    if-ne p2, v7, :cond_0

    if-nez p1, :cond_0

    .line 214
    const-string v0, "extra_list_type"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "trackListType":I
    const-string v0, "extra_key_word"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "trackKeyword":Ljava/lang/String;
    const-string v0, "extra_title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "trackTitle":Ljava/lang/String;
    const-string v0, "extra_audio_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p3, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .local v4, "audioId":J
    move-object v0, p0

    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->attachTrackListFragment(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 231
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 102
    .local v5, "i":Landroid/content/Intent;
    const-string v9, "isMultiple"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    .line 104
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v9, :cond_0

    .line 105
    sget v9, Lcom/samsung/android/app/musiclibrary/R$style;->Theme_WinsetDefault_Light_NoElevation_NoContentInsetStart:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setTheme(I)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v8

    .line 110
    .local v8, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    new-array v9, v10, [Ljava/lang/String;

    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v12, v9, v11

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Z[Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->isNeedToIntentForwarding()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    .line 169
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 118
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    .line 119
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 121
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_multiple_tab:I

    :goto_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setContentView(I)V

    .line 124
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPicker:Z

    if-eqz v9, :cond_4

    .line 125
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 126
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;

    invoke-direct {v9, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 127
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 129
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 130
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 132
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 133
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 135
    :cond_2
    if-eqz p1, :cond_7

    .line 136
    const-string v9, "checked_item_ids"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 137
    .local v4, "checkedItemIds":[J
    array-length v9, v4

    :goto_2
    if-ge v11, v9, :cond_7

    aget-wide v2, v4, v11

    .line 138
    .local v2, "checkedItemId":J
    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v12, v2, v3, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 121
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "checkedItemId":J
    .end local v4    # "checkedItemIds":[J
    :cond_3
    sget v9, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_single_tab:I

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 143
    .local v1, "bar":Landroid/app/ActionBar;
    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 145
    new-instance v12, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    sget-boolean v9, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    if-eqz v9, :cond_9

    const-string v9, "enable_ringtone_recommender"

    .line 147
    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    :goto_3
    invoke-direct {v12, p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;-><init>(Landroid/app/Activity;Z)V

    iput-object v12, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    .line 148
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz p1, :cond_5

    const-string v12, "auto_recommendation_on"

    .line 149
    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    move v11, v10

    .line 148
    :cond_6
    invoke-interface {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->setAutoRecommendationOn(Z)V

    .line 152
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_7
    const v6, 0x110001

    .line 153
    .local v6, "listType":I
    if-eqz p1, :cond_8

    .line 154
    const-string/jumbo v9, "selected_list_type"

    const v10, 0x110001

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 157
    :cond_8
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    .line 158
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .line 159
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setOnTabSelectedItemChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;)V

    .line 160
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-virtual {v9, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setTabSelected(I)V

    .line 162
    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->attachLibraryListFragment(I)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 165
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v9, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v10, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v9, v10

    invoke-static {v7, v9}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .end local v6    # "listType":I
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "bar":Landroid/app/ActionBar;
    :cond_9
    move v9, v11

    .line 147
    goto :goto_3
.end method

.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method public onEmptyViewAnimated()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->onEmptyViewAnimated()V

    .line 581
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const-string/jumbo v0, "selected_list_type"

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "checked_item_ids"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 90
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v1

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "auto_recommendation_on"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    .line 94
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->isAutoRecommendationOn()Z

    move-result v1

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public removeAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->removeAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    .line 373
    return-void
.end method

.method public setAutoRecommendationOn(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->setAutoRecommendationOn(Z)V

    .line 383
    return-void
.end method

.method public setAutoRecommendationViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mAutoRecommendationManager:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->setAutoRecommendationViewEnabled(Z)V

    .line 378
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "value"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 312
    :cond_0
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 404
    return-void
.end method

.method public setLibrarySelectorFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setFocusable(ZZ)V

    .line 414
    return-void
.end method

.method public setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 336
    :cond_0
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
    .line 326
    .local p1, "removeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItemIds(Ljava/util/ArrayList;)V

    .line 329
    :cond_0
    return-void
.end method

.method public updateCheckedItems([J)V
    .locals 1
    .param p1, "checkedItemIds"    # [J

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItems([J)V

    .line 343
    :cond_0
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 429
    return-void
.end method
