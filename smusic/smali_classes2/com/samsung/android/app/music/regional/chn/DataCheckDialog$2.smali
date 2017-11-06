.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;
.super Ljava/lang/Object;
.source "DataCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$700(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$700(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->onResult(I)V

    .line 221
    :cond_0
    return-void
.end method
