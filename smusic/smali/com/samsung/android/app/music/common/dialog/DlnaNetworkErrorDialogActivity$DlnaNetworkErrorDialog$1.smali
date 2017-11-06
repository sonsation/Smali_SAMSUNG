.class Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;
.super Ljava/lang/Object;
.source "DlnaNetworkErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_0
    return-void
.end method
