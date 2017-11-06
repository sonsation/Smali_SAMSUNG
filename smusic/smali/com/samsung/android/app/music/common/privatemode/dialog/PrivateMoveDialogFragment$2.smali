.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;
.super Ljava/lang/Object;
.source "PrivateMoveDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->onStateChanged(ILjava/lang/String;)V
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
    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    .line 215
    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->access$100(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 216
    .local v0, "abortMoveDialog":Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "privateAbortMoveDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->access$102(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 219
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 222
    :cond_0
    return-void
.end method
