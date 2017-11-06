.class public Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;
.super Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
.source "SeslCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 46
    instance-of v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    .line 49
    .local v0, "acd":Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
    packed-switch p2, :pswitch_data_0

    .line 63
    .end local v0    # "acd":Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
    :goto_0
    return-void

    .line 51
    .restart local v0    # "acd":Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 57
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->supportRequestWindowFeature(I)Z

    goto :goto_0

    .line 61
    .end local v0    # "acd":Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
