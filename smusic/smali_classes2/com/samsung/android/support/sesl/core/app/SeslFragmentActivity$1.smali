.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;
.super Landroid/os/Handler;
.source "SeslFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->doReallyStop(Z)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onResumeFragments()V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
