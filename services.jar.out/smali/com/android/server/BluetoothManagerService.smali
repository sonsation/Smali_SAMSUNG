.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$1;,
        Lcom/android/server/BluetoothManagerService$2;,
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static BLE_ALWAYS_ON:Z = false

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final DBG:Z

.field private static final DEVICE_TYPE_NAMES:[Ljava/lang/String;

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_BT_ENABLE_BLOCK:I = 0x2bd

.field private static final MESSAGE_BT_IT_POLICY:I = 0x5

.field private static final MESSAGE_CHINA_BT_ENABLE_SECURITY_POPUP:I = 0x2bc

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_GOOGLE_BLE_STATE_CHANGE:I = 0x2be

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_SINK_SERVICE_STATE_CALLBACK:I = 0x3fc

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_REGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fa

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAMSUNG_BLE_STATE_CHANGE:I = 0x2bf

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_SINK_SERVICE_STATE_CALLBACK:I = 0x3fd

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_UNREGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fb

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final STATE_BTMGR_BLE_OFF:I = 0x0

.field private static final STATE_BTMGR_BLE_ON:I = 0x2

.field private static final STATE_BTMGR_BLE_TURNING_OFF:I = 0x3

.field private static final STATE_BTMGR_BLE_TURNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static isEnablePopup:Z

.field private static limit:I

.field private static mBleAppCount:I

.field private static mPolicy:I

.field private static mSamsungBleAppCount:I

.field private static mShutdown:Z

.field private static mainBuffer:Ljava/lang/String;

.field private static subBuffer:Ljava/lang/StringBuilder;


# instance fields
.field private btEnablePopUp:Landroid/app/AlertDialog;

.field private chinaThirdPartyAppName:Ljava/lang/String;

.field logDir:Ljava/io/File;

.field logDirp:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisableBleCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothDisableBleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mEnablingAirplane:Z

.field private mErrorRecoveryRetryCounter:I

.field private mGoogleBleState:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRpaGeneration:Z

.field private mSamsugBleState:I

.field mSamsungBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private mUsingSSUpdate:Z

.field mainBfp:Ljava/lang/String;

.field mainF:Ljava/io/File;

.field subBfp:Ljava/lang/String;

.field subF:Ljava/io/File;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic -get18()I
    .locals 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    return v0
.end method

.method static synthetic -get23()I
    .locals 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    return p1
.end method

.method static synthetic -set14(I)I
    .locals 0

    sput p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOffBle(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/BluetoothManagerService;Z)I
    .locals 1
    .param p1, "notifyOff"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->cancelChinaPopupState()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 148
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "???"

    aput-object v1, v0, v3

    .line 222
    const-string/jumbo v1, "BR/EDR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "LE"

    aput-object v1, v0, v4

    .line 224
    const-string/jumbo v1, "DUAL"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 220
    sput-object v0, Lcom/android/server/BluetoothManagerService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    .line 230
    sput v4, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 251
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 252
    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 281
    sput-boolean v3, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    .line 282
    sput-boolean v3, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 297
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 298
    const/high16 v0, 0x80000

    sput v0, Lcom/android/server/BluetoothManagerService;->limit:I

    .line 306
    sput-boolean v3, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 507
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 267
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 266
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 271
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 283
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    .line 284
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    .line 285
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    .line 286
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 287
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 292
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 291
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 299
    const-string/jumbo v3, "/data/misc/bluedroiddump"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    .line 300
    const-string/jumbo v3, "/data/misc/bluedroiddump/mainBuffer.log"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    .line 301
    const-string/jumbo v3, "/data/misc/bluedroiddump/subBuffer.log"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    .line 308
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 354
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 362
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 848
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 849
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    .line 1984
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 508
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 510
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 511
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 512
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 513
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 514
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 515
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 516
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 517
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 518
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 519
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 520
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 521
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 524
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 525
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 526
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 527
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    .line 528
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    .line 529
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 532
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 534
    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 539
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 543
    :cond_0
    const/4 v2, -0x1

    .line 545
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui"

    .line 546
    const/high16 v5, 0x100000

    const/4 v6, 0x0

    .line 545
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 551
    :goto_0
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 553
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->setBdroidVersion()V

    .line 554
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->setBleAutoEnable()V

    .line 556
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->readFromFile()V

    .line 560
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerKnoxModeChangeObserver()V

    .line 507
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 12
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xf

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2725
    const/4 v4, 0x1

    .line 2726
    .local v4, "isStandardBroadcast":Z
    if-eq p1, p2, :cond_7

    .line 2728
    if-eq p2, v10, :cond_0

    .line 2729
    const/16 v7, 0xa

    if-ne p2, v7, :cond_1b

    .line 2730
    :cond_0
    const/16 v7, 0xd

    if-ne p1, v7, :cond_9

    .line 2731
    if-ne p2, v10, :cond_8

    const/4 v3, 0x1

    .line 2733
    .local v3, "intermediate_off":Z
    :goto_0
    const/16 v7, 0xa

    if-ne p2, v7, :cond_d

    .line 2735
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Bluetooth is complete turn off"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    .line 2737
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    .line 2738
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2739
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2740
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-eqz v7, :cond_2

    .line 2741
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2742
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 2744
    :cond_2
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-eqz v7, :cond_3

    .line 2745
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2746
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2749
    :cond_3
    const/4 v4, 0x0

    .line 2750
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-eqz v7, :cond_b

    .line 2751
    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "After shutdown : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    sput-boolean v6, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 2753
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2761
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v6, :cond_5

    .line 2762
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2763
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    monitor-exit v7

    .line 2887
    .end local v3    # "intermediate_off":Z
    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    .line 2888
    if-ne p1, v10, :cond_6

    .line 2890
    const/16 p1, 0xa

    .line 2892
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2893
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2894
    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2895
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2896
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2724
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    return-void

    .line 2731
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "intermediate_off":Z
    goto/16 :goto_0

    .line 2730
    .end local v3    # "intermediate_off":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "intermediate_off":Z
    goto/16 :goto_0

    .line 2754
    :cond_a
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2755
    :try_start_1
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 2756
    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 2757
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2759
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2754
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2762
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2766
    :cond_b
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v6, :cond_5

    .line 2767
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v7, 0x6

    if-ge v6, v7, :cond_c

    .line 2768
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Call sendEnableMsg() again!!! mErrorRecoveryRetryCounter : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mQuietEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BluetoothManagerService Call sendEnableMsg to recover. mErrorRecoveryRetryCounter : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 2770
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2771
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    .line 2770
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2774
    :cond_c
    const-string/jumbo v6, "BluetoothManagerService RetryCounter reached the limit. Don\'t call sendEnableMsg anymore"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2777
    :cond_d
    if-nez v3, :cond_15

    .line 2779
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Bluetooth is in LE only mode"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :cond_e
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v6, :cond_13

    .line 2781
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_f

    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Calling BluetoothGattServiceUp"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_f
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    .line 2791
    :cond_10
    :goto_3
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v5, :cond_11

    .line 2792
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2793
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 2795
    :cond_11
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v5, :cond_12

    .line 2796
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2797
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2800
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2784
    :cond_13
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_14

    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Binding Bluetooth GATT service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_14
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2786
    const-string/jumbo v7, "android.hardware.bluetooth_le"

    .line 2785
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2787
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2788
    .local v1, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v8, 0x41

    invoke-virtual {p0, v1, v6, v8, v7}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_3

    .line 2802
    .end local v1    # "i":Landroid/content/Intent;
    :cond_15
    if-eqz v3, :cond_5

    .line 2803
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_16

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Intermediate off, back to LE only mode"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_16
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v7, v9, :cond_19

    .line 2806
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2815
    :cond_17
    :goto_4
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v7, v9, :cond_1a

    .line 2816
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2825
    :cond_18
    :goto_5
    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2827
    const/16 p2, 0xa

    .line 2828
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    goto/16 :goto_2

    .line 2807
    :cond_19
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v7, v11, :cond_17

    .line 2808
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2809
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v7, :cond_17

    .line 2810
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2811
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2812
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_4

    .line 2817
    :cond_1a
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v7, v11, :cond_18

    .line 2818
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2819
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v7, :cond_18

    .line 2820
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2821
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2822
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto :goto_5

    .line 2830
    .end local v3    # "intermediate_off":Z
    :cond_1b
    const/16 v7, 0xc

    if-ne p2, v7, :cond_20

    .line 2831
    const/16 v7, 0xc

    if-ne p2, v7, :cond_1f

    .line 2832
    .local v5, "isUp":Z
    :goto_6
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2834
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v9, :cond_1c

    .line 2835
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2837
    :cond_1c
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v9, :cond_1d

    .line 2838
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2840
    :cond_1d
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    if-nez v6, :cond_5

    .line 2841
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_1e

    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_1e
    :try_start_3
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 2844
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2845
    :catch_0
    move-exception v0

    .line 2846
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "isUp":Z
    :cond_1f
    move v5, v6

    .line 2831
    goto :goto_6

    .line 2850
    :cond_20
    const/16 v6, 0xe

    if-eq p2, v6, :cond_21

    .line 2851
    const/16 v6, 0x10

    if-ne p2, v6, :cond_26

    .line 2852
    :cond_21
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ble Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-eq v6, v5, :cond_22

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v11, :cond_23

    .line 2854
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2856
    :cond_23
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-eq v6, v5, :cond_24

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v11, :cond_25

    .line 2857
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2859
    :cond_25
    const/4 v4, 0x0

    .line 2851
    goto/16 :goto_2

    .line 2861
    :cond_26
    const/16 v6, 0xb

    if-eq p2, v6, :cond_27

    .line 2862
    const/16 v6, 0xd

    if-ne p2, v6, :cond_5

    .line 2863
    :cond_27
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2864
    const-string/jumbo v8, ", mBLE count: "

    .line 2863
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2864
    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 2863
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2864
    const-string/jumbo v8, ", s BLE count: "

    .line 2863
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2864
    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 2863
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v9, :cond_29

    .line 2866
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2875
    :cond_28
    :goto_7
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v9, :cond_2b

    .line 2876
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_2

    .line 2867
    :cond_29
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v5, :cond_2a

    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_2a

    .line 2868
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2869
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2870
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2871
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_7

    .line 2872
    :cond_2a
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v11, :cond_28

    .line 2873
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto :goto_7

    .line 2877
    :cond_2b
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v5, :cond_2c

    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v6, :cond_2c

    .line 2878
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2879
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2880
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2881
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_2

    .line 2882
    :cond_2c
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v11, :cond_5

    .line 2883
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_2
.end method

.method public static bufferLimitReached()Z
    .locals 2

    .prologue
    .line 3304
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 3307
    const/4 v0, 0x1

    return v0
.end method

.method private cancelChinaPopupState()V
    .locals 4

    .prologue
    .line 3266
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    .line 3268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 3269
    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 3270
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 3272
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 13

    .prologue
    .line 2664
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2665
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2666
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2667
    .local v2, "callingIdentity":J
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 2668
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2669
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_2

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2670
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2671
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    .line 2673
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 2676
    .local v5, "foregroundUser":I
    const/16 v10, 0x64

    if-lt v4, v10, :cond_4

    const/16 v10, 0xc8

    if-gt v4, v10, :cond_4

    .line 2678
    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v10

    .line 2677
    if-eqz v10, :cond_0

    .line 2679
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v9

    .line 2681
    .end local v9    # "valid":Z
    :cond_0
    if-nez v9, :cond_3

    .line 2682
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v9

    .line 2692
    :goto_1
    sget-boolean v10, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v10, :cond_1

    .line 2693
    const-string/jumbo v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2694
    const-string/jumbo v12, " callingUser="

    .line 2693
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2695
    const-string/jumbo v12, " parentUser="

    .line 2693
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2696
    const-string/jumbo v12, " foregroundUser="

    .line 2693
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2699
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2701
    return v9

    .line 2669
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    :cond_2
    const/16 v6, -0x2710

    .restart local v6    # "parentUser":I
    goto :goto_0

    .line 2681
    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "valid":Z
    goto :goto_1

    .line 2686
    :cond_4
    if-eq v4, v5, :cond_5

    .line 2687
    if-ne v6, v5, :cond_6

    .line 2686
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 2688
    :cond_6
    const/16 v10, 0x403

    if-eq v0, v10, :cond_5

    .line 2689
    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v10

    .line 2686
    if-nez v10, :cond_5

    .line 2690
    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 2698
    .end local v5    # "foregroundUser":I
    .end local v9    # "valid":Z
    :catchall_0
    move-exception v10

    .line 2699
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    throw v10
.end method

.method private checkItPolicy(Z)I
    .locals 13
    .param p1, "notifyOff"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    .line 3044
    const-string/jumbo v7, "device_policy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    .line 3045
    .local v5, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/4 v6, 0x0

    .line 3047
    .local v6, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3055
    :goto_0
    if-eqz v5, :cond_1

    .line 3056
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v5, v7, v6}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v0

    .line 3057
    .local v0, "BtMode":I
    if-nez v0, :cond_2

    .line 3059
    const/4 v7, 0x0

    sput v7, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 3060
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "BT IT Policy is changed to disable Bluetooth. Cannot enable"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    if-eqz p1, :cond_0

    .line 3063
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3064
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    const/16 v8, 0xa

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3065
    const/high16 v7, 0x4000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3066
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3068
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3083
    .end local v0    # "BtMode":I
    :cond_1
    :goto_1
    sget v7, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v7

    .line 3050
    :catch_0
    move-exception v3

    .line 3051
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Failed getting userId using ActivityManagerNative"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3048
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 3049
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Failed getting userId using ActivityManagerNative"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3069
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "BtMode":I
    :cond_2
    if-ne v0, v9, :cond_3

    .line 3071
    const/4 v7, 0x1

    :try_start_2
    sput v7, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 3072
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "BT IT Policy is changed to support HF only. Can use HF only"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3080
    .end local v0    # "BtMode":I
    :catch_2
    move-exception v2

    .line 3081
    .local v2, "e":Ljava/lang/Exception;
    sput v12, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    goto :goto_1

    .line 3076
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "BtMode":I
    :cond_3
    const/4 v7, 0x2

    :try_start_3
    sput v7, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 3077
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string/jumbo v8, "2"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method

.method private checkRpaStop()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1092
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    :cond_0
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRpaStop: bleAlwaysOn false, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_1
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v2, :cond_5

    :goto_0
    return v0

    .line 1093
    :cond_2
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRpaStop: bleAlwaysOn true, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_3
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1097
    goto :goto_0
.end method

.method private clearAllmBleApps()V
    .locals 7

    .prologue
    .line 1120
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1121
    .local v2, "imBleApp":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1123
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1124
    .local v3, "token":Landroid/os/IBinder;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 1125
    .local v4, "tokenRecipient":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1127
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v1

    .line 1129
    .local v1, "ex":Ljava/util/NoSuchElementException;
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "no such element, already unlinked"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "tokenRecipient":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_1
    return-void
.end method

.method private clearAllmSamsungBleApps()V
    .locals 7

    .prologue
    .line 1136
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1137
    .local v2, "iSamsungBleApps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1140
    .local v3, "token":Landroid/os/IBinder;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 1141
    .local v4, "tokenRecipient":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1143
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v1

    .line 1145
    .local v1, "ex":Ljava/util/NoSuchElementException;
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "no such element, already unlinked"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1135
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "tokenRecipient":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_1
    return-void
.end method

.method private clearBleApps()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1103
    monitor-enter p0

    .line 1104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearAllmBleApps()V

    .line 1105
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearAllmSamsungBleApps()V

    .line 1106
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v0, v1, :cond_0

    .line 1107
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1109
    :cond_0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v0, v1, :cond_1

    .line 1110
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1113
    const/4 v0, 0x0

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1114
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1115
    const/4 v0, 0x0

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1102
    return-void

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static debugGetMessageName(I)Ljava/lang/String;
    .locals 2
    .param p0, "msgType"    # I

    .prologue
    .line 311
    sparse-switch p0, :sswitch_data_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :sswitch_0
    const-string/jumbo v0, "MESSAGE_ENABLE"

    return-object v0

    .line 313
    :sswitch_1
    const-string/jumbo v0, "MESSAGE_DISABLE"

    return-object v0

    .line 314
    :sswitch_2
    const-string/jumbo v0, "MESSAGE_REGISTER_ADAPTER"

    return-object v0

    .line 315
    :sswitch_3
    const-string/jumbo v0, "MESSAGE_UNREGISTER_ADAPTER"

    return-object v0

    .line 316
    :sswitch_4
    const-string/jumbo v0, "MESSAGE_REGISTER_STATE_CHANGE_CALLBACK"

    return-object v0

    .line 317
    :sswitch_5
    const-string/jumbo v0, "MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK"

    return-object v0

    .line 318
    :sswitch_6
    const-string/jumbo v0, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED"

    return-object v0

    .line 319
    :sswitch_7
    const-string/jumbo v0, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED"

    return-object v0

    .line 320
    :sswitch_8
    const-string/jumbo v0, "MESSAGE_RESTART_BLUETOOTH_SERVICE"

    return-object v0

    .line 321
    :sswitch_9
    const-string/jumbo v0, "MESSAGE_BLUETOOTH_STATE_CHANGE"

    return-object v0

    .line 322
    :sswitch_a
    const-string/jumbo v0, "MESSAGE_TIMEOUT_BIND"

    return-object v0

    .line 323
    :sswitch_b
    const-string/jumbo v0, "MESSAGE_TIMEOUT_UNBIND"

    return-object v0

    .line 324
    :sswitch_c
    const-string/jumbo v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    return-object v0

    .line 325
    :sswitch_d
    const-string/jumbo v0, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    return-object v0

    .line 326
    :sswitch_e
    const-string/jumbo v0, "MESSAGE_USER_SWITCHED"

    return-object v0

    .line 327
    :sswitch_f
    const-string/jumbo v0, "MESSAGE_USER_UNLOCKED"

    return-object v0

    .line 328
    :sswitch_10
    const-string/jumbo v0, "MESSAGE_ADD_PROXY_DELAYED"

    return-object v0

    .line 329
    :sswitch_11
    const-string/jumbo v0, "MESSAGE_BIND_PROFILE_SERVICE"

    return-object v0

    .line 330
    :sswitch_12
    const-string/jumbo v0, "MESSAGE_CHINA_BT_ENABLE_SECURITY_POPUP"

    return-object v0

    .line 331
    :sswitch_13
    const-string/jumbo v0, "MESSAGE_BT_ENABLE_BLOCK"

    return-object v0

    .line 332
    :sswitch_14
    const-string/jumbo v0, "MESSAGE_GOOGLE_BLE_STATE_CHANGE"

    return-object v0

    .line 333
    :sswitch_15
    const-string/jumbo v0, "MESSAGE_SAMSUNG_BLE_STATE_CHANGE"

    return-object v0

    .line 334
    :sswitch_16
    const-string/jumbo v0, "MESSAGE_REGISTER_STATE_DISBLE_BLE_CALLBACK"

    return-object v0

    .line 335
    :sswitch_17
    const-string/jumbo v0, "MESSAGE_UNREGISTER_STATE_DISBLE_BLE_CALLBACK"

    return-object v0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x1e -> :sswitch_4
        0x1f -> :sswitch_5
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x3c -> :sswitch_9
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0xc8 -> :sswitch_c
        0xc9 -> :sswitch_d
        0x12c -> :sswitch_e
        0x12d -> :sswitch_f
        0x190 -> :sswitch_10
        0x191 -> :sswitch_11
        0x2bc -> :sswitch_12
        0x2bd -> :sswitch_13
        0x2be -> :sswitch_14
        0x2bf -> :sswitch_15
        0x3fa -> :sswitch_16
        0x3fb -> :sswitch_17
    .end sparse-switch
.end method

.method private disableBleScanMode()V
    .locals 3

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 916
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 917
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Reseting the mEnable flag for clean disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 913
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 922
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 922
    throw v1
.end method

.method private enablePopupForBluetooth()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 3140
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "enablePopupForBluetooth"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3142
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    .line 3145
    :cond_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 3146
    .local v2, "mStatusBar":Landroid/app/StatusBarManager;
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3147
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    .line 3148
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 3149
    :cond_1
    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 3162
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3164
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x4

    .line 3166
    .local v4, "theme":I
    const/4 v4, 0x5

    .line 3168
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3169
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040820

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3168
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3170
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040823

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x1040822

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3168
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3171
    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3168
    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3172
    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3168
    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3174
    new-instance v6, Lcom/android/server/BluetoothManagerService$5;

    invoke-direct {v6, p0, v0}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V

    .line 3168
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 3200
    new-instance v6, Lcom/android/server/BluetoothManagerService$6;

    invoke-direct {v6, p0}, Lcom/android/server/BluetoothManagerService$6;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 3168
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    .line 3209
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3210
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 3215
    :goto_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 3216
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 3217
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3139
    return-void

    .line 3213
    :cond_2
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private static getStrVer(I)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # I

    .prologue
    .line 235
    packed-switch p0, :pswitch_data_0

    .line 247
    const-string/jumbo v0, "0"

    return-object v0

    .line 236
    :pswitch_0
    const-string/jumbo v0, "1.0"

    return-object v0

    .line 237
    :pswitch_1
    const-string/jumbo v0, "1.1"

    return-object v0

    .line 238
    :pswitch_2
    const-string/jumbo v0, "1.2"

    return-object v0

    .line 239
    :pswitch_3
    const-string/jumbo v0, "2.0"

    return-object v0

    .line 240
    :pswitch_4
    const-string/jumbo v0, "2.1"

    return-object v0

    .line 241
    :pswitch_5
    const-string/jumbo v0, "3.0"

    return-object v0

    .line 242
    :pswitch_6
    const-string/jumbo v0, "4.0"

    return-object v0

    .line 243
    :pswitch_7
    const-string/jumbo v0, "4.1"

    return-object v0

    .line 244
    :pswitch_8
    const-string/jumbo v0, "4.2"

    return-object v0

    .line 245
    :pswitch_9
    const-string/jumbo v0, "5.0"

    return-object v0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    .line 2626
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2630
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 2631
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Sending off request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2633
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "IBluetooth.disable() returned false"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2624
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    .line 2637
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to call disable()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2639
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 2638
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 2639
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2638
    throw v1
.end method

.method private handleEnable(Z)V
    .locals 6
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2572
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2573
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2576
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2577
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-eqz v3, :cond_2

    .line 2588
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2591
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v3, :cond_5

    .line 2592
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2593
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "IBluetooth.enable() returned false"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2610
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2571
    return-void

    .line 2579
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2580
    .local v2, "timeoutMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2581
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2582
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 2583
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2582
    const/16 v5, 0x41

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2584
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2609
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    .line 2610
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2609
    throw v3

    .line 2586
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2595
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2605
    :catch_0
    move-exception v0

    .line 2606
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to call enable()"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2600
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2602
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 593
    const-string/jumbo v3, "airplane_mode_on"

    .line 592
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 600
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 601
    const-string/jumbo v2, "bluetooth_on"

    .line 600
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 609
    const-string/jumbo v3, "bluetooth_on"

    .line 608
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCustomizedByKccAgent()Z
    .locals 2

    .prologue
    .line 3134
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.sec.knox.kccagent/shared_prefs/customized.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3135
    .local v0, "kccAgentSharedPref":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxBluetoothEnabled(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2645
    const/4 v4, 0x0

    .line 2646
    .local v4, "isBtEnabled":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 2648
    .local v3, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 2650
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v1, :cond_0

    .line 2651
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 2652
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2657
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "isBtEnabled":Z
    :cond_0
    :goto_0
    const-string/jumbo v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    return v4

    .line 2654
    .restart local v4    # "isBtEnabled":Z
    :catch_0
    move-exception v2

    .line 2655
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 628
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadStoredNameAndAddress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    const v1, 0x1120059

    .line 637
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_addr_valid"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 641
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 646
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_3
    return-void
.end method

.method private onBluetoothGattServiceUp()V
    .locals 3

    .prologue
    .line 1182
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "BluetoothGatt Service is Up"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1185
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    .line 1186
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1188
    return-void

    .line 1190
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1181
    :goto_1
    return-void

    .line 1192
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 1195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to call onServiceUp"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1201
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 1200
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1201
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1200
    throw v1
.end method

.method private persistBluetoothSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    const-string/jumbo v1, "bluetooth_on"

    .line 617
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .locals 6

    .prologue
    .line 2981
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2984
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    .line 2986
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2994
    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 3003
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 3006
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3007
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 3008
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 3010
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3012
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3014
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3017
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3018
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 3020
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 3022
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 3024
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 3025
    const/16 v3, 0x2a

    .line 3024
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3026
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2980
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    .line 2988
    :catch_0
    move-exception v0

    .line 2989
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to unregister"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2991
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 2990
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 2991
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2990
    throw v2

    .line 3013
    :catchall_1
    move-exception v2

    .line 3014
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3013
    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 342
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 344
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "airplane_mode_radios"

    .line 343
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string/jumbo v4, "airplane_mode_toggleable_radios"

    .line 345
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 349
    .local v1, "mIsAirplaneSensitive":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 350
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void

    .line 348
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1
    const-string/jumbo v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    .prologue
    .line 863
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 907
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 908
    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 909
    const/4 v3, 0x0

    .line 907
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 862
    return-void
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    .line 3427
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "BMS.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3431
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 3432
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    .line 3433
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "BMS.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    return-void

    .line 3437
    :cond_0
    new-instance v3, Lcom/android/server/BluetoothManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$7;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3425
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .line 3452
    :catch_0
    move-exception v1

    .line 3453
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothManagerService"

    .line 3454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3453
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private restrictedByKnoxPolicy()Z
    .locals 4

    .prologue
    .line 3118
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3119
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3120
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 3121
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3122
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enable(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const/4 v1, 0x1

    return v1

    .line 3128
    .end local v0    # "callingUser":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private restrictedByMdmPolicy()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3090
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3091
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 3092
    .local v8, "isBluetoothEnabled":Z
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3093
    const-string/jumbo v3, "isBluetoothEnabled"

    move-object v4, v2

    move-object v5, v2

    .line 3092
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3094
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3096
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3098
    const-string/jumbo v0, "isBluetoothEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 3102
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3106
    :cond_0
    :goto_1
    if-nez v8, :cond_2

    .line 3107
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v2, "MDM: BT is Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const/4 v0, 0x1

    return v0

    .line 3098
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 3099
    :catch_0
    move-exception v7

    .line 3100
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3101
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 3102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3101
    throw v0

    .line 3111
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2705
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2708
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2709
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2710
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2711
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2704
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    .prologue
    .line 1861
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Calling onBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1864
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1867
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1872
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1873
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1872
    throw v3

    .line 1873
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1860
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    .prologue
    .line 1842
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Calling onBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1845
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1848
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1853
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1854
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1853
    throw v3

    .line 1854
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1841
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    .prologue
    .line 1805
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1806
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1809
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1807
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1814
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1815
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1814
    throw v3

    .line 1815
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1803
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1210
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_1

    .line 1213
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Bluetooth handle is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void

    .line 1217
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1219
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1220
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1209
    :cond_4
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1223
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1224
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1223
    throw v1

    .line 1226
    :cond_5
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1227
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1233
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    goto :goto_0

    .line 1230
    :catch_1
    move-exception v0

    .line 1231
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration fails"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendDisableMsg()V
    .locals 3

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2970
    return-void
.end method

.method private sendEnableMsg(Z)V
    .locals 5
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2975
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2976
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 2977
    if-eqz p1, :cond_0

    move v0, v1

    .line 2976
    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2974
    return-void

    :cond_0
    move v0, v2

    .line 2977
    goto :goto_0
.end method

.method private sendSamsungBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2715
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Samsung BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2718
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2719
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2720
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2721
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2714
    return-void
.end method

.method private setBdroidVersion()V
    .locals 5

    .prologue
    .line 569
    const-string/jumbo v1, "8"

    .line 570
    .local v1, "verStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, "verInt":I
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBdroidVersion, Int version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    const-string/jumbo v2, "persist.service.bdroid.version"

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->getStrVer(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private setBleAutoEnable()V
    .locals 4

    .prologue
    .line 580
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_BLUETOOTH_ENABLE_AUTO_LE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 581
    .local v0, "flag":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBleAutoEnable, flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    if-eqz v0, :cond_1

    .line 584
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    .line 579
    :cond_1
    return-void
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 656
    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 659
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    if-eqz p2, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 666
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 671
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    .prologue
    .line 1567
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 1568
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1569
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1567
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1572
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1577
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1566
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .locals 6
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 2907
    const/4 v1, 0x0

    .line 2908
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    .line 2910
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2911
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2932
    :cond_0
    :goto_1
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const/4 v2, 0x0

    return v2

    .line 2912
    :cond_1
    if-eqz p1, :cond_2

    .line 2913
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2913
    return v4

    .line 2914
    :cond_2
    if-eqz p2, :cond_3

    .line 2915
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 2923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2915
    return v4

    .line 2917
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eq v2, v5, :cond_4

    .line 2923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2917
    return v4

    .line 2923
    :cond_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2925
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 2926
    :cond_5
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2930
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2919
    :catch_0
    move-exception v0

    .line 2920
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 2922
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 2923
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2922
    throw v2

    .line 2928
    :cond_6
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2
.end method

.method private waitForOnOffBle(ZZ)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x1

    .line 2942
    const/4 v1, 0x0

    .line 2943
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    .line 2944
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2946
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_1
    monitor-exit v3

    .line 2966
    :cond_0
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOffBle time out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    const/4 v2, 0x0

    return v2

    .line 2947
    :cond_1
    if-eqz p1, :cond_2

    .line 2948
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v6, :cond_4

    monitor-exit v3

    return v5

    .line 2949
    :cond_2
    if-eqz p2, :cond_3

    .line 2950
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_4

    monitor-exit v3

    return v5

    .line 2952
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eq v2, v6, :cond_4

    monitor-exit v3

    return v5

    .line 2954
    :catch_0
    move-exception v0

    .line 2955
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2944
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    monitor-exit v3

    .line 2959
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 2960
    :cond_5
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2964
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2962
    :cond_6
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 9
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1519
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v3, :cond_1

    .line 1520
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    .line 1521
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to bind to profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1522
    const-string/jumbo v5, ", while Bluetooth was disabled"

    .line 1521
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_0
    return v7

    .line 1526
    :cond_1
    if-nez p2, :cond_2

    return v7

    .line 1528
    :cond_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v4

    .line 1529
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1530
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_6

    .line 1531
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_3

    .line 1532
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    :cond_3
    if-eq p1, v8, :cond_4

    monitor-exit v4

    return v7

    .line 1538
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 1540
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    monitor-exit v4

    return v7

    .line 1542
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    monitor-exit v4

    .line 1547
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1548
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1549
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1550
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1551
    return v8

    .line 1528
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disable(Z)Z
    .locals 12
    .param p1, "persist"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1408
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 1409
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    .line 1408
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1417
    :cond_0
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 1418
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable(): mBluetooth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1419
    const-string/jumbo v4, " mBinding = "

    .line 1418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1419
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_1
    const/4 v10, 0x0

    .line 1424
    .local v10, "isBtEnabled":Z
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 1426
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .end local v10    # "isBtEnabled":Z
    :goto_0
    monitor-exit v1

    .line 1432
    if-nez v10, :cond_4

    .line 1433
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "Bluetooth is already disabled. DO NOT disable again."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return v11

    .line 1413
    :cond_2
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "disable(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return v2

    .restart local v10    # "isBtEnabled":Z
    :cond_3
    move v10, v2

    .line 1426
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v7

    .line 1428
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "isEnabled()"

    invoke-static {v3, v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1424
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1437
    .end local v10    # "isBtEnabled":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1438
    if-eqz p1, :cond_5

    .line 1440
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1441
    .local v8, "callingIdentity":J
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1442
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    .end local v8    # "callingIdentity":J
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1445
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v4, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 1446
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 1448
    :cond_6
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v3, :cond_7

    .line 1449
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1451
    :cond_7
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1456
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1457
    const-string/jumbo v5, "Disabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    .line 1455
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1460
    return v11

    .line 1437
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    .line 2615
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2616
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2617
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2621
    const/4 v1, 0x1

    return v1

    .line 2618
    :cond_0
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    return v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3463
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    const-string/jumbo v4, "BluetoothManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    const-string/jumbo v2, "Bluetooth Status"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  airplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3473
    const/4 v0, 0x0

    .line 3474
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 3475
    const-string/jumbo v0, "Bluetooth Service not connected"

    .line 3483
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 3485
    array-length v2, p3

    if-lez v2, :cond_1

    aget-object v2, p3, v5

    const-string/jumbo v3, "--proto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3486
    return-void

    .line 3478
    .restart local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    invoke-interface {v2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3479
    :catch_0
    move-exception v1

    .line 3480
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "RemoteException while calling Bluetooth Service"

    .local v0, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 3487
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3491
    :cond_2
    const-string/jumbo v2, "---------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    sget-object v2, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    :cond_3
    sget-object v2, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v2, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3494
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3462
    return-void
.end method

.method public dumpInFile()V
    .locals 8

    .prologue
    .line 3367
    const/4 v2, 0x0

    .line 3368
    .local v2, "mainFoutS":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 3369
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "dumpInFile start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 3372
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 3373
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 3375
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3376
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 3379
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3380
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "dumpInFile delete main file"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 3383
    :cond_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3384
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "dumpInFile delete sub file"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 3388
    :cond_2
    sget-object v6, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 3389
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 3390
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3391
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v3, "mainFoutS":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "dumpInFile write main file"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    sget-object v6, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 3394
    .end local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_2
    sget-object v6, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 3395
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 3396
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3397
    .local v5, "subFoutS":Ljava/io/FileOutputStream;
    :try_start_3
    const-string/jumbo v6, "BluetoothManagerService"

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    const-string/jumbo v7, "dumpInFile write sub file"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v5

    .line 3408
    .end local v5    # "subFoutS":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 3409
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3410
    :cond_5
    if-eqz v4, :cond_6

    .line 3411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 3416
    :cond_6
    :goto_0
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "dumpInFile end"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    return-void

    .line 3403
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 3404
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3408
    if-eqz v2, :cond_7

    .line 3409
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3410
    :cond_7
    if-eqz v4, :cond_8

    .line 3411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3405
    :cond_8
    :goto_2
    return-void

    .line 3400
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3401
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3408
    if-eqz v2, :cond_9

    .line 3409
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3410
    :cond_9
    if-eqz v4, :cond_a

    .line 3411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 3402
    :cond_a
    :goto_4
    return-void

    .line 3406
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 3408
    :goto_5
    if-eqz v2, :cond_b

    .line 3409
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3410
    :cond_b
    if-eqz v4, :cond_c

    .line 3411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 3406
    :cond_c
    :goto_6
    throw v6

    .line 3412
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 3406
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v2, "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v5    # "subFoutS":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 3412
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 3400
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v5    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3412
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 3403
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    move-object v2, v3

    .end local v3    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v5    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    move-object v4, v5

    .end local v5    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 3412
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public enable()Z
    .locals 12

    .prologue
    const/4 v0, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1274
    const-string/jumbo v1, "BluetoothManagerService -- enable() BT ManagerService enable called "

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1283
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "Enabling BT is restriced by policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return v5

    .line 1277
    :cond_1
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "enable(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string/jumbo v0, "BluetoothManagerService -- enable(): not allowed for non-active and non system user"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1279
    return v5

    .line 1287
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1288
    .local v10, "callingIdentity":J
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1289
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 1292
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permission"

    .line 1291
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_3

    .line 1294
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1295
    const-string/jumbo v4, " mBinding = "

    .line 1294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1295
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1295
    const-string/jumbo v4, " mState = "

    .line 1294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1295
    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1299
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1300
    .local v8, "ChinaNalSecurityType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "bluetooth_security_on_check"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1302
    .local v9, "isChecked":I
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable(): enable PopUp for Bluetooth isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string/jumbo v1, "ChinaNalSecurity"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v9, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isUserAction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1305
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    if-nez v1, :cond_4

    .line 1306
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1307
    .local v7, "BtSecurityPopupMsg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1308
    return v2

    .line 1311
    .end local v7    # "BtSecurityPopupMsg":Landroid/os/Message;
    :cond_4
    sput-boolean v5, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    .line 1316
    .end local v8    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v9    # "isChecked":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1318
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1320
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1322
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v3, "enable returning"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1327
    const-string/jumbo v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    .line 1325
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1329
    return v2

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableBle()Z
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1334
    const-string/jumbo v1, "BluetoothManagerService -- enableBle() BT ManagerService enableBle called "

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 1337
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 1344
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permission"

    .line 1343
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 1346
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableBle():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1347
    const-string/jumbo v4, " mBinding = "

    .line 1346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1347
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1347
    const-string/jumbo v4, " mState = "

    .line 1346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1347
    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1354
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1356
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v3, "enableBle returning"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1361
    const-string/jumbo v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    .line 1359
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1363
    return v2

    .line 1338
    :cond_3
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "enableBle(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string/jumbo v0, "BluetoothManagerService -- enableBle(): not allowed for non-active and non system user"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1340
    return v4

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableNoAutoConnect()Z
    .locals 8

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 1239
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    .line 1240
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permission"

    .line 1239
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 1243
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1244
    const-string/jumbo v4, " mBinding = "

    .line 1243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1244
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 1248
    .local v7, "callingAppId":I
    const/16 v1, 0x403

    if-eq v7, v1, :cond_1

    .line 1249
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to enable Bluetooth quietly"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1253
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "Enabling BT is restriced by policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v0, 0x0

    return v0

    .line 1257
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1259
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1260
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1265
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1266
    const-string/jumbo v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    .line 1264
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1269
    return v2

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1878
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 1879
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 1878
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1882
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1889
    const-string/jumbo v1, "02:00:00:00:00:00"

    return-object v1

    .line 1883
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return-object v4

    .line 1893
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1894
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1898
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1894
    return-object v1

    .line 1898
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1904
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v1

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1898
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1897
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1898
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1897
    throw v1
.end method

.method public getBleAppCount()I
    .locals 3

    .prologue
    .line 1160
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1165
    :cond_1
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0

    .line 1162
    :cond_2
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_3
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 4

    .prologue
    .line 1502
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1504
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 1505
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1506
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBluetoothGatt(): Bluetooth for this container is disabled! - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v1, 0x0

    return-object v1

    .line 1513
    .end local v0    # "callingUser":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1908
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 1909
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 1908
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1912
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1918
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1919
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1919
    return-object v1

    .line 1913
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    return-object v4

    .line 1923
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1929
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v1

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1922
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1923
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1922
    throw v1
.end method

.method public getSamsungBleAppCount()I
    .locals 3

    .prologue
    .line 1170
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    :cond_1
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0

    .line 1172
    :cond_2
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_3
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSettingsName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1933
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    .line 1934
    const-string/jumbo v4, "Need BLUETOOTH permission"

    .line 1933
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 1937
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1941
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1942
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "localName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1944
    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    :cond_1
    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings Name is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return-object v0

    .line 1938
    .end local v0    # "localName":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "getName(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return-object v5
.end method

.method public handleOnBootPhase()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1586
    const-string/jumbo v2, "ro.build.PDA"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "version_name":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bluetooth boot completed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothManagerService -- ===== BOOT_COMPLETED ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1589
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothManagerServiceUnknown mBleAppCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1591
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1592
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Auto-enabling Bluetooth."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_2
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v2, :cond_3

    .line 1594
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1595
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1596
    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 1597
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1600
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 1603
    :cond_4
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1605
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Getting adapter name and address"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_5
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1607
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1585
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_6
    :goto_0
    return-void

    .line 1608
    :cond_7
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v2, :cond_6

    .line 1609
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1610
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "BLE Always On"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_8
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1612
    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 1613
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1614
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 1616
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 1614
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public handleOnSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1626
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " switched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BluetoothManagerService -- Bluetooth user switched. userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1625
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1635
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unlocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1634
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1153
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBleAppPresent() count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 854
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 855
    const-string/jumbo v3, "ble_scan_always_enabled"

    .line 854
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 782
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 786
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 782
    return v1

    .line 776
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v3

    .line 786
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 788
    :goto_0
    return v3

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "isEnabled()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 786
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 785
    throw v1
.end method

.method public isRestrictedBtPolicy()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3037
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->restrictedByKnoxPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 3039
    :cond_1
    return v1
.end method

.method public isUserAction()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 3221
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3222
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3224
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 3225
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3227
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3228
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v8, "com.android.systemui"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3229
    const-string/jumbo v8, "com.android.settings"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 3228
    if-nez v8, :cond_2

    .line 3230
    const-string/jumbo v8, "com.sec.android.easysettings"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 3228
    if-nez v8, :cond_2

    .line 3231
    const-string/jumbo v8, "com.sec.android.emergencymode.service"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 3228
    if-nez v8, :cond_2

    .line 3232
    const-string/jumbo v8, "com.samsung.android.app.sreminder"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 3228
    if-nez v8, :cond_2

    .line 3233
    const-string/jumbo v8, "com.sec.knox.kccagent"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isCustomizedByKccAgent()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3243
    :cond_1
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 3245
    :try_start_0
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 3246
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v5, v8, v7

    .line 3247
    .local v5, "mPackageList":Ljava/lang/String;
    const/16 v10, 0x80

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3248
    const-string/jumbo v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3246
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3234
    .end local v5    # "mPackageList":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 3236
    const-string/jumbo v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "info pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",  getCallingPid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3238
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->cancel()V

    .line 3240
    :cond_3
    return v7

    .line 3251
    :cond_4
    :try_start_1
    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3252
    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "appName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3258
    :cond_5
    :goto_1
    return v13

    .line 3254
    :catch_0
    move-exception v1

    .line 3255
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3256
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 3262
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    return v13
.end method

.method public putLogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 3281
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    .line 3282
    const-string/jumbo v4, "Need BLUETOOTH permission"

    .line 3281
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 3285
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3290
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/BluetoothManagerService;->limit:I

    if-le v2, v3, :cond_1

    .line 3291
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "buffer limit reached"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->bufferLimitReached()Z

    move-result v1

    .line 3296
    :cond_1
    sget-object v2, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3279
    :goto_0
    return-void

    .line 3286
    :cond_2
    return-void

    .line 3297
    :catch_0
    move-exception v0

    .line 3298
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "btsvc manager.putSlogs"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readFile(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "FinS"    # Ljava/io/FileInputStream;

    .prologue
    .line 3348
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3349
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3351
    .local v0, "bReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3354
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "read":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3355
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3356
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3358
    .end local v3    # "read":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3359
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3362
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public readFromFile()V
    .locals 10

    .prologue
    .line 3313
    const/4 v2, 0x0

    .line 3314
    .local v2, "mainFinS":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3316
    .local v5, "subFinS":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 3317
    .local v1, "mainB":[B
    const/4 v4, 0x0

    .line 3318
    .local v4, "subB":[B
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "readFromFile start"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 3321
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 3322
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 3324
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3325
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 3328
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3329
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3330
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .local v3, "mainFinS":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile main: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 3332
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 3334
    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3335
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3336
    .local v6, "subFinS":Ljava/io/FileInputStream;
    :try_start_3
    const-string/jumbo v7, "BluetoothManagerService"

    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile sub: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 3338
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 3312
    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    :cond_2
    return-void

    .line 3340
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 3341
    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3342
    return-void

    .line 3340
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .local v2, "mainFinS":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .restart local v6    # "subFinS":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .local v5, "subFinS":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    const/4 v3, 0x0

    .line 676
    if-nez p1, :cond_0

    .line 677
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Callback is null in registerAdapter"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v3

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 684
    .local v0, "added":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 685
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAdapter added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method

.method public registerSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 741
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 740
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fc

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 743
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 744
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    return-void
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 706
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 705
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    return-void
.end method

.method public registerStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 723
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 722
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 725
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    return-void
.end method

.method public sendDisableBleCallback()V
    .locals 7

    .prologue
    .line 1821
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 1823
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1824
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcasting sendDisableBleCallback to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " receivers."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1827
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothDisableBleCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDisableBleCallback;->ondisableBLE()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1825
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1828
    :catch_0
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to call sendDisableBleCallback() on callback #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1832
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1833
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1832
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1821
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1833
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 1820
    return-void
.end method

.method public sendSinkServiceChangeCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    .prologue
    .line 759
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 760
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting sendSinkServiceChangeCallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 763
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;->onBluetoothServiceStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call sendSinkServiceChangeCallback() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 768
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 769
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 768
    throw v3

    .line 769
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 757
    return-void
.end method

.method public shutdown()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1369
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "shutDown()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_0
    const/16 v1, 0xa

    .line 1372
    .local v1, "st":I
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_3

    .line 1374
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1383
    :goto_0
    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 1386
    sput-boolean v5, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 1387
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1389
    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 1390
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "shutdown BLE disable()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_2

    .line 1393
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 1394
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1404
    :cond_2
    :goto_1
    return v5

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to call getState"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1379
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "shutdown mBluetooth is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return v4

    .line 1396
    :catch_1
    move-exception v0

    .line 1397
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to call onBrEdrDown"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1399
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 1400
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "shutdown BT disable()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    goto :goto_1
.end method

.method public unbindAndFinish()V
    .locals 4

    .prologue
    .line 1464
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 1465
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1466
    const-string/jumbo v3, " mBinding = "

    .line 1465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1466
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1471
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1471
    return-void

    .line 1472
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1473
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1474
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 1477
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1482
    :goto_0
    :try_start_3
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Sending unbind request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 1484
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1486
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1487
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1488
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1492
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1494
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1463
    return-void

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1493
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1494
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1493
    throw v1

    .line 1490
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1557
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v2

    .line 1558
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 1560
    return-void

    .line 1562
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1556
    return-void

    .line 1557
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Callback is null in unregisterAdapter"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 695
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 694
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 700
    .local v0, "removed":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 701
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAdapter removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_1
    return-void
.end method

.method public unregisterSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 750
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 749
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fd

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 752
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 714
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 713
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 716
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 717
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    return-void
.end method

.method public unregisterStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 732
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 731
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;Z)I
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x1

    .line 969
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v5

    .line 970
    .local v5, "prevRpaStop":Z
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    if-eqz v7, :cond_2

    .line 971
    :cond_0
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount Pass"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v7

    .line 974
    :cond_2
    if-eqz p2, :cond_10

    .line 975
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 976
    .local v6, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v6, :cond_5

    .line 977
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 979
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p1, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    monitor-enter p0

    .line 986
    :try_start_1
    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateBleAppCount #UP | mBleAppCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mSappCount"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Using SS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_8

    .line 988
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount on state"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :cond_3
    :goto_0
    :try_start_2
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1016
    :try_start_3
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v7

    if-ne v7, v11, :cond_4

    if-eqz v5, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    if-eqz v7, :cond_e

    .line 1025
    :cond_4
    :goto_1
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Registered for death Notification"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_5
    :goto_2
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Updated BleAppCount"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_6
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v7, :cond_7

    .line 1086
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 1088
    :cond_7
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v7

    .line 980
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v2

    .line 981
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Wake lock is already dead."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 989
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_8
    :try_start_4
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v7, :cond_a

    .line 990
    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_9

    .line 991
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1010
    :catch_1
    move-exception v1

    .line 1011
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Unable to call updateBleAppCount"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 984
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 993
    :cond_9
    const/4 v7, 0x1

    :try_start_6
    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_0

    .line 995
    :cond_a
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v7, v8

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_c

    .line 1001
    :cond_b
    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_d

    .line 1002
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2bf

    const/16 v9, 0xa

    const/16 v10, 0xe

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1003
    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1004
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2bf

    const/16 v9, 0xe

    const/16 v10, 0xf

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1005
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_0

    .line 996
    .end local v4    # "msg":Landroid/os/Message;
    :cond_c
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2be

    const/16 v9, 0xa

    const/16 v10, 0xe

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 997
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 998
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2be

    const/16 v9, 0xe

    const/16 v10, 0xf

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 999
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1000
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_0

    .line 1008
    .end local v4    # "msg":Landroid/os/Message;
    :cond_d
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount else case"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1018
    :cond_e
    :try_start_7
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "setRPAGeneration true"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_f
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 1020
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 1022
    :catch_2
    move-exception v2

    .line 1023
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "setRPAGeneration fails"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1029
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v6    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_10
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 1030
    .restart local v6    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v6, :cond_5

    .line 1033
    const/4 v7, 0x0

    :try_start_8
    invoke-interface {p1, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1037
    :goto_3
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_9
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-lez v7, :cond_12

    .line 1041
    :try_start_a
    const-string/jumbo v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateBleAppCount #DOWN | mBleAppCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mSappCount"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Using SS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_14

    .line 1043
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_11

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount on state : false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1068
    :cond_11
    :goto_4
    :try_start_b
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_12
    monitor-exit p0

    .line 1072
    :try_start_c
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    move-result v7

    if-ne v7, v11, :cond_13

    .line 1073
    if-eqz v5, :cond_1a

    .line 1081
    :cond_13
    :goto_5
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Unregistered for death Notification"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1034
    :catch_3
    move-exception v3

    .line 1035
    .local v3, "ex":Ljava/util/NoSuchElementException;
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "no such element, already unlinked"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1044
    .end local v3    # "ex":Ljava/util/NoSuchElementException;
    :cond_14
    :try_start_d
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-ne v7, v10, :cond_16

    .line 1045
    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_15

    .line 1046
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 1065
    :catch_4
    move-exception v1

    .line 1066
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "Unable to call updateBleAppCount"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    .line 1038
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1048
    :cond_15
    const/4 v7, 0x3

    :try_start_f
    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_4

    .line 1050
    :cond_16
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v7, v8

    if-ne v7, v10, :cond_17

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_18

    .line 1056
    :cond_17
    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-ne v7, v10, :cond_19

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v7, :cond_19

    .line 1057
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2bf

    const/16 v9, 0xf

    const/16 v10, 0x10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1058
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1059
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2bf

    const/16 v9, 0x10

    const/16 v10, 0xa

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1060
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_4

    .line 1051
    .end local v4    # "msg":Landroid/os/Message;
    :cond_18
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2be

    const/16 v9, 0xf

    const/16 v10, 0x10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1052
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1053
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x2be

    const/16 v9, 0x10

    const/16 v10, 0xa

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1054
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1055
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_4

    .line 1063
    .end local v4    # "msg":Landroid/os/Message;
    :cond_19
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_11

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount else:false case"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 1073
    :cond_1a
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v7

    .line 1072
    if-eqz v7, :cond_13

    .line 1074
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_1b

    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "setRPAGeneration false "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1b
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 1076
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_5

    .line 1078
    :catch_5
    move-exception v2

    .line 1079
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "BluetoothManagerService"

    const-string/jumbo v8, "setRPAGeneration fails"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public updateSBleAppCount(Landroid/os/IBinder;Z)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 928
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 929
    .local v1, "prevBleAppCount":I
    monitor-enter p0

    .line 930
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    .line 931
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;Z)I

    .line 932
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 935
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-ge v1, v3, :cond_2

    .line 936
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 937
    .local v2, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v2, :cond_0

    .line 938
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Updating Ble App count failed, return"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v3

    .line 929
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 942
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_0
    invoke-virtual {v2, p1, v4}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V

    .line 943
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    monitor-enter p0

    .line 945
    :try_start_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 947
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Registered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_1
    :goto_0
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v3

    .line 944
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 949
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_2
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-le v1, v3, :cond_1

    .line 950
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 951
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v2, :cond_1

    .line 954
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 958
    :goto_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    monitor-enter p0

    .line 960
    :try_start_3
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-lez v3, :cond_3

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    monitor-exit p0

    .line 962
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unregistered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "no such element, already unlinked"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 959
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    :catchall_2
    move-exception v3

    monitor-exit p0

    throw v3
.end method
