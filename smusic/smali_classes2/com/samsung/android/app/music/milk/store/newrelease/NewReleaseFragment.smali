.class public Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "NewReleaseFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# static fields
.field private static final KEY_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field private static final KEY_DISPLAY_TYPE:Ljava/lang/String; = "displayType"

.field private static final LOG_TAG:Ljava/lang/String; = "NewReleaseFragment"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

.field protected mContent:Landroid/view/View;

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field protected mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

.field protected mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;
    .locals 3
    .param p0, "displayId"    # Ljava/lang/String;
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "displayType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "displayId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "displayId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayId:Ljava/lang/String;

    .line 66
    const-string v1, "displayType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayType:Ljava/lang/String;

    .line 67
    const-string v1, "NewReleaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mDisplayType:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const-string v1, "NewReleaseFragment"

    const-string v2, "onCreateView : "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const v1, 0x7f040148

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mContent:Landroid/view/View;

    .line 87
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 90
    const v1, 0x7f1202d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    const v1, 0x7f12027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mProgress:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->attachView(Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;)V

    .line 104
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->detachView()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 79
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->loadAlbums()V

    .line 111
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->loadAlbums()V

    .line 166
    return-void
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 150
    const-string v0, "20"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "983"

    const-string v2, "9831"

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "983"

    const-string v2, "9832"

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "22"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "983"

    const-string v2, "9833"

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->updatePrimaryColor(I)V

    .line 116
    return-void
.end method

.method public showAlbums(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "album":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Album;>;"
    const-string v0, "NewReleaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAlbums : album - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->swapArray(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 129
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleaseFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const-string v0, "NewReleaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void

    .line 121
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
