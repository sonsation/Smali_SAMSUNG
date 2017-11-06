.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog$1;
.super Ljava/lang/Object;
.source "PrivateAbortMoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 31
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 32
    return-void
.end method
