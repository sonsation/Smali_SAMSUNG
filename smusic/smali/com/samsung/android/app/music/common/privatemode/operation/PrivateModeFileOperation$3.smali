.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;
.super Landroid/content/BroadcastReceiver;
.source "PrivateModeFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "PrivateMode"

    const-string v1, " mPrivateOffReceiver onReceive() : ACTION_PRIVATE_MODE_OFF "

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method
