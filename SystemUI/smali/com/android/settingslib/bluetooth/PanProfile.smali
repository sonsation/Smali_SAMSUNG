.class public final Lcom/android/settingslib/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PanProfile$1;,
        Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field public static final PAN_ROLE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static V:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    .line 56
    new-instance v0, Lcom/android/settingslib/bluetooth/PanProfile$1;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/PanProfile$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/PanProfile;->PAN_ROLE:Ljava/util/HashSet;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 115
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 116
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PanProfile;Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;)V

    .line 118
    const/4 v2, 0x5

    .line 117
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 112
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 130
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v6, :cond_0

    return v9

    .line 132
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_2

    .line 136
    invoke-static {}, Lcom/android/settingslib/bluetooth/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 138
    .local v5, "toastContext":Landroid/content/Context;
    sget v6, Lcom/android/settingslib/R$string;->bluetooth_tethering_cannot_connect_while_connected_to_wifi:I

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 142
    .end local v5    # "toastContext":Landroid/content/Context;
    :goto_0
    return v9

    .line 140
    :cond_1
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$string;->bluetooth_tethering_cannot_connect_while_connected_to_wifi:I

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 146
    .local v4, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_3

    .line 147
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sink$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 148
    .local v2, "sink":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 152
    .end local v2    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "sink$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-nez v6, :cond_5

    .line 153
    sget-boolean v6, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 154
    const-string/jumbo v6, "PanProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    return v6

    .line 158
    :cond_5
    sget-boolean v6, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 159
    const-string/jumbo v6, "PanProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect :: Can\'t process connect, device("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is connecting already"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_6
    return v9
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 259
    sget-boolean v1, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    .line 262
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "PanProfile"

    const-string/jumbo v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 236
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_bluetooth_pan_network:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x5

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 254
    :cond_1
    return v2
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "role"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "PAN"

    return-object v0
.end method