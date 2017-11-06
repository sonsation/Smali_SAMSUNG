.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$100(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$300(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$3;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$300(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
