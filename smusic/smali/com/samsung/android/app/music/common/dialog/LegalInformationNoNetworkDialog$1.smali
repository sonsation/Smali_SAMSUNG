.class Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;
.super Ljava/lang/Object;
.source "LegalInformationNoNetworkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->dismiss()V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 39
    return-void
.end method
