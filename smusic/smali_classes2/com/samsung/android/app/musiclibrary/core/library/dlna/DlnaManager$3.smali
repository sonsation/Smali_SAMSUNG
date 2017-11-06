.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;
.super Ljava/lang/Object;
.source "DlnaManager.java"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 407
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Finder - onDeviceAdded() - deviceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 412
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v2, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 392
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Finder - onDeviceRemoved() - deviceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 396
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v2, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    .line 399
    return-void
.end method
