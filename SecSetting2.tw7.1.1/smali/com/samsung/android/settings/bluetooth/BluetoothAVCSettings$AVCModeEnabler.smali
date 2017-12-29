.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;
.super Ljava/lang/Object;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVCModeEnabler"
.end annotation


# instance fields
.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-direct {v0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 511
    const v0, 0x7f0b1d09

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    .line 509
    return-void
.end method


# virtual methods
.method public getSwitchPreference()Landroid/preference/SwitchPreference;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 527
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "pause :: mSwitchPreference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    :goto_0
    return-void

    .line 523
    :cond_0
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "resume :: mSwitchPreference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 539
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    if-eqz p1, :cond_0

    const v0, 0x7f0b1d08

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    :goto_1
    return-void

    .line 539
    :cond_0
    const v0, 0x7f0b1d09

    goto :goto_0

    .line 541
    :cond_1
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "setChecked :: mSwitchPreference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 545
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "setEnabled :: mSwitchPreference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "setTitle :: text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    :cond_0
    move-object v0, p1

    .line 559
    check-cast v0, Ljava/lang/String;

    .line 561
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 553
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "setTitle :: mSwitchPreference is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
