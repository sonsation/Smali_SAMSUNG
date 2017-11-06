.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;
.super Ljava/lang/Object;
.source "PrivateModeFileOperation.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;


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
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "extInfo"    # I

    .prologue
    .line 68
    const-string v0, "PrivateMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->PREPARED:I

    if-ne p1, v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$100(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$100(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->registerClient(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$202(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$200(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 76
    const-string v0, "PrivateMode"

    const-string v1, "It fails to register the client."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    .line 90
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "PrivateMode"

    const-string v1, "Lock task mode(Pin Window) is enabled. So cancelThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    goto :goto_0

    .line 83
    :cond_3
    sget v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->MOUNTED:I

    if-ne p1, v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->start()V

    goto :goto_0

    .line 86
    :cond_4
    sget v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->CANCELLED:I

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    goto :goto_0
.end method
