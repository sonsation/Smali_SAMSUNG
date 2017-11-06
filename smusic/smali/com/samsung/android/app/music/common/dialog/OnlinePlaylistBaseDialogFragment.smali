.class public abstract Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;
.super Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.source "OnlinePlaylistBaseDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mServiceConn:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 91
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 96
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onApiHandled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mServiceConn:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mServiceConn:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    goto :goto_0
.end method

.method protected onCreateRenamePlaylistName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPlaylistName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mServiceConn:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mServiceConn:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method protected setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "newPlaylistName"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 105
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 106
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 108
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
