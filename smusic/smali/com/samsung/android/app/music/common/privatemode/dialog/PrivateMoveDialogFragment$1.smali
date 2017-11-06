.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivateMoveDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 137
    return-void
.end method
