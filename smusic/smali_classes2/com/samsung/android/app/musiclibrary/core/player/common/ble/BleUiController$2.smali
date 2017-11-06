.class Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;
.super Ljava/lang/Object;
.source "BleUiController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;
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
    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTvDetached()V
    .locals 3

    .prologue
    .line 245
    const-string v0, "SMUSIC-UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTvDetached()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)V

    .line 247
    return-void
.end method

.method public onTvDetected(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 235
    const-string v0, "SMUSIC-UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTvDetected() isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;Z)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MDTV"

    const-string v2, "Displayed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onTvListDialogShow(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    const-string v0, "SMUSIC-UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTvListDialogShow() size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->showDialog(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 253
    return-void
.end method

.method public onTvTurnOnDialogDismiss()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "SMUSIC-UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTvTurnOnDialogDismiss() is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 265
    return-void
.end method

.method public onTvTurnOnDialogShow()V
    .locals 3

    .prologue
    .line 257
    const-string v0, "SMUSIC-UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTvTurnOnDialogShow() is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->showDialog(Landroid/app/FragmentManager;)V

    .line 259
    return-void
.end method
