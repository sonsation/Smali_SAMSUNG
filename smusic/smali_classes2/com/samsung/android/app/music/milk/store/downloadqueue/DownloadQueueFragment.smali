.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.super Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;
.source "DownloadQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;,
        Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_ALL_START:I = 0x0

.field public static final DOWNLOAD_ALL_STOP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadQueueFragment"


# instance fields
.field private broadcastReceiver:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;

.field private downloadState:I

.field private headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

.field private mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private final mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    .line 251
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 284
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 457
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->showOverFlowDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->showDownloadFailDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->initDownloadProcess()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    return-object v0
.end method

.method private initDownloadProcess()V
    .locals 3

    .prologue
    .line 271
    const-string v1, "DownloadQueueFragment"

    const-string v2, "initDownloadProcess"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 274
    .local v0, "isNetworkConnected":Z
    if-eqz v0, :cond_0

    .line 275
    const-string v1, "DownloadQueueFragment"

    const-string v2, "initDownloadProcess Start all download"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->startAll()I

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->updateHeader()V

    .line 282
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->stopAll()I

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;-><init>()V

    .line 80
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
    return-object v0
.end method

.method private showDownloadFailDialog(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "811"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 470
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a027d

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02c5

    .line 471
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "811"

    .line 472
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0146

    const-string v2, "8011"

    const/4 v3, 0x0

    .line 473
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "download_fail"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private showOverFlowDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02bc

    .line 443
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02c6

    .line 444
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0293

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/content/Context;)V

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    .line 453
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "device_overflow"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private updateHeader()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isSequential()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->setButtonView(I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 230
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getItemCount()I

    move-result v0

    .line 230
    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->setTextView(II)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 233
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 227
    goto :goto_0

    :cond_2
    move v2, v1

    .line 230
    goto :goto_1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x10000052

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 142
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->broadcastReceiver:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->broadcastReceiver:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;->registerBroadcastReceiver()V

    .line 89
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
    .locals 4

    .prologue
    .line 210
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 211
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    const-string v2, "artist"

    .line 212
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    const-string v2, "album_id"

    .line 213
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    const-string v2, "cp_attrs"

    .line 214
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    const-string v2, "audio_id"

    .line 215
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    const-string/jumbo v2, "track_type"

    .line 216
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setFileExtenstionCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v1

    const-string v2, "downloaded_size"

    .line 217
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setDownlaodedSizeCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v1

    const-string v2, "file_size"

    .line 218
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setFileSizeCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v1

    const-string v2, "is_downloading"

    .line 219
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->setIsDownloadingCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v1

    const v2, 0x80002

    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 220
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    .line 222
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 177
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 178
    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueQueryArgs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->broadcastReceiver:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$DownloadQueueBroadcastReceiver;->unregisterBroadcastReceiver()V

    .line 167
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onDestroyView()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 161
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->updateHeader()V

    .line 195
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMilkDownloadServiceConnected()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onMilkDownloadServiceConnected()V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 240
    .local v0, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 243
    const-string v1, "DownloadQueueFragment"

    const-string v2, "onServiceConnected signed in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->initDownloadProcess()V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v1, "DownloadQueueFragment"

    const-string v2, "onServiceConnected not signed in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 352
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onStart()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 154
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onStop()V

    .line 155
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 104
    .local v2, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 105
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 106
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->setChoiceMode(I)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->setListShown(Z)V

    .line 111
    const v4, 0x7f120202

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    .local v0, "headerLayout":Landroid/view/ViewGroup;
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 114
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    invoke-virtual {v4, v6, v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->setTextView(II)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 115
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->downloadState:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->setButtonView(I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 116
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->headerBuilder:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->build()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    const v4, 0x7f120205

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "stup":Landroid/view/View;
    check-cast v3, Landroid/view/ViewStub;

    .end local v3    # "stup":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 121
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, p0, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 123
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v5, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 124
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v4}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 125
    .local v1, "isNetworkConnected":Z
    if-nez v1, :cond_0

    .line 126
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->initListLoader(I)V

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "935"

    .line 132
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 133
    return-void
.end method
