.class Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "detailValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 129
    sput-boolean v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 131
    .end local v0    # "detailValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "detailValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0
.end method
