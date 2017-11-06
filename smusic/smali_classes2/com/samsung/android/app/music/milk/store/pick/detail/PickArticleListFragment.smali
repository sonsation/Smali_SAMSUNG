.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.source "PickArticleListFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickArticleListFragment"


# instance fields
.field private contentContainer:Landroid/widget/RelativeLayout;

.field private empty:Landroid/widget/RelativeLayout;

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

.field private mPickId:Ljava/lang/String;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;-><init>()V

    .line 260
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
    .locals 3
    .param p0, "pickId"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;-><init>()V

    .line 60
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "pick_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method


# virtual methods
.method protected buttonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 136
    const-string v0, "PickArticleListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonEnabled() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected getPlayRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "0"

    return-object v0
.end method

.method protected isSelectedAll()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectedAll()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 110
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 113
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->setHasOptionsMenu(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "pick_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickId:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 87
    const v1, 0x7f040178

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->contentContainer:Landroid/widget/RelativeLayout;

    .line 90
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mainContent:Landroid/view/View;

    .line 91
    const v1, 0x7f120371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 92
    const v1, 0x7f12027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 93
    const v1, 0x7f120437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    .line 94
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 95
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mainContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showError(II)V

    .line 100
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    new-instance v1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    .line 104
    return-object v0
.end method

.method protected onDeselectAll()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->deselectAll()V

    .line 153
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 132
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 174
    return-void
.end method

.method protected onSelectAll()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->selectAll()V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onStart()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 126
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->updatePrimaryColor(I)V

    .line 80
    return-void
.end method

.method protected sendSASelectionModeOn()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected setAdapterSelectMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 141
    const-string v0, "PickArticleListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdapterSelectMode() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->setSelectMode(Z)V

    .line 143
    return-void
.end method

.method public showError(II)V
    .locals 4
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->contentContainer:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 244
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->contentContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showLoading(Z)V

    .line 237
    if-eqz v0, :cond_2

    .line 238
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 240
    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public showLoading(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 255
    const-string v1, "PickArticleListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoading() show : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    :cond_1
    return-void

    .line 256
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPickArticles(Lcom/samsung/android/app/music/common/model/PickInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/app/music/common/model/PickInfo;

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/PickInfo;->getArticleList()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/PickArticle;>;"
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->showLoading(Z)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setVisibility(I)V

    .line 217
    if-nez v0, :cond_2

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->empty:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setVisibility(I)V

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->mPickArticleAdapter:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->setInfo(Lcom/samsung/android/app/music/common/model/PickInfo;)V

    goto :goto_0
.end method
