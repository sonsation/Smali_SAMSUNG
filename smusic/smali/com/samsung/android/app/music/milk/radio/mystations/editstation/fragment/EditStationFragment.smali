.class public Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;
.source "EditStationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EditStationFragment"

.field private static final MAX_SEEDS:I = 0x6


# instance fields
.field protected mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

.field protected mCurrentStationName:Ljava/lang/String;

.field protected mKeepSeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotSearchBoxZone:Landroid/widget/LinearLayout;

.field protected mSeedDescripiton:Landroid/widget/TextView;

.field protected mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

.field protected mSeedListView:Landroid/support/v7/widget/RecyclerView;

.field protected mStation:Lcom/samsung/android/app/music/common/model/Station;

.field protected mStationId:Ljava/lang/String;

.field protected mStationName:Ljava/lang/String;

.field protected mStationNameLine:Landroid/view/View;

.field protected mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

.field protected mStationNameZone:Landroid/widget/LinearLayout;

.field protected mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustSeedListViewBottomPadding(I)V
    .locals 4
    .param p1, "heightDifference"    # I

    .prologue
    .line 582
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    .line 583
    .local v2, "leftPadding":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    .line 584
    .local v0, "RightPadding":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 586
    .local v1, "TopPadding":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2, v1, v0, p1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 587
    return-void
.end method

.method private getEditTextFilterEmoji()Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$8;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    return-object v0
.end method

.method private hasError(Landroid/content/Loader;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v0, 0x0

    .line 809
    .local v0, "ret":Z
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 810
    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    .line 811
    .local v1, "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;->getRspType()I

    move-result v2

    .line 813
    .local v2, "rspType":I
    sparse-switch v2, :sswitch_data_0

    .line 836
    .end local v1    # "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    .end local v2    # "rspType":I
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 818
    .restart local v1    # "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    .restart local v2    # "rspType":I
    :sswitch_1
    const-string v3, "EditStationFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLoadFinished : loader callback encountered an error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x1

    .line 821
    goto :goto_0

    .line 828
    :sswitch_2
    const-string v3, "EditStationFragment"

    const-string/jumbo v4, "onLoadFinished : Internal Error"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/4 v0, 0x1

    .line 830
    goto :goto_0

    .line 813
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_2
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDuplicatedSeed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "seedID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    :cond_0
    :goto_0
    return v2

    .line 860
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    if-eqz v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v0

    .line 862
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Seed;

    .line 863
    .local v1, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 864
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showNotSearchBoxZone(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const v4, 0x10e0001

    .line 757
    if-eqz p1, :cond_1

    .line 758
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 759
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    .line 760
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NotUsed"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;-><init>(Landroid/view/View;IILjava/lang/String;)V

    .line 762
    .local v1, "expand":Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 763
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$6;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 778
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 804
    .end local v1    # "expand":Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 782
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    .line 783
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "NotUsed"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;-><init>(Landroid/view/View;IILjava/lang/String;)V

    .line 785
    .local v0, "collapse":Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 786
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$7;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateEditStationUX(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;)V
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    .prologue
    .line 873
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->SONG:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    if-ne p1, v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    const v1, 0x7f0a02d1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->updateDescription(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;)V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->updateDescription()V

    .line 890
    :cond_2
    return-void

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    const v1, 0x7f0a02cf

    .line 880
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public canUpdateStation()Z
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-nez v2, :cond_0

    .line 455
    const-string v2, "EditStationFragment"

    const-string v3, "canUpdateStation : not initialized"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v2, 0x0

    .line 471
    :goto_0
    return v2

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "stationRename":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->clearFocus()V

    .line 467
    .end local v1    # "stationRename":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 468
    const/4 v2, 0x1

    goto :goto_0

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->isSeedUpdated()Z

    move-result v2

    goto :goto_0
.end method

.method public disableScreen()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->setDeleteEnable(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method protected getAutoCompleteSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method public getEditedStation()Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .locals 17

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 477
    const-string v1, "EditStationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEditedStation : Station Name is Changed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 478
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ==> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v15, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-direct {v15, v1, v3, v4}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .line 486
    .local v15, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v14

    .line 487
    .local v14, "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v11

    .line 489
    .local v11, "changed_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/music/common/model/Seed;

    .line 490
    .local v13, "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v12, 0x0

    .line 491
    .local v12, "checked":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/Seed;

    .line 492
    .local v10, "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    const/4 v12, 0x1

    .line 498
    .end local v10    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_2
    if-nez v12, :cond_0

    .line 499
    const-string v2, "02"

    .line 500
    .local v2, "seedType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "01"

    .line 501
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 502
    :cond_3
    const-string v2, "01"

    .line 504
    :cond_4
    const-string v1, "EditStationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEditedStation : Seed removed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    .line 506
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    .line 508
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->isExplictSeed()Z

    move-result v8

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getArtistList()Ljava/util/List;

    move-result-object v9

    .line 506
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v1

    .line 505
    invoke-virtual {v15, v1}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->updateReqRemoveSeed(Lcom/samsung/android/app/music/common/model/Seed;)V

    goto/16 :goto_1

    .line 483
    .end local v2    # "seedType":Ljava/lang/String;
    .end local v11    # "changed_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v12    # "checked":Z
    .end local v13    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v14    # "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_5
    new-instance v15, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-direct {v15, v1, v3}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto/16 :goto_0

    .line 512
    .restart local v11    # "changed_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .restart local v14    # "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/Seed;

    .line 513
    .restart local v10    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v12, 0x0

    .line 514
    .restart local v12    # "checked":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/music/common/model/Seed;

    .line 515
    .restart local v13    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 516
    const/4 v12, 0x1

    .line 521
    .end local v13    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_9
    if-nez v12, :cond_7

    .line 522
    const-string v1, "EditStationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateStation : Seed Added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "02"

    .line 525
    .restart local v2    # "seedType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "01"

    .line 526
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 527
    :cond_a
    const-string v2, "01"

    .line 529
    :cond_b
    const/4 v1, 0x0

    .line 530
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    .line 532
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    .line 533
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->isExplictSeed()Z

    move-result v8

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getArtistList()Ljava/util/List;

    move-result-object v9

    .line 530
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v1

    .line 529
    invoke-virtual {v15, v1}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->updateReqAddSeed(Lcom/samsung/android/app/music/common/model/Seed;)V

    goto/16 :goto_2

    .line 536
    .end local v2    # "seedType":Ljava/lang/String;
    .end local v10    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v12    # "checked":Z
    :cond_c
    return-object v15
.end method

.method public getHintStatement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    sget-object v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->SONG:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    if-ne v0, v1, :cond_0

    .line 262
    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0275

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x7f04010e

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "EditStationFragment"

    return-object v0
.end method

.method public getRenamedStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 4

    .prologue
    .line 561
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 562
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, "rootview":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 565
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 566
    .local v2, "screenHeight":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->getMainViewHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 568
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->getMainViewHeight()I

    move-result v2

    .line 572
    :cond_0
    return v2
.end method

.method protected getSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 3

    .prologue
    .line 550
    const-string v0, "EditStationFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchType : Search Type => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method protected initSeedListArea(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 609
    if-eqz p1, :cond_0

    .line 610
    const v0, 0x7f12032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 613
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 617
    :cond_0
    return-void
.end method

.method protected initStationData()V
    .locals 5

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 591
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 592
    const-string v2, "STATION_ID_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    .line 593
    const-string v2, "STATION_TITLE_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationName:Ljava/lang/String;

    .line 594
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 596
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationName:Ljava/lang/String;

    .line 602
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f120036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 604
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 606
    :cond_1
    return-void
.end method

.method protected initStationNameArea(Landroid/view/View;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const v6, 0x7f110133

    const/4 v5, 0x1

    .line 621
    if-eqz p1, :cond_1

    .line 622
    const v0, 0x7f12032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    .line 623
    const v0, 0x7f12032d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    .line 624
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedDescripiton:Landroid/widget/TextView;

    const v1, 0x7f0a02d0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const v0, 0x7f120328

    .line 626
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mNotSearchBoxZone:Landroid/widget/LinearLayout;

    .line 627
    const v0, 0x7f120329

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameZone:Landroid/widget/LinearLayout;

    .line 628
    const v0, 0x7f12032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    .line 629
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const-string v1, "disableEmoticonInput=true"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x33

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getEditTextFilterEmoji()Landroid/text/InputFilter;

    move-result-object v2

    aput-object v2, v1, v5

    .line 633
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$3;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnSoftKeyboardListener(Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setLongClickable(Z)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->clearFocus()V

    .line 745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 746
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 747
    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 746
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    .line 752
    :goto_0
    const v0, 0x7f12032a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 754
    :cond_1
    return-void

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 750
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 749
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    goto :goto_0
.end method

.method public isDuplicatedStationName()Z
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "stationRename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    .line 388
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationCountByStationName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    const/4 v1, 0x1

    .line 394
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmptyStationName()Z
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "stationRename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public isSeedUpdated()Z
    .locals 10

    .prologue
    .line 414
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    if-nez v6, :cond_2

    .line 415
    :cond_0
    const/4 v5, 0x0

    .line 449
    :cond_1
    return v5

    .line 418
    :cond_2
    const/4 v5, 0x0

    .line 419
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v4

    .line 420
    .local v4, "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v1

    .line 422
    .local v1, "changed_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Seed;

    .line 423
    .local v3, "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v2, 0x0

    .line 424
    .local v2, "checked":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Seed;

    .line 425
    .local v0, "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 426
    const/4 v2, 0x1

    .line 431
    .end local v0    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_5
    if-nez v2, :cond_3

    .line 432
    const/4 v5, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "checked":Z
    .end local v3    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Seed;

    .line 437
    .restart local v0    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v2, 0x0

    .line 438
    .restart local v2    # "checked":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Seed;

    .line 439
    .restart local v3    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 440
    const/4 v2, 0x1

    .line 445
    .end local v3    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_9
    if-nez v2, :cond_7

    .line 446
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const v0, 0x7f120036

    if-ne p1, v0, :cond_0

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/lang/String;)V

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader id not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationData()V

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationNameArea(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initSeedListArea(Landroid/view/View;)V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    .line 124
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ALL:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    .line 126
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "909"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 17
    .param p1, "loaderId"    # I
    .param p2, "seedName"    # Ljava/lang/String;
    .param p3, "seedType"    # Ljava/lang/String;
    .param p4, "seedId"    # Ljava/lang/String;
    .param p5, "seedImageUrl"    # Ljava/lang/String;
    .param p6, "trackName"    # Ljava/lang/String;
    .param p7, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p8, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 295
    new-instance v12, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    invoke-direct {v12}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;-><init>()V

    .line 296
    .local v12, "f":Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "MaximumSeedReachDialog"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v12, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 346
    .end local v12    # "f":Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->isDuplicatedSeed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a03f5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 305
    :cond_1
    invoke-super/range {p0 .. p8}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 307
    const v2, 0x7f120031

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->reqSeedSearch(Ljava/lang/String;Z)V

    .line 310
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "909"

    const-string v4, "9183"

    .line 311
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    const/4 v13, 0x0

    .line 314
    .local v13, "hasError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v14

    .line 315
    .local v14, "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    invoke-virtual {v14}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v15

    .line 317
    .local v15, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz p7, :cond_3

    if-eqz v15, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v11

    .line 319
    .local v11, "explicit":I
    if-eqz v11, :cond_3

    .line 321
    const-string v2, "EditStationFragment"

    const-string/jumbo v3, "onItemClicked : Not Permitted (Explicit)"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mContext:Landroid/content/Context;

    const-string v3, "explicit-invalid"

    .line 324
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v13, 0x1

    .line 332
    .end local v11    # "explicit":I
    .end local v15    # "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_3
    :goto_1
    if-nez v13, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationId:Ljava/lang/String;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 337
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v2

    .line 336
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->addItem(Lcom/samsung/android/app/music/common/model/Seed;)V

    .line 340
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "910"

    const-string v4, "9184"

    .line 341
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_6
    const/4 v13, 0x1

    .line 330
    const-string v2, "EditStationFragment"

    const-string/jumbo v3, "onItemClicked : getRadioService is not counnected"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 10
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/Station;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v8, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 178
    .local v1, "id":I
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 179
    const v6, 0x7f120036

    if-ne v1, v6, :cond_3

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->hasError(Landroid/content/Loader;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 181
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 182
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v6, :cond_5

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_4

    .line 186
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x31

    .line 187
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 192
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->swapList(Ljava/util/ArrayList;)V

    .line 196
    sget-object v6, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ARTIST:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Seed;

    .line 198
    .local v4, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "02"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 200
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    :cond_1
    sget-object v6, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->SONG:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    .line 205
    .end local v4    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationType:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->updateEditStationUX(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;)V

    .line 237
    .end local v2    # "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_3
    :goto_1
    return-void

    .line 189
    .restart local v2    # "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    goto :goto_0

    .line 207
    .end local v2    # "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const v7, 0x7f0a00b8

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setText(I)V

    goto :goto_1

    .line 210
    :cond_6
    instance-of v6, p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 211
    check-cast v3, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    .line 212
    .local v3, "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;->getRspCode()I

    move-result v0

    .line 214
    .local v0, "errCode":I
    const/16 v6, 0xfa0

    if-ne v0, v6, :cond_3

    .line 215
    const-string v6, "EditStationFragment"

    const-string/jumbo v7, "onLoadFinished : Station Is not existed"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a0384

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 218
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 219
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v6, :cond_7

    .line 220
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v6}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateStationList()V

    .line 222
    :cond_7
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    .local v5, "waitHandler":Landroid/os/Handler;
    if-eqz v5, :cond_8

    .line 224
    new-instance v6, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 231
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p2, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->onLoadFinished(Landroid/content/Loader;Lcom/samsung/android/app/music/common/model/Station;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/samsung/android/app/music/common/model/Station;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    .line 169
    const-string v0, "SeedList"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    const-string v0, "Station"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    const-string v0, "StationName"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onSearchSeedBoxFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onSearchSeedBoxFocusChanged(Z)V

    .line 270
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showNotSearchBoxZone(Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v0, :cond_0

    .line 272
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->showActionBar(Z)V

    .line 275
    :cond_0
    if-eqz p1, :cond_4

    .line 276
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->setSearchResultViewVisible(Z)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 286
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 270
    goto :goto_0

    :cond_3
    move v0, v2

    .line 272
    goto :goto_1

    .line 281
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->setSearchResultViewVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_1

    .line 145
    const-string v0, "SeedList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->swapList(Ljava/util/ArrayList;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mKeepSeedList:Ljava/util/ArrayList;

    .line 150
    :cond_0
    const-string v0, "Station"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 151
    const-string v0, "StationName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 153
    :cond_1
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 2
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public reqSeedSearch(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "isAutoComplete"    # Z

    .prologue
    .line 541
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->reqSeedSearch(Ljava/lang/String;Z)V

    .line 542
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    .line 543
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public setInterface(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->setInterface(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V

    .line 382
    :cond_0
    return-void
.end method

.method public setOriginStationName()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    return-void
.end method
