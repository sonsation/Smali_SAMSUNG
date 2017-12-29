.class Lcom/android/settings/bluetooth/BluetoothSettings$8;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->ShowChinaPermissionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 1295
    const/4 v2, 0x0

    .line 1296
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez p1, :cond_0

    .line 1297
    return-void

    .line 1300
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1305
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    if-nez v2, :cond_1

    .line 1306
    return-void

    .line 1301
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1302
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1309
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    if-ne p2, v4, :cond_2

    .line 1312
    const-string/jumbo v3, "bluetooth_security_on_check"

    .line 1311
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1313
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, "detailValue":Ljava/lang/String;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1321
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get5(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    return-void

    .line 1317
    .end local v0    # "detailValue":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "bluetooth_security_on_check"

    const/4 v4, 0x0

    .line 1316
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1318
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "detailValue":Ljava/lang/String;
    goto :goto_1
.end method
