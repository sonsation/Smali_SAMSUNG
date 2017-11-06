.class Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;
.super Ljava/lang/Object;
.source "ConfirmRemoveMyStationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;->onRemoveMyStationsDialogNegativeClick()V

    .line 52
    :cond_0
    return-void
.end method
