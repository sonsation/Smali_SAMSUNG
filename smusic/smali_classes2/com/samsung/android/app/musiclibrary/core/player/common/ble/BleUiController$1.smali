.class Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;
.super Ljava/lang/Object;
.source "BleUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->showBleConnectButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->requestDisconnection(Landroid/content/Context;)V

    .line 129
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_wfd_disconnect_noti:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .line 133
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$100(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;->isSupportDlna()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->requestAvailableDevice(Landroid/content/Context;Z)V

    .line 134
    const-string v1, "MDTV"

    const-string v2, "Selected"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
