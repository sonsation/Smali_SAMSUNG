.class Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;
.super Ljava/lang/Object;
.source "ServiceForwardRewindController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return v2

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;Z)Z

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;I)I

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
