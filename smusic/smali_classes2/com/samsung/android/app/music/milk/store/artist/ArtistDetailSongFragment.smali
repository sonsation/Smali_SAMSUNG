.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.source "ArtistDetailSongFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistDetailSongFragment"


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

.field private mContentContainer:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mIsBixbyPlay:Z

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPlayAll:Landroid/widget/TextView;

.field private mPlayAllContainer:Landroid/widget/FrameLayout;

.field private mProgressContiner:Landroid/view/View;

.field private mRecyclerContainer:Landroid/view/View;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mSelect:Landroid/widget/TextView;

.field private mSelectAllContainer:Landroid/widget/FrameLayout;

.field private mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mProgressContiner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;I[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->setBottomMargins(I[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    .locals 3
    .param p0, "artistId"    # Ljava/lang/String;
    .param p1, "bixbyPlayOption"    # Z

    .prologue
    .line 79
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;-><init>()V

    .line 81
    .local v1, "artistTrackFragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "artistId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "initPlayAll"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method

.method private selectAll()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->setSelectMode(Z)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->selectAll()V

    .line 212
    return-void
.end method

.method private varargs setBottomMargins(I[Landroid/view/View;)V
    .locals 5
    .param p1, "bottomMargins"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 150
    const-string v2, "ArtistDetailSongFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBottomMargins. margin - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", views - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p2, v3

    .line 152
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 154
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 155
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 158
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showLoading(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->showLoading(Z)V

    .line 272
    return-void
.end method


# virtual methods
.method protected buttonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "932"

    const-string v2, "1048"

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;->buttonEnabled(Z)V

    .line 289
    :cond_1
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 327
    :cond_0
    return-void
.end method

.method protected getPlayRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, "0"

    return-object v0
.end method

.method protected isSelectedAll()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->isSelectedAll()Z

    move-result v0

    return v0
.end method

.method public onApiCalled(II)V
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 216
    packed-switch p2, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 218
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->showLoading(Z)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x28a2
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x28a2

    .line 225
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->showLoading(Z)V

    .line 226
    const-string v2, "ArtistDetailSongFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled : rspType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "ArtistDetailSongFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled : reqType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez p3, :cond_1

    .line 229
    if-ne p2, v5, :cond_0

    move-object v0, p4

    .line 230
    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    .line 232
    .local v0, "artistDetailTrackInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;->getTrackList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->showContents(Ljava/util/List;)V

    .line 246
    .end local v0    # "artistDetailTrackInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    const/4 v2, 0x5

    if-eq p3, v2, :cond_2

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 237
    :cond_2
    const/4 v1, -0x1

    .line 238
    .local v1, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_3

    .line 239
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 242
    :cond_3
    if-ne p2, v5, :cond_0

    .line 243
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 332
    check-cast p1, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .line 333
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 338
    check-cast p1, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .line 339
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1203e1

    if-ne v2, v3, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->selectAll()V

    .line 194
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "932"

    const-string v4, "1542"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1203e3

    if-ne v2, v3, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 198
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->addPlayQueue(Ljava/util/List;I)V

    .line 205
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "932"

    const-string v4, "1543"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artistId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mArtistId:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initPlayAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mIsBixbyPlay:Z

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    const/4 v5, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 101
    const v1, 0x7f040146

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 103
    const v1, 0x7f1203df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerContainer:Landroid/view/View;

    .line 104
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mContentContainer:Landroid/view/View;

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mContentContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 106
    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mProgressContiner:Landroid/view/View;

    .line 108
    const v1, 0x7f1203ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mEmptyView:Landroid/view/View;

    .line 109
    const v1, 0x7f120371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 111
    const v1, 0x7f1203e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mSelect:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f1203e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAll:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f1203e0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    .line 118
    const v1, 0x7f1203e2

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    .line 121
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    .line 123
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12039b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mProgressContiner:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setLoadingProgressView(Landroid/view/View;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setContainer(Landroid/view/View;)V

    .line 146
    return-object v0
.end method

.method protected onDeselectAll()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->deselectAll()V

    .line 304
    return-void
.end method

.method protected onMilkServiceConnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onMilkServiceConnected(Landroid/content/ComponentName;)V

    .line 164
    const-string v0, "ArtistDetailSongFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMilkServiceConnected : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mArtistId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 187
    return-void
.end method

.method protected onSelectAll()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->selectAll()V

    .line 299
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->updatePrimaryColor(I)V

    .line 179
    return-void
.end method

.method protected sendSASelectionModeOn()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "921"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method protected setAdapterSelectMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->setSelectMode(Z)V

    .line 294
    return-void
.end method

.method public showContents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 254
    const-string v0, "ArtistDetailSongFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showContents :  data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->swapArray(Ljava/util/List;)V

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mIsBixbyPlay:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mIsBixbyPlay:Z

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method
