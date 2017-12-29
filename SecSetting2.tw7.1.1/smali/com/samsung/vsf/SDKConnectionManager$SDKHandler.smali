.class Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
.super Landroid/os/Handler;
.source "SDKConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SDKConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vsf/SDKConnectionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    .line 243
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 249
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 259
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v1, p1}, Lcom/samsung/vsf/SDKConnectionManager;->access$900(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Message;)V

    .line 268
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$700(Lcom/samsung/vsf/SDKConnectionManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$500(Lcom/samsung/vsf/SDKConnectionManager;)V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$800(Lcom/samsung/vsf/SDKConnectionManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
