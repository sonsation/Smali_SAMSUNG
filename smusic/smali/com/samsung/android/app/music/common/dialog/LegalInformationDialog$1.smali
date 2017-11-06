.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$1;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method
