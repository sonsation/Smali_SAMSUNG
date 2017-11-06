.class Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment$1;
.super Ljava/lang/Object;
.source "MuseLoginCheckDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 29
    iget-object v2, p0, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 30
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseLoginRequestReceivable;

    if-eqz v2, :cond_0

    .line 33
    check-cast v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseLoginRequestReceivable;

    .end local v0    # "a":Landroid/app/Activity;
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 34
    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseLoginRequestReceivable;->onRequestResult(II)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method
