.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1270
    return-void
.end method

.method public onDisable(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disable()V

    .line 1280
    return-void
.end method

.method public onEdit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForModify()V

    .line 1275
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forget()V

    .line 1250
    return-void
.end method

.method public onSave(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 1256
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    .line 1257
    .local v1, "configController":Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1258
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1261
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1262
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
