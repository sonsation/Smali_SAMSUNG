.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;
.super Ljava/lang/Object;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    packed-switch p2, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 384
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get5(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :pswitch_1
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "mClickListener :: will not enable a2dp AVC mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get5(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
