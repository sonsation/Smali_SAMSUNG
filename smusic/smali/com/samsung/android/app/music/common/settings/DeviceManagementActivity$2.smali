.class Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;
.super Ljava/lang/Object;
.source "DeviceManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->showDeviceDeregisterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DeviceInfo;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;

    .line 205
    .local v2, "info":Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;
    new-instance v4, Lcom/samsung/android/app/music/common/model/milksetting/DeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/common/model/milksetting/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v2    # "info":Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 210
    new-instance v1, Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;-><init>(Ljava/util/ArrayList;)V

    .line 211
    .local v1, "deviceListInfo":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteDownloadbleDevices(Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 214
    .end local v1    # "deviceListInfo":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    :cond_1
    return-void
.end method
