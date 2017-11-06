.class Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "SeslLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager$1;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager$1;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;->access$000(Lcom/samsung/android/support/sesl/core/content/SeslLocalBroadcastManager;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
