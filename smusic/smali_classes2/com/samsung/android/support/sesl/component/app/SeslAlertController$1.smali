.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void

    .line 127
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 129
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 132
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0
.end method