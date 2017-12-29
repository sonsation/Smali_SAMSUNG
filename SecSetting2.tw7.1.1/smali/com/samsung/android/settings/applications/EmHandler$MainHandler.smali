.class Lcom/samsung/android/settings/applications/EmHandler$MainHandler;
.super Landroid/os/Handler;
.source "EmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/applications/EmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/EmHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/applications/EmHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/applications/EmHandler;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/applications/EmHandler;Lcom/samsung/android/settings/applications/EmHandler$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/applications/EmHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/EmHandler;->-get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->exeOptAction()V

    .line 229
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exeOptAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/EmHandler;->-get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->exePrefAction()V

    .line 233
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exePrefAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/EmHandler;->-get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->exeViewAction()V

    .line 237
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exeViewAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/EmHandler;->-get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->exeCustomAction()V

    .line 241
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exeCustomAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->this$0:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/EmHandler;->-get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->stopAction()V

    .line 245
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
