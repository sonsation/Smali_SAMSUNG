.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;
.super Ljava/lang/Object;
.source "DlnaManager.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService()V
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
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 3
    .param p1, "provider"    # Lcom/samsung/android/allshare/ServiceProvider;
    .param p2, "state"    # Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .prologue
    .line 177
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDlnaService - onCreated(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    check-cast p1, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .end local p1    # "provider":Lcom/samsung/android/allshare/ServiceProvider;
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$002(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 183
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 187
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.servicecreated"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;->onServiceBind()V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$702(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    .line 194
    :cond_0
    return-void
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/samsung/android/allshare/ServiceProvider;

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 169
    return-void
.end method
