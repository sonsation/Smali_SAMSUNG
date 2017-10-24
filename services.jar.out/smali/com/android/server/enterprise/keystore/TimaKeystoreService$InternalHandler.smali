.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;
.super Landroid/os/Handler;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_ADMIN_REMOVED:I = 0x2

.field public static final MSG_BIND_DOWNLOADABLEKS:I = 0x3

.field public static final MSG_PRE_ADMIN_REMOVAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 287
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    :pswitch_0
    return-void

    .line 305
    :pswitch_1
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DKS thread Restarting : Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap6(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 307
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DKS thread Restarting : End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
