.class public Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeartAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mData1Col:Ljava/lang/String;

.field private mData1Index:I

.field private final mData2Col:Ljava/lang/String;

.field private mData2Index:I

.field private final mDividerHeight:I

.field private final mFitDivideMaxValue:F

.field private final mFixedItemMinHeight:I

.field private final mHasKeyboardCover:Z

.field private mIsMyMusicMode:Z

.field private mIsNetworkConnected:Z

.field private final mIsPortrait:Z

.field private final mItemDrawableHeight:I

.field private final mMaxFitDivideLimit:I

.field private final mMinFitDivideLimit:I

.field private mMultiWindowModeEnabled:Z

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mScrollTranslateManager:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

.field private mSubCategoryIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    .prologue
    const/4 v2, -0x1

    .line 725
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 706
    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    .line 708
    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Index:I

    .line 710
    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mSubCategoryIndex:I

    .line 712
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMultiWindowModeEnabled:Z

    .line 726
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->access$1000(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Col:Ljava/lang/String;

    .line 727
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->access$1100(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Col:Ljava/lang/String;

    .line 728
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 729
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0d04f0

    .line 730
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mDividerHeight:I

    .line 731
    const v2, 0x7f0d0317

    .line 732
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFixedItemMinHeight:I

    .line 733
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsPortrait:Z

    .line 734
    new-instance v2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mScrollTranslateManager:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

    .line 735
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 736
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mScrollTranslateManager:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 737
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mScrollTranslateManager:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;)V

    .line 738
    const v2, 0x7f0d0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mItemDrawableHeight:I

    .line 740
    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMaxFitDivideLimit:I

    .line 741
    const v2, 0x7f100011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMinFitDivideLimit:I

    .line 742
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMaxFitDivideLimit:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFitDivideMaxValue:F

    .line 744
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mHasKeyboardCover:Z

    .line 745
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 746
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsMyMusicMode:Z

    .line 748
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 749
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v2}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsNetworkConnected:Z

    .line 753
    :cond_0
    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;Landroid/content/Context;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 686
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->play(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private fitItemSize(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 854
    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMaxFitDivideLimit:I

    add-int/lit8 v1, v5, -0x1

    .line 855
    .local v1, "dividerCount":I
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFitDivideMaxValue:F

    .line 856
    .local v0, "divideValue":F
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemCount()I

    move-result v3

    .line 858
    .local v3, "itemCount":I
    iget-boolean v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMultiWindowModeEnabled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mHasKeyboardCover:Z

    if-eqz v5, :cond_1

    .line 859
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFixedItemMinHeight:I

    .line 871
    .local v2, "height":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 872
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 873
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    return-void

    .line 861
    .end local v2    # "height":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMinFitDivideLimit:I

    if-gt v3, v5, :cond_3

    .line 862
    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMinFitDivideLimit:I

    add-int/lit8 v1, v5, -0x1

    .line 863
    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMinFitDivideLimit:I

    int-to-float v0, v5

    .line 868
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mDividerHeight:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v2, v5

    .restart local v2    # "height":I
    goto :goto_0

    .line 864
    .end local v2    # "height":I
    :cond_3
    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMaxFitDivideLimit:I

    if-ge v3, v5, :cond_2

    .line 865
    add-int/lit8 v1, v3, -0x1

    .line 866
    int-to-float v0, v3

    goto :goto_1
.end method

.method private getQueryArgsForPlayable(Ljava/lang/String;II)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "subCategory"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v5, -0x1

    .line 1185
    packed-switch p2, :pswitch_data_0

    .line 1211
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1187
    :pswitch_1
    const v0, 0x100050

    if-ne p3, v0, :cond_0

    .line 1188
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    .line 1189
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v2

    invoke-direct {v0, v1, p1, v2, v5}, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    const-string v3, "local"

    .line 1193
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1196
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :pswitch_3
    if-ne p3, v1, :cond_1

    .line 1199
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 1202
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSongListForPlayable(Landroid/content/Context;Ljava/lang/String;II)[J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "listType"    # I
    .param p4, "subCategoryType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1160
    if-nez p2, :cond_1

    .line 1161
    const-string v0, "Ui"

    const-string v1, "getSongList - keyword is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    new-array v8, v2, [J

    .line 1181
    :cond_0
    :goto_0
    return-object v8

    .line 1165
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getQueryArgsForPlayable(Ljava/lang/String;II)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v6

    .line 1166
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    if-nez v6, :cond_2

    .line 1167
    new-array v8, v2, [J

    goto :goto_0

    .line 1171
    :cond_2
    const/4 v7, 0x0

    .line 1173
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1175
    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1177
    .local v8, "list":[J
    if-eqz v7, :cond_0

    .line 1178
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1177
    .end local v8    # "list":[J
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1178
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private onBindViewHolderPlay(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->isActionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    const v2, 0x7f0a01f2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setHoverContent(Landroid/content/Context;Landroid/view/View;I)V

    .line 1140
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private play(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "listType"    # I
    .param p4, "subCategoryType"    # I

    .prologue
    .line 1150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getSongListForPlayable(Landroid/content/Context;Ljava/lang/String;II)[J

    move-result-object v0

    .line 1151
    .local v0, "list":[J
    array-length v1, v0

    .line 1152
    .local v1, "listLength":I
    if-eqz v1, :cond_0

    .line 1153
    const/4 v2, 0x0

    invoke-static {p3, p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V

    .line 1155
    :cond_0
    return v1
.end method


# virtual methods
.method public getSubCategory(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 1225
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mSubCategoryIndex:I

    if-eq v2, v1, :cond_0

    .line 1226
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1227
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mSubCategoryIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1229
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return v1
.end method

.method public getText2(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1216
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText2Index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1217
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1218
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText2Index:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 757
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Col:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Col:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Index:I

    .line 764
    :cond_1
    const-string/jumbo v0, "sub_category_type"

    .line 765
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mSubCategoryIndex:I

    .line 766
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 788
    iget-boolean v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsPortrait:Z

    if-eqz v6, :cond_0

    .line 789
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->fitItemSize(Landroid/view/View;)V

    .line 792
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemId(I)J

    move-result-wide v2

    .line 793
    .local v2, "id":J
    const-wide/16 v6, -0x3f1

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 794
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const v7, 0x7f0a00be

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 831
    :cond_1
    :goto_0
    return-void

    .line 798
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 799
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolderPlay(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V

    .line 803
    :cond_3
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 804
    const/4 v4, 0x1

    .line 806
    .local v4, "isEnable":Z
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 807
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 808
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 809
    iget v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 811
    .local v5, "listType":I
    const/16 v6, 0x54

    if-eq v5, v6, :cond_4

    const/16 v6, 0x55

    if-eq v5, v6, :cond_4

    const/16 v6, 0x56

    if-ne v5, v6, :cond_5

    .line 813
    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsMyMusicMode:Z

    if-eqz v6, :cond_6

    .line 814
    const/4 v4, 0x0

    .line 822
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v5    # "listType":I
    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 823
    .local v0, "alpha":F
    :goto_2
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 824
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    .line 825
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 826
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 827
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    .line 828
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 815
    .end local v0    # "alpha":F
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v5    # "listType":I
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 816
    const/4 v4, 0x0

    goto :goto_1

    .line 822
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v5    # "listType":I
    :cond_7
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_2
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 686
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 686
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 16
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 878
    const/4 v5, -0x1

    .line 879
    .local v5, "listType":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 881
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;->getListTypeTextResId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 883
    sget-boolean v12, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v12, :cond_0

    .line 884
    const/16 v12, 0x54

    if-ne v5, v12, :cond_5

    .line 885
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const v13, 0x7f0a03b5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 893
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText2Index:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 894
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText2Index:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, "text":Ljava/lang/String;
    const v12, 0x10004

    if-ne v5, v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mKeywordIndex:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 897
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mKeywordIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 898
    .local v6, "keywordId":J
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 907
    .end local v6    # "keywordId":J
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    .end local v10    # "text":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 910
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "data1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v12}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 913
    .local v8, "resources":Landroid/content/res/Resources;
    sparse-switch v5, :sswitch_data_0

    .line 933
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 934
    .local v3, "count":I
    const v12, 0x7f0c0004

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v8, v12, v3, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 936
    .end local v3    # "count":I
    .restart local v10    # "text":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    sget-boolean v12, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v12, :cond_4

    .line 939
    const/16 v12, 0x54

    if-eq v5, v12, :cond_3

    const/16 v12, 0x55

    if-eq v5, v12, :cond_3

    const/16 v12, 0x56

    if-ne v5, v12, :cond_a

    .line 941
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    .end local v4    # "data1":Ljava/lang/String;
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v10    # "text":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 886
    :cond_5
    const/16 v12, 0x55

    if-ne v5, v12, :cond_6

    .line 887
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const v13, 0x7f0a03b4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 888
    :cond_6
    const/16 v12, 0x56

    if-ne v5, v12, :cond_0

    .line 889
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const v13, 0x7f0a02f0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 901
    .restart local v10    # "text":Ljava/lang/String;
    :cond_7
    const v12, 0x10007

    if-ne v5, v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData1Index:I

    .line 903
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLastDirectoryName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 905
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 915
    .end local v10    # "text":Ljava/lang/String;
    .restart local v4    # "data1":Ljava/lang/String;
    .restart local v8    # "resources":Landroid/content/res/Resources;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getFolderDirectoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 916
    .restart local v10    # "text":Ljava/lang/String;
    goto :goto_2

    .line 918
    .end local v10    # "text":Ljava/lang/String;
    :sswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v9, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Index:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    .line 920
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mData2Index:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 921
    .local v2, "albumCount":I
    const/high16 v12, 0x7f0c0000

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 923
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 921
    invoke-virtual {v8, v12, v2, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   "

    .line 924
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .end local v2    # "albumCount":I
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 927
    .local v11, "trackCount":I
    const v12, 0x7f0c0004

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 929
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 927
    invoke-virtual {v8, v12, v11, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 931
    .restart local v10    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 943
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "trackCount":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 913
    nop

    :sswitch_data_0
    .sparse-switch
        0x10003 -> :sswitch_1
        0x10007 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 686
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 11
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 951
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mThumbnailKeyIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 952
    .local v6, "albumId":J
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemId(I)J

    move-result-wide v2

    .line 953
    .local v2, "id":J
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 954
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mItemDrawableHeight:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;JII)V

    .line 956
    .local v0, "defaultDrawable":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;
    const/4 v10, 0x0

    .line 958
    .local v10, "uri":Landroid/net/Uri;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_3

    .line 959
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 960
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mText1Index:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 961
    .local v9, "listType":I
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mKeywordIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, "keyword":Ljava/lang/String;
    const/16 v1, 0x54

    if-eq v9, v1, :cond_0

    const/16 v1, 0x55

    if-eq v9, v1, :cond_0

    const/16 v1, 0x56

    if-ne v9, v1, :cond_1

    .line 964
    :cond_0
    sget-object v10, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_THUMBNAIL:Landroid/net/Uri;

    .line 975
    .end local v8    # "keyword":Ljava/lang/String;
    .end local v9    # "listType":I
    :goto_0
    const v1, 0x7f0d0061

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    invoke-direct {v4, p1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 976
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 977
    return-void

    .line 966
    .restart local v8    # "keyword":Ljava/lang/String;
    .restart local v9    # "listType":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mCpAttrsColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 969
    .end local v8    # "keyword":Ljava/lang/String;
    .end local v9    # "listType":I
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mCpAttrsColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 972
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mCpAttrsColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0
.end method

.method protected bridge synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 686
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 770
    if-nez p3, :cond_1

    .line 771
    const v1, 0x7f040093

    .line 772
    .local v1, "layoutId":I
    int-to-long v2, p2

    const-wide/16 v4, -0x3f1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 773
    const v1, 0x7f040091

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 776
    invoke-virtual {v2, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 778
    .end local v1    # "layoutId":I
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 779
    .local v0, "holder":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 780
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mScrollTranslateManager:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    check-cast v2, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;

    .line 781
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ScrollTranslateManager;->addScrollTranslateView(Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;)V

    .line 783
    :cond_2
    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiWindowModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 980
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mMultiWindowModeEnabled:Z

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->notifyDataSetChanged()V

    .line 982
    return-void
.end method

.method public setMyMusicMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsMyMusicMode:Z

    if-eq v0, p1, :cond_0

    .line 835
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsMyMusicMode:Z

    .line 836
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->notifyDataSetChanged()V

    .line 838
    :cond_0
    return-void
.end method

.method updateUi()V
    .locals 2

    .prologue
    .line 841
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "isNetworkConnected":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 846
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsNetworkConnected:Z

    if-eq v1, v0, :cond_1

    .line 847
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->mIsNetworkConnected:Z

    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->notifyDataSetChanged()V

    .line 851
    .end local v0    # "isNetworkConnected":Z
    :cond_1
    return-void
.end method
