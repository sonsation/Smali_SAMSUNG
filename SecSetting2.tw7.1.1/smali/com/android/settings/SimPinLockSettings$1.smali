.class Lcom/android/settings/SimPinLockSettings$1;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPinLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SimPinLockSettings;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x12c

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 110
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v2}, Lcom/android/settings/SimPinLockSettings;->-set0(Lcom/android/settings/SimPinLockSettings;Z)Z

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 112
    .local v1, "handler":Landroid/os/Handler;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    const-string/jumbo v2, "SimPinLockSettings"

    const-string/jumbo v3, "Unexpected msg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    return-void

    .line 110
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .restart local v1    # "handler":Landroid/os/Handler;
    :pswitch_0
    new-instance v2, Lcom/android/settings/SimPinLockSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SimPinLockSettings$1$1;-><init>(Lcom/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 121
    :pswitch_1
    new-instance v2, Lcom/android/settings/SimPinLockSettings$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SimPinLockSettings$1$2;-><init>(Lcom/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
