.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;
.super Ljava/lang/Object;
.source "DeviceVisibilitySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 240
    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v2, v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "stateId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->-get0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->-get0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    return-void
.end method
