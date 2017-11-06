.class public Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicVideoFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# static fields
.field private static final KEY_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field private static final KEY_DISPLAY_TYPE:Ljava/lang/String; = "displayType"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

.field protected mProgress:Landroid/view/View;

.field protected mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field protected mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;
    .locals 3
    .param p0, "displayId"    # Ljava/lang/String;
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;-><init>()V

    .line 58
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "displayType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "displayId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method public newestSelected(Z)V
    .locals 1
    .param p1, "isSelected"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->changeDisplayType(Z)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "displayType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mDisplayType:Ljava/lang/String;

    .line 74
    const-string v1, "displayId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mDisplayId:Ljava/lang/String;

    .line 76
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mDisplayId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mDisplayType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    .line 77
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreateView :"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v2, 0x7f040147

    .line 85
    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f12038f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mSpinner:Landroid/widget/Spinner;

    .line 88
    const v2, 0x7f1203e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 89
    const v2, 0x7f12027e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mProgress:Landroid/view/View;

    .line 90
    const v2, 0x7f1202b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 92
    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 94
    .local v1, "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 111
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v3, v2, p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;)V

    .line 114
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->detachView()V

    .line 124
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 173
    return-void
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected : requestToPlayVideo"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->updatePrimaryColor(I)V

    .line 140
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->showLoading(Z)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 153
    :cond_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void

    .line 144
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMusicVideos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "musicVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMusicVideos : music video - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentAdapter;->swapArray(Ljava/util/List;)V

    .line 160
    return-void
.end method
