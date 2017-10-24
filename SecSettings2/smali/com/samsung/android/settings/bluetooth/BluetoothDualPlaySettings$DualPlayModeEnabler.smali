.class Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;
.super Ljava/lang/Object;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualPlayModeEnabler"
.end annotation


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Lcom/android/settings/widget/SwitchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 181
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->onSwitchStateChange(Z)V

    .line 226
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 209
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "pause :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 201
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "resume :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 217
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "setChecked :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 185
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "setupSwitchBar :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public teardownSwitchBar()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 193
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "teardownSwitchBar :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
