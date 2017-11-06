.class Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;
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
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;->onRemoveMyStationsDialogPositiveClick(Ljava/util/List;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    return-void
.end method
