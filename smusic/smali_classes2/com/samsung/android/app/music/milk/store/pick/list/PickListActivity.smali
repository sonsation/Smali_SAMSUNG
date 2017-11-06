.class public Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "PickListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickListActivity"

.field private static final OVERSCROLL_THRESHOLD:I = 0x3


# instance fields
.field protected mContext:Landroid/content/Context;

.field mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

.field private moreYn:Z

.field private pageLoadCount:I

.field private pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

.field private pickListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->moreYn:Z

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->moreYn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->moreYn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->onError(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getPage()I

    move-result v0

    return v0
.end method

.method private adjustTopMargins()V
    .locals 6

    .prologue
    .line 121
    const v3, 0x7f12044a

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v2

    .line 123
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 128
    const-string v3, "PickListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustTopMargins() topMargin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method private declared-synchronized getPage()I
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pageLoadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pageLoadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onError(IILjava/lang/Object;)V
    .locals 2
    .param p1, "reqType"    # I
    .param p2, "rspType"    # I
    .param p3, "rspData"    # Ljava/lang/Object;

    .prologue
    .line 201
    const/4 v0, -0x1

    .line 202
    .local v0, "errorCode":I
    instance-of v1, p3, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v1, :cond_0

    .line 203
    check-cast p3, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p3    # "rspData":Ljava/lang/Object;
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiCalled(II)V

    .line 165
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 171
    const/16 v1, 0x2905

    if-ne p2, v1, :cond_0

    .line 172
    packed-switch p3, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p4

    .line 174
    check-cast v0, Lcom/samsung/android/app/music/common/model/PickList;

    .line 175
    .local v0, "response":Lcom/samsung/android/app/music/common/model/PickList;
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getMoreYn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->moreYn:Z

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getListPicks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->setList(Ljava/util/List;)V

    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getListPicks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOverScrollMode(I)V

    .line 180
    const-string v1, "PickListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected pick response item size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickList;->getListPicks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->setOnLoadMoreListener(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v2, "PickListActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const v2, 0x7f04017d

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 97
    const v2, 0x7f0a03c4

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 98
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    const v2, 0x7f12044b

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 103
    new-instance v2, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .line 104
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pickListAdapter:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->pageLoadCount:I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->initMiniPlayer()V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 111
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_1

    .line 112
    const-string v2, "MagazineList"

    new-array v3, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 117
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "991"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 152
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;->getPage()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPickList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;I)I

    .line 155
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 160
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    return-void
.end method
