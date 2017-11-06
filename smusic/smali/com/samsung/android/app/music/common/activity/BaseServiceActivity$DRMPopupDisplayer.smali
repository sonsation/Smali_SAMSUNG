.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;
.super Ljava/lang/Object;
.source "BaseServiceActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DRMPopupDisplayer"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mLoadingProgress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    .line 511
    return-void
.end method

.method private closePrevDrmPopup()V
    .locals 6

    .prologue
    .line 563
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 564
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v4, "drm_popup"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 565
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_0

    .line 566
    invoke-virtual {v3}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "path":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "currentPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 570
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 573
    .end local v0    # "currentPath":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private hideProgressDialog()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "Ui"

    const-string v1, "hideProgressDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 599
    :cond_0
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 576
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->hideProgressDialog()V

    .line 577
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showProgressDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 532
    const-string v2, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->closePrevDrmPopup()V

    .line 540
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v2, "startRights"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    const-string/jumbo v2, "successRights"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->hideProgressDialog()V

    goto :goto_0

    .line 549
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->hideProgressDialog()V

    .line 550
    new-instance v2, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer$1;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;)V

    .line 551
    invoke-static {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getNewInstance(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    move-result-object v1

    .line 557
    .local v1, "dialog":Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "drm_popup"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->closePrevDrmPopup()V

    .line 516
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 521
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
