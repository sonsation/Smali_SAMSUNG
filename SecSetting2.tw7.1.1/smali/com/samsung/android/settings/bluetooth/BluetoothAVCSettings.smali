.class public final Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBixbyStateId:Ljava/lang/String;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContentPreference:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIsA2dpProfileReady:Z

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramAttr"    # Ljava/lang/String;
    .param p3, "paramAttrValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->setAbsoluteVolumeControlMode(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->updateContentsView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->DBG:Z

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 400
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 576
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 59
    return-void
.end method

.method private addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramAttr"    # Ljava/lang/String;
    .param p3, "paramAttrValue"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string/jumbo v0, "BluetoothAVCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNlgScreenParam() :: paramName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "// paramAttr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "// paramAttrValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_0
    return-void
.end method

.method private isAVCAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_0

    .line 424
    return v0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAudioPathBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlDeviceActive()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isAudioPathBluetooth()Z
    .locals 6

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 411
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 412
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 414
    .local v1, "deviceType":I
    and-int/lit16 v3, v1, 0x380

    if-eqz v3, :cond_0

    .line 415
    const/4 v2, 0x1

    .line 418
    :cond_0
    const-string/jumbo v3, "BluetoothAVCSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAudioPathBluetooth :: sound path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v2
.end method

.method private launchAVCAskPopup()V
    .locals 3

    .prologue
    .line 368
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "launchAVCAskPopup :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    const v1, 0x7f0b04ae

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 371
    const v1, 0x7f0b04af

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    const v1, 0x7f0b04fb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 373
    const v1, 0x7f0b0509

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 369
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 367
    return-void
.end method

.method private requestNlg()V
    .locals 2

    .prologue
    .line 646
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "requestNlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MediaVolumeSyncSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 645
    :cond_0
    return-void
.end method

.method private sendResponseAndInit(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 653
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "sendResponseAndInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 655
    if-eqz p1, :cond_1

    .line 656
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 660
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    .line 652
    :cond_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private setAbsoluteVolumeControlMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 298
    const-string/jumbo v1, "BluetoothAVCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAbsoluteVolumeControlMode :: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 302
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "setAbsoluteVolumeControlMode :: mA2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setAbsoluteVolumeControlMode(Z)Z

    move-result v0

    .line 306
    .local v0, "success":Z
    if-eqz v0, :cond_4

    .line 307
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 310
    const-string/jumbo v1, "MediaVolumeSyncOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    .line 316
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 312
    :cond_3
    const-string/jumbo v1, "MediaVolumeSyncOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_4
    const-string/jumbo v1, "BluetoothAVCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAbsoluteVolumeControlMode :: failed set AVC mode to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v1, "MediaVolumeSyncOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    .line 329
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    goto/16 :goto_0

    .line 325
    :cond_6
    const-string/jumbo v1, "MediaVolumeSyncOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateContentsView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 245
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mContentPreference:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    if-eqz v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mContentPreference:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->notifyChanged()V

    .line 234
    :goto_2
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    .line 251
    :cond_2
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "updateContentsView :: mA2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    .line 256
    :cond_3
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "updateContentsView :: mLocalProfileManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    .line 264
    :cond_4
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "updateContentsView :: Content Preference is null, can not update content view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 3
    .param p1, "bluetoothState"    # I

    .prologue
    .line 431
    const-string/jumbo v0, "BluetoothAVCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChanged :: state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 430
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 445
    const-string/jumbo v0, "BluetoothAVCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged :: connection state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->updateContentsView()V

    .line 444
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addPreferencesFromResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 120
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->getSwitchPreference()Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 123
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mContentPreference:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mContentPreference:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->setHasOptionsMenu(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mScreenId:Ljava/lang/String;

    .line 105
    return-void

    .line 117
    :cond_0
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    .line 226
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 218
    :cond_2
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 454
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 460
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 457
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mScreenId:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->pause()V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MediaVolumeSyncSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 197
    return-void

    .line 210
    :cond_1
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onPause :: mLocalBluetoothManager is null, can not unregister bluetooth callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 153
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    .line 155
    .local v1, "state":I
    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    .line 156
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 157
    :cond_0
    const-string/jumbo v3, "BluetoothAVCSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_2
    return-void

    .line 170
    .end local v1    # "state":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 171
    .local v2, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->updateContentsView()V

    .line 176
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->resume()V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "MediaVolumeSyncSettings"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 193
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    .line 150
    return-void

    .line 187
    :cond_5
    const-string/jumbo v3, "BluetoothAVCSettings"

    const-string/jumbo v4, "onResume :: mLocalBluetoothManager is null, can not register bluetooth callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 451
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 336
    :try_start_0
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 339
    .local v0, "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 335
    return-void

    .line 341
    .restart local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->updateContentsView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 345
    .restart local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: mA2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 350
    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_3
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 352
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 359
    .local v0, "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    .line 356
    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_0
    return-void
.end method

.method public onSwitchStateChange(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 269
    const-string/jumbo v1, "BluetoothAVCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchChange :: isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    .line 274
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onSwitchChange :: mA2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    :cond_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->launchAVCAskPopup()V

    .line 283
    return-void

    .line 278
    :cond_3
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onSwitchChange :: It is not user interaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 286
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "detailValue":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mScreenId:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->setAbsoluteVolumeControlMode(Z)V

    goto :goto_0

    .line 287
    .end local v0    # "detailValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "detailValue":Ljava/lang/String;
    goto :goto_1
.end method
