.class public Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity;
.super Landroid/app/Activity;
.source "DlnaNetworkErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "dlna_network_error_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 27
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "device_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dlna_network_error_dialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 29
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 30
    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 31
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dlna_network_error_dialog"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method
