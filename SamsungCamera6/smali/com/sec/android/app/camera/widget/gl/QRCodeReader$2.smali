.class Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/QRCodeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {p2}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$002(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$000(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$100(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$000(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$100(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/qragent/service/IQRService;->linkQRCodeWithRawData(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$200(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$300(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$200(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QRCodeReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;->this$0:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->access$002(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    return-void
.end method
