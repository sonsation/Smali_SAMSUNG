.class public Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "DlnaDmsDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;"
    }
.end annotation


# static fields
.field private static final SAVED_INSTANCE_FLAT_SEARCH_ERROR:Ljava/lang/String; = "dlna_flat_search_error"


# instance fields
.field private final mDlnaErrorReceiver:Landroid/content/BroadcastReceiver;

.field private final mDlnaEventReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaFlatSearchError:Z

.field private mDlnaFlatSearchFinished:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

.field private mShowDlnaNetworkErrorDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchFinished:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mShowDlnaNetworkErrorDialog:Z

    .line 226
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 357
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->showDlnaNetworkErrorDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mShowDlnaNetworkErrorDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->showDetailConfirmDialog(Ljava/lang/String;J)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .locals 3
    .param p0, "dlnadmsName"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;-><init>()V

    .line 73
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_key_word"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method private registerDlnaEventReceiver()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "com.sec.android.app.music.dlna.flat.searching.error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method private registerDlnaWatcher()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private showDetailConfirmDialog(Ljava/lang/String;J)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "audioId"    # J

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->TAG:Ljava/lang/String;

    .line 323
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 324
    .local v0, "fg":Landroid/app/DialogFragment;
    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getListType()I

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getInstance(ILjava/lang/String;J)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method private showDlnaNetworkErrorDialog()V
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 332
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->TAG:Ljava/lang/String;

    .line 335
    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 336
    .local v2, "fg":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 338
    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 339
    .local v1, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 343
    .end local v1    # "dialog":Landroid/app/DialogFragment;
    .end local v2    # "fg":Landroid/app/Fragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mShowDlnaNetworkErrorDialog:Z

    .line 344
    return-void
.end method

.method private unregisterDlnaEventReceiver()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method private unregisterDlnaWatcher()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_key_word"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x10000b

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getValidItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSearch()V
    .locals 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 378
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "extra_list_type"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getListType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v2, "extra_key_word"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    if-nez p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "keyWord":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getUriType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "playingDms":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchFinished:Z

    .line 128
    .end local v0    # "keyWord":Ljava/lang/String;
    .end local v1    # "playingDms":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->registerDlnaWatcher()V

    .line 129
    return-void

    .line 120
    .restart local v0    # "keyWord":Ljava/lang/String;
    .restart local v1    # "playingDms":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v1    # "playingDms":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0    # "keyWord":Ljava/lang/String;
    :cond_2
    const-string v2, "dlna_flat_search_error"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    goto :goto_0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "artist"

    .line 166
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "album_id"

    .line 167
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "_id"

    .line 168
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 371
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13001b

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 372
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 373
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_key_word"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->unregisterDlnaWatcher()V

    .line 160
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroy()V

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
    .line 173
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 174
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchFinished:Z

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    .line 181
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mShowDlnaNetworkErrorDialog:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->showDlnaNetworkErrorDialog()V

    .line 149
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    const-string v0, "dlna_flat_search_error"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mDlnaFlatSearchError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->registerDlnaEventReceiver()V

    .line 141
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->unregisterDlnaEventReceiver()V

    .line 154
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    .line 155
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setChoiceMode(I)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    .line 91
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v3, 0x7f020146

    .line 92
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v3, 0x7f0d0169

    .line 93
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 94
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 97
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setSearchLauchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 100
    .local v0, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v3, -0x5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 103
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    const v3, 0x7f0a013a

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 105
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setListShown(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->initListLoader(I)V

    .line 107
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 387
    return-void
.end method
