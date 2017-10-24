.class public Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/wifi/WifiPolicy$1;,
        Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "192.168.1.100"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final ENGINE:Ljava/lang/String; = "engine"

.field private static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field private static final HC:Ljava/lang/String; = "a-zA-Z0-9\\_"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_ID:Ljava/lang/String; = "key_id"

.field private static final MAX_EAP_ID_LENGTH:I = 0xc8

.field private static final MAX_EAP_PW_LENGTH:I = 0xc8

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x40

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE1:Ljava/lang/String; = "phase1"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PREF_KEYSTORE:Ljava/lang/String; = "keystore://"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isAPSettingFromAdmin:Z

.field private static isBootCompleted:Z

.field private static isKnoxMode:Z

.field private static final mSecurityLevel:[Ljava/lang/String;

.field private static final sAcceptableSecurityLevels:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "adminUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    .line 185
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    .line 186
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 192
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "Open"

    aput-object v1, v0, v3

    const-string/jumbo v1, "WEP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "WPA/WPA2/FT PSK"

    aput-object v1, v0, v5

    const-string/jumbo v1, "802.1x EAP-LEAP"

    aput-object v1, v0, v6

    const-string/jumbo v1, "802.1x EAP-FAST"

    aput-object v1, v0, v7

    const-string/jumbo v1, "802.1x EAP-PEAP"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "802.1x EAP-TTLS"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-TLS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "FT-PSK"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-PEAP-FT"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "802.1x EAP-PEAP-CCKM"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "802.1x EAP-TTLS-FT"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-TTLS-CCKM"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-TLS-FT"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "802.1x EAP-TLS-CCKM"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-LEAP-FT"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-LEAP-CCKM"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "802.1x EAP-FAST-FT"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-FAST-CCKM"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "802.1x EAP-PWD"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-PWD-FT"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-PWD-CCKM"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "802.1x EAP-SIM"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-SIM-FT"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-SIM-CCKM"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "802.1x EAP-AKA"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-AKA-FT"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-AKA-CCKM"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "802.1x EAP-AKA\'"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-AKA\'-FT"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "802.1x EAP-AKA\'-CCKM"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 192
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 205
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "NONE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "WEP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "PSK"

    aput-object v1, v0, v5

    const-string/jumbo v1, "EAP-LEAP"

    aput-object v1, v0, v6

    const-string/jumbo v1, "EAP-FAST"

    aput-object v1, v0, v7

    const-string/jumbo v1, "EAP-PEAP"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-TTLS"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-TLS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "FT-PSK"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-PEAP-FT"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-PEAP-CCKM"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-TTLS-FT"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-TTLS-CCKM"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-TLS-FT"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "EAP-TLS-CCKM"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-LEAP-FT"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-LEAP-CCKM"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-FAST-FT"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-FAST-CCKM"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "EAP-PWD"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-PWD-FT"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-PWD-CCKM"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "EAP-SIM"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-SIM-FT"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-SIM-CCKM"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "EAP-AKA"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-AKA-FT"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-AKA-CCKM"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "EAP-AKA\'"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-AKA\'-FT"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP-AKA\'-CCKM"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 205
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 237
    const-string/jumbo v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;-><init>()V

    .line 177
    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 179
    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 374
    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4049
    new-instance v2, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 276
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 277
    const-string/jumbo v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 279
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    return v2

    .line 489
    :catchall_0
    move-exception v2

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw v2

    .line 493
    .end local v0    # "token":J
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3114
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 3116
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3117
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3118
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 3113
    :cond_0
    return-void
.end method

.method private alignConfiguredNetworks()V
    .locals 6

    .prologue
    .line 4959
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4961
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 4962
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4963
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "wc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4964
    .local v1, "wc":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4965
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 4967
    :cond_0
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    goto :goto_0

    .line 4971
    .end local v1    # "wc":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "wc$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4958
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "enableOthers"    # Z

    .prologue
    .line 4093
    sget-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_0

    .line 4094
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.ENABLE_NETWORK_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4095
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.NETID_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4096
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ENABLE_OTHERS_INTERNAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4097
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4092
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 7
    .param p1, "profile"    # Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1580
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1581
    .local v0, "security":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1582
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "Profile not set, security is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    return v4

    .line 1585
    :cond_0
    const-string/jumbo v1, "WifiPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiProfile - sec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 1590
    :cond_1
    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1591
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "PSK not set"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    return v4

    .line 1595
    :cond_2
    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1596
    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-lt v1, v5, :cond_3

    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-le v1, v6, :cond_4

    .line 1597
    :cond_3
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "WebKeyId invalid"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return v4

    .line 1600
    :cond_4
    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v1, v5, :cond_5

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1601
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "wepkey1 not set but index is set to 1"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    return v4

    .line 1604
    :cond_5
    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1605
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "wepkey2 not set but index is set to 2"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    return v4

    .line 1608
    :cond_6
    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1609
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "wepkey3 not set but index is set to 3"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    return v4

    .line 1612
    :cond_7
    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v1, v6, :cond_8

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1613
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "wepkey4 not set but index is set to 4"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    return v4

    .line 1619
    :cond_8
    return v5
.end method

.method private clearAuthConfigFromDb(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1873
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1874
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "WifiProxyAuthTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1872
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .locals 7
    .param p1, "mask"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    .line 4038
    const/4 v1, 0x0

    .line 4039
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-byte v0, v4, v3

    .line 4040
    .local v0, "b":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    .line 4041
    const/4 v6, 0x1

    shl-int/2addr v6, v2

    and-int/2addr v6, v0

    if-eqz v6, :cond_0

    .line 4042
    add-int/lit8 v1, v1, 0x1

    .line 4040
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4039
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4046
    .end local v0    # "b":B
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5578
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 5579
    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 5580
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5582
    .local v0, "buf":Ljava/lang/StringBuffer;
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 5583
    .local v1, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5586
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5588
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/samsung/android/knox/net/AuthConfig;

    .prologue
    .line 1850
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1851
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1852
    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string/jumbo v1, "host"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string/jumbo v1, "port"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1855
    const-string/jumbo v1, "username"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string/jumbo v1, "password"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    return-object v0
.end method

.method private convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5592
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5593
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 5594
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x22

    .line 3172
    if-nez p0, :cond_0

    .line 3173
    return-object v1

    .line 3175
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3176
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3177
    return-object p0

    .line 3179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 538
    .local v4, "token":J
    const/4 v2, -0x1

    .line 541
    .local v2, "networkId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 542
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_4

    .line 544
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "wifi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 545
    .local v3, "wifi":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "needSaveConfig":Z
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 549
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x1

    .line 552
    :cond_1
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 553
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 554
    const/4 v1, 0x1

    .line 556
    :cond_2
    if-eqz v1, :cond_3

    .line 557
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    .line 558
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 568
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1    # "needSaveConfig":Z
    .end local v3    # "wifi":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "wifi$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 569
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    throw v7

    .line 565
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 566
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    return v2
.end method

.method private createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "isCCM"    # Z
    .param p4, "storageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 502
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 503
    :cond_0
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "SSID is invalid or excedes maximum length 32"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-object v4

    .line 507
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 508
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez p4, :cond_4

    .line 509
    if-eqz p3, :cond_2

    .line 510
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "CCM configuration"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 518
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 519
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 521
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 523
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 527
    :cond_3
    return-object v0

    .line 514
    :cond_4
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "UCM configuration"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto :goto_0
.end method

.method private disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2985
    const/4 v0, 0x1

    .line 2986
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 2987
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 2988
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 2990
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 2991
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2993
    .end local v0    # "ret":Z
    :cond_1
    return v0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2998
    .local v0, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2999
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3000
    .local v2, "wifi":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 3001
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    return v3

    .line 3004
    .end local v2    # "wifi":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3005
    const/4 v3, 0x1

    return v3
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 17
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "adminUid"    # I

    .prologue
    .line 3361
    const-string/jumbo v14, "WifiPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "edmAddOrUpdateTask - updating network "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 3365
    .local v3, "enterprise":Landroid/net/wifi/WifiConfiguration;
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 3366
    return-void

    .line 3367
    :cond_0
    sget-object v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3368
    .local v12, "security":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 3369
    return-void

    .line 3370
    :cond_1
    const-string/jumbo v14, "WEP"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3371
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3372
    .local v6, "index":I
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_2

    .line 3373
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v14, v6

    .line 3374
    if-eqz v6, :cond_2

    .line 3375
    move-object/from16 v0, p1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3376
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v14, v6

    .line 3377
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 3409
    .end local v6    # "index":I
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    .line 3410
    .local v7, "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    new-instance v13, Landroid/net/StaticIpConfiguration;

    invoke-direct {v13}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 3411
    .local v13, "staticIpconfig":Landroid/net/StaticIpConfiguration;
    const/4 v4, 0x0

    .line 3413
    .local v4, "finalProxy":Landroid/net/ProxyInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v11

    .line 3414
    .local v11, "proxyBkp":Landroid/net/ProxyInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v14, v15, :cond_b

    .line 3415
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    .line 3425
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v14, v15, :cond_3

    .line 3426
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_c

    .line 3427
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    .line 3431
    .end local v4    # "finalProxy":Landroid/net/ProxyInfo;
    :cond_4
    :goto_2
    new-instance v14, Landroid/net/IpConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v15

    invoke-direct {v14, v7, v15, v13, v4}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v14}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3433
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 3440
    sget-object v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3441
    .local v2, "configSecurity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string/jumbo v14, "Open"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 3442
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_d

    .line 3443
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v14, v14, v5

    if-eqz v14, :cond_5

    .line 3444
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v15, ""

    aput-object v15, v14, v5

    .line 3442
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3380
    .end local v2    # "configSecurity":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "proxyBkp":Landroid/net/ProxyInfo;
    .end local v13    # "staticIpconfig":Landroid/net/StaticIpConfiguration;
    :cond_6
    const-string/jumbo v14, "WPA/WPA2/FT PSK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3382
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "*"

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3383
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 3385
    :cond_7
    const-string/jumbo v14, "802.1x EAP"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3386
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    .line 3388
    .local v8, "newConfigEAP":I
    if-eqz v8, :cond_8

    .line 3389
    const/4 v14, 0x2

    if-ne v14, v8, :cond_a

    .line 3395
    :cond_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v10

    .line 3397
    .local v10, "passwordBkp":Ljava/lang/String;
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3398
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3399
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 3401
    .local v9, "newPassword":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "*"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3402
    :cond_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3390
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "passwordBkp":Ljava/lang/String;
    :cond_a
    const/16 v14, 0x13

    if-eq v14, v8, :cond_8

    .line 3391
    const/16 v14, 0x12

    if-eq v14, v8, :cond_8

    .line 3392
    const/4 v14, 0x3

    if-eq v14, v8, :cond_8

    .line 3405
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto/16 :goto_0

    .line 3421
    .end local v8    # "newConfigEAP":I
    .restart local v4    # "finalProxy":Landroid/net/ProxyInfo;
    .restart local v7    # "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11    # "proxyBkp":Landroid/net/ProxyInfo;
    .restart local v13    # "staticIpconfig":Landroid/net/StaticIpConfiguration;
    :cond_b
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    goto/16 :goto_1

    .line 3428
    :cond_c
    if-eqz v11, :cond_4

    .line 3429
    move-object v4, v11

    .local v4, "finalProxy":Landroid/net/ProxyInfo;
    goto/16 :goto_2

    .line 3360
    .end local v4    # "finalProxy":Landroid/net/ProxyInfo;
    .restart local v2    # "configSecurity":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4975
    const/4 v0, 0x1

    .line 4976
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4978
    .local v2, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4981
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4982
    return v0

    .line 4979
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2283
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2284
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return v0

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "WIFI_CONF"

    .line 2287
    const-string/jumbo v2, "networkSSID"

    .line 2286
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_WIFI"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 451
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 450
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemProcess()V
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    return-void
.end method

.method private enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string/jumbo v3, "WifiPolicyService"

    const-string/jumbo v4, "enforceUCMPermission"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    .line 424
    .local v1, "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v1, :cond_0

    .line 425
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 426
    .local v0, "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 428
    const/4 v2, 0x1

    .line 434
    .end local v0    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_0
    if-nez v2, :cond_1

    .line 435
    const-string/jumbo v3, "WifiPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not able to find credential storage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v1    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_1
    :goto_1
    return v2

    .line 425
    .restart local v0    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_3
    const-string/jumbo v3, "WifiPolicyService"

    const-string/jumbo v4, "Couldn\'t enforce UCM permission. Is UCM service running?"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_WIFI"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 412
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 411
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 469
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 470
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_INFO"

    .line 471
    const-string/jumbo v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, "adminUid":I
    if-eq v0, v1, :cond_0

    .line 473
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    const-string/jumbo v4, " callingUid="

    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_0
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3070
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "WIFI"

    .line 3071
    const-string/jumbo v7, "blockedSSIDList"

    .line 3070
    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3072
    .local v4, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3074
    .local v3, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "list$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3075
    .local v1, "list":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3076
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3077
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3080
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "list":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3471
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "networkLastSSID"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3472
    .local v1, "list":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3473
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3474
    .local v0, "lastSSIDs":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 3475
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3474
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3478
    .end local v0    # "lastSSIDs":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3451
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 3452
    const-string/jumbo v4, "adminUid"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "networkSSID"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 3454
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3456
    .local v1, "cv":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3457
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3458
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 3459
    const-string/jumbo v6, "networkSSID"

    .line 3458
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3461
    :cond_0
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "WIFI_CONF"

    .line 3466
    const-string/jumbo v2, "networkSSID"

    .line 3465
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAllNetworkSSIDforKNOX()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 5559
    const-string/jumbo v6, ""

    .line 5560
    .local v6, "var":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5561
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v7, "WifiPolicyService"

    const-string/jumbo v9, "getAllNetworkSSIDforKNOX"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5562
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 5563
    const-string/jumbo v7, "wifiSSIDforKNOX"

    aput-object v7, v5, v8

    .line 5565
    .local v5, "ret":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5566
    const-string/jumbo v9, "ContainerOnly_wifiAP"

    .line 5565
    invoke-virtual {v7, v9, v10, v10, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5567
    .local v3, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 5568
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v9, "wifiSSIDforKNOX"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5569
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5570
    .local v1, "array":[Ljava/lang/String;
    array-length v9, v1

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v2, v1, v7

    .line 5571
    .local v2, "aux":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5570
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5567
    .end local v2    # "aux":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5574
    .end local v1    # "array":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    .line 385
    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1879
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1882
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    const/4 v11, 0x4

    new-array v7, v11, [Ljava/lang/String;

    .line 1883
    const-string/jumbo v11, "host"

    const/4 v12, 0x0

    aput-object v11, v7, v12

    .line 1884
    const-string/jumbo v11, "port"

    const/4 v12, 0x1

    aput-object v11, v7, v12

    .line 1885
    const-string/jumbo v11, "username"

    const/4 v12, 0x2

    aput-object v11, v7, v12

    .line 1886
    const-string/jumbo v11, "password"

    const/4 v12, 0x3

    aput-object v11, v7, v12

    .line 1889
    .local v7, "returnColumns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1890
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "networkSSID"

    invoke-virtual {v8, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object v11, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1893
    const-string/jumbo v12, "WifiProxyAuthTable"

    .line 1892
    invoke-virtual {v11, v12, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 1895
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v10, :cond_0

    .line 1896
    return-object v6

    .line 1899
    :cond_0
    const/4 v3, 0x0

    .local v3, "hostDatabase":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "userDatabase":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1900
    .local v4, "passDatabase":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1902
    .local v5, "portDatabase":Ljava/lang/Integer;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "hostDatabase":Ljava/lang/String;
    .end local v4    # "passDatabase":Ljava/lang/String;
    .end local v5    # "portDatabase":Ljava/lang/Integer;
    .end local v9    # "userDatabase":Ljava/lang/String;
    .local v2, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1903
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "host"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1904
    .local v3, "hostDatabase":Ljava/lang/String;
    const-string/jumbo v11, "port"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1905
    .local v5, "portDatabase":Ljava/lang/Integer;
    const-string/jumbo v11, "username"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1906
    .local v9, "userDatabase":Ljava/lang/String;
    const-string/jumbo v11, "password"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1908
    .local v4, "passDatabase":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v0, v3, v11, v9, v4}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1910
    .local v0, "config":Lcom/samsung/android/knox/net/AuthConfig;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1912
    .end local v0    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "hostDatabase":Ljava/lang/String;
    .end local v4    # "passDatabase":Ljava/lang/String;
    .end local v5    # "portDatabase":Ljava/lang/Integer;
    .end local v9    # "userDatabase":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 7
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3085
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 3086
    const-string/jumbo v6, "blockedSSIDList"

    .line 3085
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3087
    .local v3, "var":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3088
    .local v1, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 3089
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3090
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3091
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3090
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3094
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "netId"    # I

    .prologue
    .line 3048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3049
    .local v4, "token":J
    const/4 v3, 0x0

    .line 3050
    .local v3, "ret":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 3051
    return-object v3

    .line 3053
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3054
    .local v2, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 3055
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cfg$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3056
    .local v0, "cfg":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_1

    .line 3057
    move-object v3, v0

    .line 3062
    .end local v0    # "cfg":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "cfg$iterator":Ljava/util/Iterator;
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3063
    return-object v3
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    .line 400
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 379
    const-string/jumbo v1, "enterprise_policy_new"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1346
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1352
    .local v0, "callingUid":I
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1353
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 1354
    const-string/jumbo v5, "eap"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1355
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 1356
    .local v2, "eapType":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1357
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    return-object v5

    .line 1348
    .end local v0    # "callingUid":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "eapType":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "WIFI_CONF"

    .line 1349
    const-string/jumbo v7, "networkSSID"

    .line 1348
    invoke-virtual {v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_0

    .line 1359
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "eapType":I
    :cond_1
    return-object v8

    .line 1361
    .end local v2    # "eapType":I
    :cond_2
    const-string/jumbo v5, "phase2"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1362
    const-string/jumbo v3, "NULL"

    .line 1363
    .local v3, "phase2":Ljava/lang/String;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 1364
    .local v4, "phase2Index":I
    if-ltz v4, :cond_3

    .line 1365
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v3, v5, v4

    .line 1367
    :cond_3
    const-string/jumbo v5, "NULL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1368
    const-string/jumbo v5, "None"

    return-object v5

    .line 1370
    :cond_4
    return-object v3

    .line 1372
    .end local v3    # "phase2":Ljava/lang/String;
    .end local v4    # "phase2Index":I
    :cond_5
    const-string/jumbo v5, "identity"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1373
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1374
    :cond_6
    const-string/jumbo v5, "anonymous_identity"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1375
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1376
    :cond_7
    const-string/jumbo v5, "password"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1377
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1378
    :cond_8
    const-string/jumbo v5, "client_cert"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "key_id"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1379
    :cond_9
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1380
    :cond_a
    const-string/jumbo v5, "ca_cert"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1381
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1384
    :cond_b
    return-object v8
.end method

.method private getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addrType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2404
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2407
    return-object v7

    .line 2410
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    .line 2411
    const-string/jumbo v3, "adminUid"

    aput-object v3, v0, v6

    const-string/jumbo v3, "networkSSID"

    aput-object v3, v0, v5

    .line 2413
    .local v0, "col":[Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    .line 2414
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2416
    .local v2, "val":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2417
    const-string/jumbo v4, "WIFI_CONF"

    new-array v5, v5, [Ljava/lang/String;

    .line 2418
    aput-object p3, v5, v6

    .line 2416
    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2420
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2421
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2423
    :cond_1
    return-object v7
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3486
    const/4 v3, 0x0

    .line 3487
    .local v3, "ret":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 3488
    return-object v3

    .line 3490
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3491
    .local v4, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3492
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3493
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 3494
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "auxNet$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3495
    .local v0, "auxNet":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3496
    move-object v3, v0

    .line 3502
    .end local v0    # "auxNet":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "auxNet$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    return-object v3
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 33
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3635
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v5, v0, [Ljava/lang/String;

    .line 3636
    const-string/jumbo v30, "adminUid"

    const/16 v31, 0x0

    aput-object v30, v5, v31

    const-string/jumbo v30, "networkSSID"

    const/16 v31, 0x1

    aput-object v30, v5, v31

    .line 3638
    .local v5, "col":[Ljava/lang/String;
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 3639
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    aput-object v30, v29, v31

    .line 3642
    .local v29, "val":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    .line 3643
    const-string/jumbo v31, "WIFI_CONF"

    const/16 v32, 0x0

    .line 3642
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3644
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    .line 3646
    .local v8, "cv":Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 3647
    :cond_0
    new-instance v30, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v30 .. v30}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v30

    .line 3649
    :cond_1
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "cv":Landroid/content/ContentValues;
    check-cast v8, Landroid/content/ContentValues;

    .line 3653
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v30, "networkSSID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3654
    .local v4, "SSID":Ljava/lang/String;
    const-string/jumbo v30, "WifiPolicyService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, " getNetworkConfiguration config.SSID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    if-nez v4, :cond_2

    .line 3656
    new-instance v30, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v30 .. v30}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v30

    .line 3659
    :cond_2
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3661
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v30, "networkEngineID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 3662
    .local v11, "engine_id":Ljava/lang/Integer;
    const-string/jumbo v30, "WifiPolicyService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "engine_id from mdm database "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 3664
    const-string/jumbo v30, "WifiPolicyService"

    const-string/jumbo v31, "create configuration with ccm"

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 3670
    :cond_3
    :goto_0
    iput-object v4, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3672
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3673
    const-string/jumbo v30, "networkBSSID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3674
    const-string/jumbo v30, "networkKeyMgmt"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3675
    sget-object v31, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 3674
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3676
    const-string/jumbo v30, "networkAllowedProtos"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3677
    sget-object v31, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    .line 3676
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 3679
    const-string/jumbo v30, "networkAuthAlg"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3680
    sget-object v31, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    .line 3678
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 3682
    const-string/jumbo v30, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3683
    sget-object v31, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    .line 3681
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 3685
    const-string/jumbo v30, "networkAllowedGroupProtocols"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3686
    sget-object v31, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 3684
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 3687
    const-string/jumbo v30, "networkPSK"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3688
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkWEPKey1"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    .line 3689
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkWEPKey2"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    aput-object v31, v30, v32

    .line 3690
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkWEPKey3"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x2

    aput-object v31, v30, v32

    .line 3691
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkWEPKey4"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    .line 3692
    const-string/jumbo v30, "networkWEPKeyId"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3694
    const-string/jumbo v30, "networkEAP"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3695
    .local v10, "eap":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_4

    .line 3696
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 3697
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 3702
    :cond_4
    const-string/jumbo v30, "networkPhase1"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3703
    .local v15, "phase1":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3704
    .local v16, "phase1Set":Z
    const/4 v12, 0x0

    :goto_2
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_5

    .line 3705
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 3706
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 3707
    const/16 v16, 0x1

    .line 3711
    :cond_5
    if-nez v16, :cond_6

    .line 3712
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 3715
    :cond_6
    const-string/jumbo v30, "networkPhase2"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3716
    .local v17, "phase2":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3717
    .local v18, "phase2Set":Z
    const/4 v12, 0x0

    :goto_3
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_7

    .line 3718
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 3719
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 3720
    const/16 v18, 0x1

    .line 3724
    :cond_7
    if-nez v18, :cond_8

    .line 3725
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 3728
    :cond_8
    const-string/jumbo v30, "networkIdentity"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 3729
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkIdentity"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 3730
    :cond_9
    const-string/jumbo v30, "networkAnonymousId"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 3731
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkAnonymousId"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 3732
    :cond_a
    const-string/jumbo v30, "networkPassword"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 3733
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkPassword"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 3734
    :cond_b
    const-string/jumbo v30, "networkClientCertification"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 3735
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkClientCertification"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 3736
    :cond_c
    const-string/jumbo v30, "networkCaCertificate"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 3737
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkCaCertificate"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 3740
    :cond_d
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3741
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3742
    .local v7, "configAux":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_e

    .line 3743
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3744
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3748
    :cond_e
    const-string/jumbo v30, "networkStaticIpEnabled"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 3750
    .local v14, "ipAssignment":Ljava/lang/Integer;
    new-instance v27, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v27 .. v27}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 3751
    .local v27, "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 3752
    sget-object v13, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 3756
    .local v13, "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    :goto_4
    const-string/jumbo v30, "networkStaticIp"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3757
    .local v26, "staticIp":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticGateway"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3758
    .local v25, "staticGateway":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticPrimaryDns"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3759
    .local v23, "staticDns1":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticSecondaryDns"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3760
    .local v24, "staticDns2":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticSubnetMask"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3762
    .local v28, "staticSubnetMask":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3763
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    .line 3764
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3767
    const/16 v20, 0x0

    .line 3768
    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    const/16 v21, 0x0

    .line 3770
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    const-string/jumbo v30, "networkProxyState"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 3773
    .local v22, "proxyState":Ljava/lang/Integer;
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v30

    if-nez v30, :cond_18

    .line 3775
    :cond_f
    const-string/jumbo v30, "networkManualProxyEnabled"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 3776
    .local v19, "proxyEnabled":Ljava/lang/Integer;
    if-nez v19, :cond_10

    .line 3777
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3780
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 3781
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3782
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .line 3805
    .end local v19    # "proxyEnabled":Ljava/lang/Integer;
    .end local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    :goto_5
    if-eqz v20, :cond_11

    .line 3806
    const/16 v30, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 3809
    :cond_11
    new-instance v30, Landroid/net/IpConfiguration;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, v20

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3810
    return-object v6

    .line 3666
    .end local v7    # "configAux":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "eap":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    .end local v14    # "ipAssignment":Ljava/lang/Integer;
    .end local v15    # "phase1":Ljava/lang/String;
    .end local v16    # "phase1Set":Z
    .end local v17    # "phase2":Ljava/lang/String;
    .end local v18    # "phase2Set":Z
    .end local v21    # "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    .end local v22    # "proxyState":Ljava/lang/Integer;
    .end local v23    # "staticDns1":Ljava/lang/String;
    .end local v24    # "staticDns2":Ljava/lang/String;
    .end local v25    # "staticGateway":Ljava/lang/String;
    .end local v26    # "staticIp":Ljava/lang/String;
    .end local v27    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    .end local v28    # "staticSubnetMask":Ljava/lang/String;
    :cond_12
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 3667
    const-string/jumbo v30, "WifiPolicyService"

    const-string/jumbo v31, "create configuration with UCM"

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto/16 :goto_0

    .line 3695
    .restart local v10    # "eap":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 3704
    .restart local v15    # "phase1":Ljava/lang/String;
    .restart local v16    # "phase1Set":Z
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 3717
    .restart local v17    # "phase2":Ljava/lang/String;
    .restart local v18    # "phase2Set":Z
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 3754
    .restart local v7    # "configAux":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "ipAssignment":Ljava/lang/Integer;
    .restart local v27    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_16
    sget-object v13, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .restart local v13    # "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    goto/16 :goto_4

    .line 3784
    .restart local v19    # "proxyEnabled":Ljava/lang/Integer;
    .restart local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v22    # "proxyState":Ljava/lang/Integer;
    .restart local v23    # "staticDns1":Ljava/lang/String;
    .restart local v24    # "staticDns2":Ljava/lang/String;
    .restart local v25    # "staticGateway":Ljava/lang/String;
    .restart local v26    # "staticIp":Ljava/lang/String;
    .restart local v28    # "staticSubnetMask":Ljava/lang/String;
    :cond_17
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    goto :goto_5

    .line 3788
    .end local v19    # "proxyEnabled":Ljava/lang/Integer;
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    :cond_18
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 3801
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    goto :goto_5

    .line 3790
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    :pswitch_0
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    goto :goto_5

    .line 3793
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    :pswitch_1
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3794
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_5

    .line 3797
    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    :pswitch_2
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3798
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_5

    .line 3788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 3010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3011
    .local v4, "token":J
    const/4 v2, -0x1

    .line 3012
    .local v2, "netId":I
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 3013
    return v8

    .line 3015
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3016
    .local v3, "netList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 3017
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cfg$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3018
    .local v0, "cfg":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3019
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3024
    .end local v0    # "cfg":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "cfg$iterator":Ljava/util/Iterator;
    :cond_2
    if-ne v2, v8, :cond_3

    .line 3025
    const-string/jumbo v6, "WifiPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkIdBySSID  result:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3027
    return v2
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "securityLevel"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 954
    .local v0, "enterpriseNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 955
    return-object v2

    .line 957
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enterpriseNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "securityLevel"    # [Ljava/lang/String;

    .prologue
    .line 961
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 962
    .local v0, "netSecurity":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 963
    aget-object v1, p2, v0

    return-object v1

    .line 965
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1146
    .local v0, "callingUid":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-gez p3, :cond_1

    .line 1147
    :cond_0
    return-object v3

    .line 1146
    :cond_1
    const/4 v2, 0x3

    if-gt p3, v2, :cond_0

    .line 1150
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1151
    .local v1, "enterprise":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_3

    .line 1152
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, p3

    if-eqz v2, :cond_2

    .line 1153
    const-string/jumbo v2, "*"

    return-object v2

    .line 1155
    :cond_2
    return-object v3

    .line 1157
    :cond_3
    return-object v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4948
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 392
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1964
    if-nez p1, :cond_1

    :cond_0
    move-object p1, v0

    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3123
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 3124
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3039
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3040
    const/4 v1, 0x0

    return v1

    .line 3043
    :cond_0
    const-string/jumbo v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3044
    .local v0, "validIp":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isNetworkSecureInternal(II)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "minSec"    # I

    .prologue
    const/4 v4, 0x1

    .line 2890
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2891
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2892
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 2893
    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v1

    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2894
    return v4

    .line 2898
    .end local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    const-string/jumbo v1, "WifiPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Network id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    return v4

    .line 2901
    .restart local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isSecurityLevelSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 717
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    .line 746
    .local v0, "acceptableSecurityLevels":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 749
    .local v1, "acceptableSecurityLevelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "security level not supported"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/4 v2, 0x0

    return v2

    .line 754
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 4952
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4953
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 4955
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 4939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "WIFI"

    .line 4940
    const-string/jumbo v3, "wifiSsidRestriction"

    .line 4939
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4941
    :catch_0
    move-exception v0

    .line 4942
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string/jumbo v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4944
    const/4 v1, 0x0

    return v1
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2977
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 2978
    return v0

    .line 2980
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isvalidSSIDName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid_name"    # Ljava/lang/String;

    .prologue
    .line 5666
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5667
    :cond_0
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isvalidSSIDName() : SSID is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5668
    const/4 v0, 0x0

    return v0

    .line 5670
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 4380
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4381
    const-string/jumbo v15, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string/jumbo v16, "adminUid"

    .line 4380
    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 4383
    .local v12, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4384
    .local v8, "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v14, :cond_0

    .line 4385
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworkSSIDforKNOX()Ljava/util/List;

    move-result-object v8

    .line 4387
    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    .line 4388
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4389
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v14, :cond_1

    .line 4392
    const-string/jumbo v14, "WHITE_BLACK_SSID_LIST"

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    :cond_1
    const/4 v14, 0x0

    monitor-exit p0

    return-object v14

    .line 4397
    :cond_2
    :try_start_1
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v14, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_3

    .line 4398
    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4400
    :cond_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string/jumbo v15, "BLACKLIST"

    new-instance v16, Ljava/util/TreeSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeSet;-><init>()V

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string/jumbo v15, "WHITELIST"

    new-instance v16, Ljava/util/TreeSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeSet;-><init>()V

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4404
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 4407
    .local v13, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/HashMap;

    .line 4408
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v14

    .line 4407
    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 4410
    .local v9, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4411
    .local v10, "uid":Ljava/lang/Integer;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4412
    .local v1, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v14, "BLACKLIST"

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4413
    const-string/jumbo v14, "WHITELIST"

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4414
    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v11    # "uid$iterator":Ljava/util/Iterator;
    .end local v12    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 4417
    .restart local v8    # "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v11    # "uid$iterator":Ljava/util/Iterator;
    .restart local v12    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v14, 0x3

    :try_start_2
    new-array v2, v14, [Ljava/lang/String;

    .line 4418
    const-string/jumbo v14, "adminUid"

    const/4 v15, 0x0

    aput-object v14, v2, v15

    const-string/jumbo v14, "WIFI_SSID"

    const/4 v15, 0x1

    aput-object v14, v2, v15

    const-string/jumbo v14, "WIFI_LIST_TYPE"

    const/4 v15, 0x2

    aput-object v14, v2, v15

    .line 4420
    .local v2, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4421
    const-string/jumbo v15, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4420
    invoke-virtual {v14, v15, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 4422
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v14, :cond_5

    .line 4423
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4424
    .local v7, "knoxMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v14, "BLACKLIST"

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4425
    const-string/jumbo v14, "WHITELIST"

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    .line 4428
    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 4429
    const-string/jumbo v15, "BLACKLIST"

    .line 4428
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 4430
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4428
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4427
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4433
    .end local v6    # "i":I
    .end local v7    # "knoxMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cv$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 4434
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "adminUid"

    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 4435
    const-string/jumbo v15, "WIFI_LIST_TYPE"

    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4434
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 4436
    const-string/jumbo v15, "WIFI_SSID"

    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4434
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4439
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4440
    .restart local v10    # "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string/jumbo v16, "*"

    .line 4441
    move-object/from16 v0, v16

    invoke-static {v15, v14, v0}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    goto :goto_3

    .line 4445
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_8
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v14, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_9

    .line 4447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string/jumbo v16, "*"

    .line 4446
    move-object/from16 v0, v16

    invoke-static {v15, v14, v0}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4450
    :cond_9
    sget-boolean v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v14, :cond_a

    .line 4453
    const-string/jumbo v14, "WHITE_BLACK_SSID_LIST"

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit p0

    .line 4455
    return-object v9
.end method

.method private loadWifiManager()V
    .locals 2

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2970
    :cond_0
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3183
    array-length v1, p1

    .line 3184
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 3185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3186
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3187
    return v0

    .line 3185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3188
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3214
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3215
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3216
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3217
    .local v3, "vals":[Ljava/lang/String;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 3218
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3219
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 3220
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3217
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3224
    .end local v1    # "index":I
    .end local v2    # "val":Ljava/lang/String;
    .end local v3    # "vals":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3193
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 3199
    .local v1, "nextSetBit":I
    array-length v2, p2

    invoke-virtual {p1, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 3201
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3202
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3206
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 3207
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3210
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "storageName"    # Ljava/lang/String;
    .param p2, "rawAlias"    # Ljava/lang/String;

    .prologue
    .line 1954
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "makeUCMWifiURI"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1956
    .local v0, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 1957
    .local v1, "targetUri":Ljava/lang/String;
    return-object v1
.end method

.method private readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 3908
    const-string/jumbo v1, "networkProxyPacUrl"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3909
    .local v0, "pacUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3910
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 3912
    :cond_0
    return-object v2
.end method

.method private readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 3887
    const-string/jumbo v4, "networProxyName"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3888
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3889
    const-string/jumbo v1, "192.168.1.100"

    .line 3892
    :cond_0
    const-string/jumbo v4, "networkProxyPort"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 3893
    .local v3, "port":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 3894
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3897
    :cond_1
    const-string/jumbo v4, "networkProxyExclList"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3898
    .local v0, "exclList":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3900
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    return-object v4
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 3161
    if-nez p0, :cond_0

    .line 3162
    return-object v1

    .line 3164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3165
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3166
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3168
    :cond_1
    return-object p0
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3108
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 3109
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3110
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 3107
    return-void
.end method

.method private removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "removeWifiProxyAuthConfiguration"    # Z

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 649
    const-string/jumbo v6, "WifiPolicyService"

    const-string/jumbo v7, ">>> removeNetworkConfiguration "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v3, 0x1

    .line 652
    .local v3, "ret":Z
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 655
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 657
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 658
    .local v0, "callingUid":I
    if-nez p2, :cond_2

    .line 659
    return v9

    .line 661
    .end local v0    # "callingUid":I
    :cond_0
    if-nez p2, :cond_1

    .line 662
    return v9

    .line 663
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "WIFI_CONF"

    .line 664
    const-string/jumbo v8, "networkSSID"

    .line 663
    invoke-virtual {v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 667
    .restart local v0    # "callingUid":I
    :cond_2
    if-ne v0, v11, :cond_3

    .line 668
    const-string/jumbo v6, "WifiPolicyService"

    const-string/jumbo v7, "No admin found for the given SSID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return v9

    .line 673
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_a

    .line 674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 675
    .local v4, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 676
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 678
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 679
    .local v2, "needSaveConfig":Z
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 680
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x1

    .line 683
    :cond_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 684
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x1

    .line 687
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 688
    const-string/jumbo v6, "WifiPolicyService"

    const-string/jumbo v7, "Not a valid MDM SSID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    return v9

    .line 692
    :cond_6
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v6, :cond_8

    .line 693
    const-string/jumbo v6, "WifiPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forgetting network id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-eqz v2, :cond_7

    .line 695
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    .line 696
    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    .line 698
    :cond_8
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 700
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "needSaveConfig":Z
    .end local v3    # "ret":Z
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    .end local v4    # "token":J
    :cond_a
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "WIFI_CONF"

    .line 704
    const-string/jumbo v8, "networkSSID"

    .line 703
    invoke-virtual {v6, v7, v0, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v3, v6

    .line 705
    .local v3, "ret":Z
    if-eqz v3, :cond_b

    if-eqz p3, :cond_b

    .line 706
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 710
    :cond_b
    const-string/jumbo v6, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 712
    return v3
.end method

.method private saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1861
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    const/4 v4, 0x1

    .line 1862
    .local v4, "success":Z
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 1863
    .local v0, "config":Lcom/samsung/android/knox/net/AuthConfig;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "WifiProxyAuthTable"

    .line 1864
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v7

    .line 1863
    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1865
    .local v2, "ret":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 1866
    const/4 v4, 0x0

    goto :goto_0

    .line 1869
    .end local v0    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    .end local v2    # "ret":J
    :cond_1
    return v4
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3099
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3100
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3101
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3103
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "WIFI"

    .line 3104
    const-string/jumbo v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3103
    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3098
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;I)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4103
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 4104
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4105
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4107
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4108
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4101
    return-void
.end method

.method private setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticDns1"    # Ljava/lang/String;
    .param p3, "staticDns2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3995
    const/4 v0, 0x0

    .line 3996
    .local v0, "dns1Addr":Ljava/net/InetAddress;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3998
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4011
    .local v0, "dns1Addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4012
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4014
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4020
    :cond_1
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4022
    :try_start_1
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 4023
    .local v1, "dns2Addr":Ljava/net/InetAddress;
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 4024
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4034
    .end local v1    # "dns2Addr":Ljava/net/InetAddress;
    :cond_2
    :goto_2
    return v6

    .line 3999
    .local v0, "dns1Addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 4000
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiPolicyService"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4001
    return v5

    .line 4004
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string/jumbo v3, "8.8.8.8"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 4006
    .local v0, "dns1Addr":Ljava/net/InetAddress;
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4007
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dns1Addr":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .restart local v0    # "dns1Addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 4016
    :cond_4
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4025
    .restart local v1    # "dns2Addr":Ljava/net/InetAddress;
    :cond_5
    :try_start_2
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 4026
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 4028
    .end local v1    # "dns2Addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 4029
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiPolicyService"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4030
    return v5
.end method

.method private setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1325
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1327
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1328
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1330
    const/4 v2, 0x0

    .line 1331
    .local v2, "ret":Z
    if-nez v1, :cond_0

    return v2

    .line 1333
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1334
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 1335
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1338
    :cond_1
    return v2
.end method

.method private setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z
    .locals 4
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticGateway"    # Ljava/lang/String;

    .prologue
    .line 3968
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3970
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3971
    .local v1, "gatewayAddr":Ljava/net/InetAddress;
    iput-object v1, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3986
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3972
    .end local v1    # "gatewayAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 3973
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3974
    const/4 v2, 0x0

    return v2

    .line 3977
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string/jumbo v2, "192.168.1.1"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3981
    .restart local v1    # "gatewayAddr":Ljava/net/InetAddress;
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 3982
    iput-object v1, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticIp"    # Ljava/lang/String;
    .param p3, "staticSubnetMask"    # Ljava/lang/String;

    .prologue
    .line 3922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3924
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3926
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3927
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3929
    .local v2, "inetsubNetAddr":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v4

    .line 3936
    .end local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    .local v4, "maskLength":I
    :cond_0
    :goto_0
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v1, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3937
    .local v3, "linkAddr":Landroid/net/LinkAddress;
    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 3959
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 3931
    .end local v3    # "linkAddr":Landroid/net/LinkAddress;
    .end local v4    # "maskLength":I
    :cond_1
    const/16 v4, 0x18

    .line 3932
    .restart local v4    # "maskLength":I
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_0

    .line 3933
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 3938
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "maskLength":I
    :catch_0
    move-exception v0

    .line 3939
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "WifiPolicyService"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3940
    const/4 v5, 0x0

    return v5

    .line 3943
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const-string/jumbo v5, "192.168.1.100"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3944
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    const/16 v4, 0x18

    .line 3945
    .restart local v4    # "maskLength":I
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_3

    .line 3946
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 3947
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    .line 3950
    :cond_3
    if-eqz p3, :cond_4

    .line 3951
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3952
    .restart local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v4

    .line 3955
    .end local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    :cond_4
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v1, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3956
    .restart local v3    # "linkAddr":Landroid/net/LinkAddress;
    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_1
.end method

.method private setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addrType"    # Ljava/lang/String;

    .prologue
    .line 2385
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2386
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2388
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2389
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2391
    const/4 v2, 0x0

    .line 2392
    .local v2, "ret":Z
    if-nez v1, :cond_0

    return v2

    .line 2394
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 2395
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 2397
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2399
    :cond_1
    return v2
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 22
    .param p1, "callingUid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3510
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3511
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const-string/jumbo v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    const-string/jumbo v1, "networkKeyMgmt"

    .line 3514
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3513
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const-string/jumbo v1, "networkAllowedProtos"

    .line 3516
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3515
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    const-string/jumbo v1, "networkAuthAlg"

    .line 3518
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3517
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const-string/jumbo v1, "networkAllowedPairwiseCiphers"

    .line 3520
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3519
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    const-string/jumbo v1, "networkAllowedGroupProtocols"

    .line 3522
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3521
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    const-string/jumbo v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    const-string/jumbo v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-string/jumbo v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    const-string/jumbo v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    const-string/jumbo v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-string/jumbo v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3529
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3530
    const-string/jumbo v1, "networkEAP"

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v15

    .line 3533
    .local v15, "phase1":Ljava/lang/String;
    const-string/jumbo v1, "NULL"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3534
    :cond_1
    const-string/jumbo v1, "networkPhase1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3539
    :goto_0
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    aget-object v16, v1, v2

    .line 3540
    .local v16, "phase2":Ljava/lang/String;
    const-string/jumbo v1, "NULL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3541
    :cond_2
    const-string/jumbo v1, "networkPhase2"

    const-string/jumbo v2, "None"

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    :goto_1
    const-string/jumbo v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    const-string/jumbo v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    const-string/jumbo v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    const-string/jumbo v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    const-string/jumbo v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const-string/jumbo v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string/jumbo v2, "networkStaticIpEnabled"

    .line 3554
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3553
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3555
    const/4 v13, 0x0

    .local v13, "ipAddr":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "subnetAddr":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "gatewayAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dns1Addr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3556
    .local v8, "dns2Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3557
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iget-object v14, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 3558
    .local v14, "linkAddress":Landroid/net/LinkAddress;
    if-eqz v14, :cond_3

    .line 3559
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    .line 3561
    .local v13, "ipAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->prefixLengthToNetmaskInt(I)I

    move-result v1

    .line 3560
    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    .line 3564
    .end local v13    # "ipAddr":Ljava/lang/String;
    .end local v20    # "subnetAddr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3565
    .local v21, "wifiInterface":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "route$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .line 3566
    .local v18, "route":Landroid/net/RouteInfo;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3567
    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 3571
    .end local v12    # "gatewayAddr":Ljava/lang/String;
    .end local v18    # "route":Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3572
    .local v9, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3573
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 3575
    .end local v7    # "dns1Addr":Ljava/lang/String;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3576
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 3579
    .end local v8    # "dns2Addr":Ljava/lang/String;
    .end local v9    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v14    # "linkAddress":Landroid/net/LinkAddress;
    .end local v19    # "route$iterator":Ljava/util/Iterator;
    .end local v21    # "wifiInterface":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "networkStaticIp"

    invoke-virtual {v6, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    const-string/jumbo v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    const-string/jumbo v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    const-string/jumbo v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    const-string/jumbo v1, "networkStaticSubnetMask"

    move-object/from16 v0, v20

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    const-string/jumbo v2, "networkManualProxyEnabled"

    .line 3588
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3587
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3591
    const/16 v17, 0x0

    .line 3593
    .local v17, "proxySettings":I
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_f

    const/16 v17, 0x0

    .line 3597
    :cond_8
    :goto_4
    const-string/jumbo v1, "networkProxyState"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3600
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3601
    const-string/jumbo v1, "networProxyName"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    const-string/jumbo v1, "networkProxyPort"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3603
    const-string/jumbo v1, "networkProxyExclList"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    const-string/jumbo v1, "networkProxyUsername"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    const-string/jumbo v1, "networkProxyPassword"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    const-string/jumbo v1, "networkProxyPacUrl"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3615
    :cond_9
    const/4 v10, 0x0

    .line 3616
    .local v10, "engine_id":I
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v11

    .line 3617
    .local v11, "engine_id_str":Ljava/lang/String;
    const-string/jumbo v1, "WifiPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine_id_str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "secpkcs11"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3619
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "engine id is secpkcs11 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    const/4 v10, 0x1

    .line 3625
    :cond_a
    :goto_5
    const-string/jumbo v1, "networkEngineID"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "WIFI_CONF"

    .line 3628
    const-string/jumbo v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    .line 3627
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 3536
    .end local v10    # "engine_id":I
    .end local v11    # "engine_id_str":Ljava/lang/String;
    .end local v16    # "phase2":Ljava/lang/String;
    .end local v17    # "proxySettings":I
    :cond_b
    const-string/jumbo v1, "networkPhase1"

    const-string/jumbo v2, "fast_provisioning="

    const-string/jumbo v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3543
    .restart local v16    # "phase2":Ljava/lang/String;
    :cond_c
    const-string/jumbo v1, "networkPhase2"

    const-string/jumbo v2, "auth="

    const-string/jumbo v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3554
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 3588
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 3594
    .restart local v17    # "proxySettings":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_10

    const/16 v17, 0x1

    goto/16 :goto_4

    .line 3595
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_8

    const/16 v17, 0x2

    goto/16 :goto_4

    .line 3621
    .restart local v10    # "engine_id":I
    .restart local v11    # "engine_id_str":Ljava/lang/String;
    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "ucsengine"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3622
    const-string/jumbo v1, "WifiPolicyService"

    const-string/jumbo v2, "engine id is UCM "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    const/4 v10, 0x2

    goto :goto_5
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "lastssid"    # Ljava/lang/String;

    .prologue
    .line 2123
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2124
    const-string/jumbo v6, "networkLastSSID"

    .line 2123
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2126
    .local v1, "lastSSIDs":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    .local v3, "newList":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_2

    .line 2129
    if-eqz p2, :cond_1

    .line 2130
    move-object v0, p2

    .line 2131
    .local v0, "last":Ljava/lang/String;
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2132
    .local v2, "list":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v4, v2, v5

    .line 2134
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2140
    .end local v0    # "last":Ljava/lang/String;
    .end local v2    # "list":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    :cond_2
    if-eqz p1, :cond_3

    .line 2145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1061
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1063
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1066
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v2, v1

    .line 1067
    .local v2, "oldConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1069
    const/4 v3, 0x0

    .line 1070
    .local v3, "ret":Z
    if-nez v1, :cond_0

    return v3

    .line 1084
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    .line 1085
    .local v3, "ret":Z
    if-eqz v3, :cond_1

    .line 1086
    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1087
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 1090
    if-nez v3, :cond_1

    .line 1091
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 1095
    :cond_1
    if-eqz v3, :cond_2

    .line 1096
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1099
    :cond_2
    return v3
.end method

.method private setWifiAllowedSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 5692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5694
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 5695
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5699
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5691
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 5696
    :catch_0
    move-exception v0

    .line 5697
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setWifiAllowedSystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5699
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5698
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 5699
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5698
    throw v4
.end method

.method private setWifiStateChangeAllowedSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 5681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5683
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 5684
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5680
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 5685
    :catch_0
    move-exception v0

    .line 5686
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setWifiStateChangeAllowedSystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5687
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 5688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5687
    throw v4
.end method

.method private updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc8

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1260
    if-eqz p3, :cond_0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1318
    :cond_0
    return-object v7

    .line 1261
    :cond_1
    const-string/jumbo v5, "phase2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1262
    const/4 v4, 0x0

    .line 1263
    .local v4, "phase2Set":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 1264
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1265
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1266
    const/4 v4, 0x1

    .line 1271
    :cond_2
    if-nez v4, :cond_3

    .line 1272
    const-string/jumbo v5, "None"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1273
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1320
    .end local v1    # "i":I
    .end local v4    # "phase2Set":Z
    :cond_3
    :goto_1
    return-object p1

    .line 1263
    .restart local v1    # "i":I
    .restart local v4    # "phase2Set":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    :cond_5
    return-object v7

    .line 1276
    .end local v1    # "i":I
    .end local v4    # "phase2Set":Z
    :cond_6
    const-string/jumbo v5, "phase1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1277
    const/4 v3, 0x0

    .line 1278
    .local v3, "phase1Set":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 1279
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1280
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1281
    const/4 v3, 0x1

    .line 1287
    :cond_7
    if-nez v3, :cond_3

    .line 1289
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1290
    .local v2, "p1":I
    if-eq v2, v6, :cond_9

    .line 1291
    return-object v7

    .line 1278
    .end local v2    # "p1":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1292
    .restart local v2    # "p1":I
    :cond_9
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1293
    .end local v2    # "p1":I
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object v7

    .line 1297
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "phase1Set":Z
    :cond_a
    const-string/jumbo v5, "identity"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1298
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_b

    .line 1299
    const-string/jumbo v5, "WifiPolicyService"

    const-string/jumbo v6, "Identity value excedes maximum length 200"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    return-object v7

    .line 1303
    :cond_b
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 1304
    :cond_c
    const-string/jumbo v5, "anonymous_identity"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1305
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 1306
    :cond_d
    const-string/jumbo v5, "password"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1307
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_e

    .line 1308
    const-string/jumbo v5, "WifiPolicyService"

    const-string/jumbo v6, "Password excedes maximum length 200"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return-object v7

    .line 1312
    :cond_e
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1313
    :cond_f
    const-string/jumbo v5, "client_cert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "key_id"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1314
    :cond_10
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1315
    :cond_11
    const-string/jumbo v5, "ca_cert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1316
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1317
    :cond_12
    return-object v7
.end method

.method private updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "addrType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2354
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2358
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 2359
    .local v1, "staticIpConf":Landroid/net/StaticIpConfiguration;
    if-nez v1, :cond_0

    .line 2360
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2363
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_0
    const/4 v0, 0x0

    .line 2364
    .local v0, "ret":Z
    const-string/jumbo v2, "networkStaticIp"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2365
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2376
    .end local v0    # "ret":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_7

    return-object v3

    .line 2355
    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_2
    return-object v3

    .line 2366
    .restart local v0    # "ret":Z
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_3
    const-string/jumbo v2, "networkStaticGateway"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2367
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 2368
    .local v0, "ret":Z
    :cond_4
    const-string/jumbo v2, "networkStaticPrimaryDns"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2369
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 2370
    .local v0, "ret":Z
    :cond_5
    const-string/jumbo v2, "networkStaticSecondaryDns"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2371
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 2372
    .local v0, "ret":Z
    :cond_6
    const-string/jumbo v2, "networkStaticSubnetMask"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2373
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 2378
    .end local v0    # "ret":Z
    :cond_7
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2380
    return-object p1
.end method

.method private updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2293
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2294
    return-object v3

    .line 2297
    :cond_0
    if-eqz p2, :cond_2

    .line 2298
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2307
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 2308
    .local v1, "staticIpConf":Landroid/net/StaticIpConfiguration;
    if-nez v1, :cond_1

    .line 2309
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2313
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_1
    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2314
    .local v0, "ret":Z
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 2315
    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 2317
    if-nez v0, :cond_3

    return-object v3

    .line 2300
    .end local v0    # "ret":Z
    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_2
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_0

    .line 2319
    .restart local v0    # "ret":Z
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2321
    return-object p1
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .locals 2
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1198
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1200
    :cond_0
    return-object v2

    .line 1199
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 1203
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1204
    const-string/jumbo v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1205
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1213
    :goto_0
    return-object p1

    .line 1207
    :cond_2
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 1210
    :cond_3
    return-object v2
.end method

.method private updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5118
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5119
    :cond_0
    return-object v2

    .line 5123
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5124
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5125
    return-object v2

    .line 5128
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    .line 5129
    .local v7, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v7, :cond_3

    .line 5130
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5136
    .end local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5138
    return-object p1

    .line 5132
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_3
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 5133
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    .line 5132
    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0
.end method

.method private updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 5637
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5638
    const/4 v1, 0x0

    return-object v1

    .line 5641
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_1

    .line 5642
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5643
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5646
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_1
    return-object p1
.end method

.method private updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5617
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5618
    return-object v2

    .line 5621
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5625
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v0, :cond_1

    .line 5626
    const-string/jumbo v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5629
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    .line 5630
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5632
    return-object p1
.end method

.method private updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "port"    # I

    .prologue
    const/4 v3, 0x0

    .line 5199
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5200
    return-object v3

    .line 5204
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_2

    .line 5205
    if-lez p2, :cond_1

    const v1, 0xffff

    if-le p2, v1, :cond_2

    .line 5206
    :cond_1
    return-object v3

    .line 5210
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v6

    .line 5211
    .local v6, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v6, :cond_3

    .line 5212
    const-string/jumbo v1, "192.168.1.100"

    invoke-static {v1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5218
    .end local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5220
    return-object p1

    .line 5214
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_3
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5215
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    move v2, p2

    .line 5214
    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0
.end method

.method private updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 5062
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5063
    return-object v1

    .line 5066
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 5067
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 5074
    :goto_0
    return-object p1

    .line 5068
    :cond_1
    if-nez p2, :cond_2

    .line 5069
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    .line 5070
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 5071
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    .line 5072
    :cond_3
    return-object v1
.end method

.method private updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5598
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5599
    return-object v2

    .line 5602
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5606
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v0, :cond_1

    .line 5607
    const-string/jumbo v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5610
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    .line 5611
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5613
    return-object p1
.end method

.method private updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    return-object v2

    .line 1031
    :cond_0
    if-eqz p3, :cond_1

    if-gez p2, :cond_2

    .line 1032
    :cond_1
    return-object v2

    .line 1031
    :cond_2
    const/4 v1, 0x3

    if-gt p2, v1, :cond_1

    .line 1035
    if-nez p2, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1036
    return-object v2

    .line 1039
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1041
    .local v0, "length":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    :cond_4
    const-string/jumbo v1, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1043
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v1, p2

    .line 1049
    :goto_0
    return-object p1

    .line 1041
    :cond_5
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    .line 1046
    :cond_6
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0
.end method

.method private updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "keyId"    # I

    .prologue
    const/4 v1, 0x0

    .line 993
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 994
    :cond_0
    return-object v1

    .line 997
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1000
    add-int/lit8 v0, p2, -0x1

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1005
    return-object p1

    .line 1002
    :cond_2
    return-object v1
.end method

.method private updateSystemUIMonitor(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5676
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    .line 5677
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 5675
    return-void
.end method

.method private updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 16
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 5283
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5284
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 5288
    :cond_1
    const-string/jumbo v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 5289
    .local v15, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5290
    .local v11, "item":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 5291
    .local v13, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5292
    const/4 v2, 0x0

    return-object v2

    .line 5296
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "match":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5298
    .local v8, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v14

    .line 5299
    .local v14, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v14, :cond_4

    .line 5300
    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 5304
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v8    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v9

    .line 5308
    .end local v9    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5309
    .restart local v11    # "item":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5310
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5314
    .end local v11    # "item":Ljava/lang/String;
    :cond_6
    if-nez v14, :cond_7

    .line 5315
    const-string/jumbo v2, "192.168.1.100"

    const/4 v3, 0x0

    invoke-static {v2, v3, v8}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 5323
    .end local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 5325
    return-object p1

    .line 5317
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 5318
    .local v7, "exclusionArray":[Ljava/lang/Object;
    array-length v2, v7

    const-class v3, [Ljava/lang/String;

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 5319
    .local v10, "exclusionStringArray":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    .line 5320
    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5319
    invoke-direct/range {v1 .. v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_1
.end method

.method private updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/16 v3, 0x8

    .line 759
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 761
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    const-string/jumbo v0, "WifiPolicyService"

    const-string/jumbo v1, "specified profile not found"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    return-object v0

    .line 766
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 768
    :cond_2
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWifiConfigLinkSecurity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 772
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 773
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 863
    :goto_0
    return-object p1

    .line 775
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 776
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 777
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 778
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 779
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 781
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 782
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 783
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 784
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 785
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 786
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 787
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 788
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 789
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 790
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 791
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 792
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 793
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 794
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 795
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 796
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 797
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 798
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 799
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 800
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 801
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 802
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 803
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 804
    :cond_d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 805
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 806
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 807
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 808
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 809
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 810
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 811
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 812
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 813
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 814
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 815
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 816
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 817
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 818
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 819
    :cond_12
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 820
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 821
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 822
    :cond_13
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 823
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 824
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 825
    :cond_14
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 826
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 827
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 828
    :cond_15
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 829
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 830
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 831
    :cond_16
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 832
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 833
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 834
    :cond_17
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 835
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 836
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 838
    :cond_18
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 839
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 840
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 841
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 842
    :cond_19
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 843
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 844
    :cond_1a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 845
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 846
    :cond_1b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 847
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 848
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 849
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 850
    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 851
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 852
    :cond_1e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 853
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 854
    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 855
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 856
    :cond_20
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 857
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 859
    :cond_21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .locals 8

    .prologue
    monitor-enter p0

    .line 3128
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3129
    const/4 v3, 0x1

    .line 3130
    .local v3, "success":Z
    const/4 v2, 0x0

    .line 3131
    .local v2, "showMsg":Z
    const/4 v0, 0x0

    .line 3132
    .local v0, "hasChanged":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 3133
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3134
    .local v1, "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 3135
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "wifiConfig$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 3136
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v7, 0x1

    if-eq v7, v6, :cond_0

    .line 3137
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3138
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v6

    .line 3137
    if-eqz v6, :cond_0

    .line 3139
    :cond_1
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v6, :cond_2

    .line 3141
    const v6, 0x1040914

    invoke-static {v6}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3145
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3146
    const/4 v0, 0x1

    goto :goto_0

    .line 3151
    .end local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "wifiConfig$iterator":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_1
    monitor-exit p0

    .line 3155
    return v3

    .line 3152
    :cond_5
    :try_start_1
    const-string/jumbo v6, "WifiPolicyService"

    const-string/jumbo v7, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3153
    const/4 v3, 0x0

    goto :goto_1

    .end local v0    # "hasChanged":Z
    .end local v1    # "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "showMsg":Z
    .end local v3    # "success":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private validateSSIDList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 5650
    if-nez p1, :cond_0

    .line 5651
    return-object v3

    .line 5652
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5653
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5654
    const-string/jumbo v3, "WifiPolicyService"

    const-string/jumbo v4, "validateSSIDList() : ssid list removed null "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5656
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5658
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isvalidSSIDName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5659
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5662
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4895
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4896
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v2, "WIFI"

    .line 4897
    const-string/jumbo v3, "wifiSsidRestriction"

    .line 4896
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4898
    .local v9, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4899
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4900
    if-eqz v9, :cond_0

    .line 4901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4904
    .local v10, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4905
    const-string/jumbo v1, " has changed Wifi SSID restriction to "

    .line 4904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4906
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4903
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4908
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4911
    .end local v10    # "psToken":J
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 4912
    .local v12, "userId":I
    if-eqz v9, :cond_1

    if-nez v12, :cond_1

    .line 4913
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4915
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v0, "Wifi"

    const-string/jumbo v1, "activateWifiSsidRestriction"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4916
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activateWifiSsidRestriction : enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4921
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v9

    .line 4907
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_0
    move-exception v0

    .line 4908
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4907
    throw v0

    .line 4917
    .end local v10    # "psToken":J
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 4918
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2170
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2172
    if-nez p2, :cond_0

    .line 2173
    return v0

    .line 2176
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 2179
    const-string/jumbo v0, "BLOCKED_NETWORKS"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2181
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v9

    .line 2182
    .local v9, "ret":Z
    if-eqz v9, :cond_1

    .line 2183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2186
    .local v10, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, " has blocked access to Wifi SSID: "

    .line 2186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2187
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2185
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2192
    .end local v10    # "psToken":J
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 2193
    .local v12, "userId":I
    if-eqz v9, :cond_2

    if-nez v12, :cond_2

    .line 2194
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2196
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v0, "Wifi"

    const-string/jumbo v1, "addBlockedNetwork"

    invoke-virtual {v8, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const-string/jumbo v0, "WifiPolicyService"

    const-string/jumbo v1, "addBlockedNetwork calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2203
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    return v9

    .line 2188
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_0
    move-exception v0

    .line 2189
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    throw v0

    .line 2198
    .end local v10    # "psToken":J
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 2199
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addUrlForNetworkProxyBypass(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5330
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5331
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5333
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5334
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5336
    const/4 v4, 0x0

    .line 5337
    .local v4, "ret":Z
    if-nez v2, :cond_0

    return v4

    .line 5339
    :cond_0
    new-array v1, v9, [Ljava/lang/String;

    .line 5340
    const-string/jumbo v6, "adminUid"

    aput-object v6, v1, v7

    const-string/jumbo v6, "networkSSID"

    aput-object v6, v1, v8

    .line 5342
    .local v1, "col":[Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    .line 5343
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 5347
    .local v5, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5348
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "networkProxyExclList"

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5349
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5352
    .local v4, "ret":Z
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    .line 5353
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5355
    :cond_1
    return v4
.end method

.method public addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4476
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4478
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4480
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4482
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4483
    :cond_0
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "addWifiSsidToBlackList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    const/4 v2, 0x0

    return v2

    .line 4487
    :cond_1
    const/4 v14, 0x1

    .line 4488
    .local v14, "result":Z
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v14    # "result":Z
    .local v16, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4489
    .local v15, "s":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4490
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "WIFI_SSID"

    invoke-virtual {v9, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4491
    const-string/jumbo v2, "adminUid"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4492
    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const-string/jumbo v3, "BLACKLIST"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    if-eqz v14, :cond_3

    .line 4494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4495
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4494
    invoke-virtual {v2, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    .line 4496
    .local v14, "result":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 4497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4500
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4501
    const-string/jumbo v3, " has added SSID "

    .line 4500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4501
    const-string/jumbo v3, " to the restriction blacklist."

    .line 4500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4501
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4499
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4503
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4493
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 4502
    .restart local v12    # "psToken":J
    .restart local v14    # "result":Z
    :catchall_0
    move-exception v2

    .line 4503
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4502
    throw v2

    .line 4507
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    .end local v15    # "s":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4508
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4510
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 4511
    .local v17, "userId":I
    if-eqz v14, :cond_5

    if-nez v17, :cond_5

    .line 4513
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "addWifiSsidToBlackList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4518
    :cond_5
    :goto_2
    return v14

    .line 4514
    :catch_0
    move-exception v10

    .line 4515
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4692
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4693
    const/4 v14, 0x1

    .line 4695
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4697
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4699
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4700
    :cond_0
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "addWifiSsidToWhiteList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4701
    const/4 v2, 0x0

    return v2

    .line 4704
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v14    # "result":Z
    .local v16, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4705
    .local v15, "s":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4706
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "WIFI_SSID"

    invoke-virtual {v9, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4707
    const-string/jumbo v2, "adminUid"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4708
    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const-string/jumbo v3, "WHITELIST"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    if-eqz v14, :cond_3

    .line 4710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4711
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4710
    invoke-virtual {v2, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    .line 4712
    .local v14, "result":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 4713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4716
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4717
    const-string/jumbo v3, " has added SSID "

    .line 4716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4717
    const-string/jumbo v3, " to the restriction whitelist."

    .line 4716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4717
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4715
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4719
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4709
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 4718
    .restart local v12    # "psToken":J
    .restart local v14    # "result":Z
    :catchall_0
    move-exception v2

    .line 4719
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4718
    throw v2

    .line 4723
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    .end local v15    # "s":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4724
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4725
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 4726
    .local v17, "userId":I
    if-eqz v14, :cond_5

    if-nez v17, :cond_5

    .line 4728
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "addWifiSsidToWhiteList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4733
    :cond_5
    :goto_2
    return v14

    .line 4729
    :catch_0
    move-exception v10

    .line 4730
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 4327
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4329
    if-nez p2, :cond_2

    .line 4330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4331
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4332
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4333
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 4334
    .local v4, "state":I
    const/16 v8, 0xd

    if-eq v4, v8, :cond_0

    const/16 v8, 0xc

    if-ne v4, v8, :cond_1

    .line 4335
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v0, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4338
    .end local v4    # "state":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4340
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "token":J
    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v10, "WIFI"

    .line 4341
    const-string/jumbo v11, "allowOpenWifi"

    .line 4340
    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 4342
    .local v3, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 4343
    .local v5, "userId":I
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 4344
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4346
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v8, "Wifi"

    const-string/jumbo v9, "allowOpenWifiAp"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4347
    const-string/jumbo v8, "WifiPolicyService"

    const-string/jumbo v9, "allowOpenWifiAp calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4352
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_0
    return v3

    .line 4348
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 4349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4269
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4270
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4273
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 4274
    const-string/jumbo v7, "allowWifiApSettingModification"

    .line 4273
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 4275
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 4276
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 4278
    :try_start_0
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "allowWifiApSettingUserModification"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4279
    const-string/jumbo v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GearPolicy allowWifiApSettingUserModification : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4284
    :cond_0
    :goto_0
    return v2

    .line 4280
    :catch_0
    move-exception v0

    .line 4281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearUrlsFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5416
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5418
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5419
    return v9

    .line 5422
    :cond_0
    new-array v0, v8, [Ljava/lang/String;

    .line 5423
    const-string/jumbo v7, "adminUid"

    aput-object v7, v0, v9

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v0, v10

    .line 5425
    .local v0, "col":[Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    .line 5426
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 5428
    .local v6, "val":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    .line 5429
    const-string/jumbo v7, "networkProxyExclList"

    aput-object v7, v5, v9

    .line 5430
    const-string/jumbo v7, "networkManualProxyEnabled"

    aput-object v7, v5, v10

    .line 5431
    const-string/jumbo v7, "networkProxyState"

    aput-object v7, v5, v8

    .line 5433
    .local v5, "retCol":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5434
    const-string/jumbo v8, "WIFI_CONF"

    .line 5433
    invoke-virtual {v7, v8, v0, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5435
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_2

    .line 5436
    :cond_1
    return v9

    .line 5440
    :cond_2
    const/4 v4, 0x1

    .line 5441
    .local v4, "ret":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5442
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkProxyExclList"

    const-string/jumbo v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "WIFI_CONF"

    invoke-virtual {v7, v8, v0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5447
    .local v4, "ret":Z
    if-eqz v4, :cond_4

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkManualProxyEnabled"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 5448
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkProxyState"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 5449
    :cond_3
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5450
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5452
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    return v4
.end method

.method public clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4603
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4604
    const/4 v14, 0x1

    .line 4606
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4608
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    .line 4609
    const-string/jumbo v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const/4 v3, 0x1

    aput-object v2, v9, v3

    .line 4611
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 4612
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const-string/jumbo v2, "BLACKLIST"

    const/4 v3, 0x1

    aput-object v2, v16, v3

    .line 4614
    .local v16, "values":[Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4616
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4615
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    .line 4617
    .local v14, "result":Z
    :goto_0
    if-eqz v14, :cond_0

    .line 4618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4621
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4622
    const-string/jumbo v3, " has removed all SSIDs from the restriction blacklist."

    .line 4621
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4622
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4620
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4627
    .end local v12    # "psToken":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4628
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4629
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 4630
    .local v15, "userId":I
    if-eqz v14, :cond_1

    if-nez v15, :cond_1

    .line 4632
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "clearWifiSsidBlackList"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4637
    :cond_1
    :goto_1
    return v14

    .line 4614
    .end local v15    # "userId":I
    .local v14, "result":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 4623
    .restart local v12    # "psToken":J
    .local v14, "result":Z
    :catchall_0
    move-exception v2

    .line 4624
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4623
    throw v2

    .line 4633
    .end local v12    # "psToken":J
    .restart local v15    # "userId":I
    :catch_0
    move-exception v10

    .line 4634
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4814
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4815
    const/4 v14, 0x1

    .line 4817
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4819
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    .line 4820
    const-string/jumbo v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const/4 v3, 0x1

    aput-object v2, v9, v3

    .line 4822
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 4823
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const-string/jumbo v2, "WHITELIST"

    const/4 v3, 0x1

    aput-object v2, v16, v3

    .line 4825
    .local v16, "values":[Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 4826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4827
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4826
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    .line 4828
    .local v14, "result":Z
    :goto_0
    if-eqz v14, :cond_0

    .line 4829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4832
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4833
    const-string/jumbo v3, " has removed all SSIDs from the restriction whitelist."

    .line 4832
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4833
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4831
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4835
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4838
    .end local v12    # "psToken":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4839
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4841
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 4842
    .local v15, "userId":I
    if-eqz v14, :cond_1

    if-nez v15, :cond_1

    .line 4844
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "clearWifiSsidWhiteList"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4849
    :cond_1
    :goto_1
    return v14

    .line 4825
    .end local v15    # "userId":I
    .local v14, "result":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 4834
    .restart local v12    # "psToken":J
    .local v14, "result":Z
    :catchall_0
    move-exception v2

    .line 4835
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4834
    throw v2

    .line 4845
    .end local v12    # "psToken":J
    .restart local v15    # "userId":I
    :catch_0
    move-exception v10

    .line 4846
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5704
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 5705
    const-string/jumbo v3, "android.permission.DUMP"

    .line 5704
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5706
    const-string/jumbo v2, "Permission Denial: can\'t dump WifiPolicyService"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5707
    return-void

    .line 5709
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    .line 5710
    .local v1, "wifiCache":Landroid/sec/enterprise/WifiPolicyCache;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WifiPolicy Cache]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/sec/enterprise/WifiPolicyCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5713
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[WifiPolicyService]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5714
    const-string/jumbo v2, "  mWifiAllowed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5715
    const-string/jumbo v2, "  mAllowStateChange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5716
    const-string/jumbo v2, "  mAllowAutomaticConnections : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5717
    const-string/jumbo v2, "  mAllowUserChanges : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    const-string/jumbo v2, "  mPromptCredentialsEnabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 5703
    return-void
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 3333
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3335
    if-nez p1, :cond_0

    return-void

    .line 3338
    :cond_0
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3340
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "WIFI_CONF"

    .line 3341
    const-string/jumbo v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3340
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3342
    .local v0, "adminUid":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 3344
    return-void

    .line 3351
    :cond_1
    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 3356
    .local v1, "taskToUpdateNetwork":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3357
    .local v2, "threadToUpdateNetwork":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3332
    return-void
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .locals 15

    .prologue
    monitor-enter p0

    .line 3247
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3249
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_0

    monitor-exit p0

    .line 3250
    return-void

    .line 3253
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 3257
    .local v6, "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    monitor-exit p0

    .line 3258
    return-void

    .line 3261
    :cond_1
    :try_start_2
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 3262
    .local v0, "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_2

    monitor-exit p0

    .line 3263
    return-void

    .line 3267
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v3

    .line 3268
    .local v3, "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    .local v5, "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3272
    .local v4, "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3273
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 3274
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 3275
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3276
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 3281
    .restart local v0    # "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2    # "config$iterator":Ljava/util/Iterator;
    .restart local v3    # "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x0

    .line 3282
    .local v8, "needSaveConfiguration":Z
    :try_start_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3283
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3285
    .local v10, "notQuotedSSID":Ljava/lang/String;
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3286
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3285
    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3287
    :cond_6
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3308
    :cond_7
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v13

    if-nez v13, :cond_5

    .line 3309
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 3310
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3311
    const/4 v8, 0x1

    goto :goto_1

    .line 3289
    :cond_8
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v13, :cond_5

    .line 3291
    const/4 v7, 0x0

    .line 3292
    .local v7, "needSaveConfig":Z
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 3293
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 3294
    const/4 v7, 0x1

    .line 3296
    :cond_9
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 3297
    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 3298
    const/4 v7, 0x1

    .line 3300
    :cond_a
    if-eqz v7, :cond_b

    .line 3301
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v13, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    .line 3302
    :cond_b
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v13, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3303
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 3317
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "needSaveConfig":Z
    .end local v10    # "notQuotedSSID":Ljava/lang/String;
    :cond_c
    if-eqz v8, :cond_d

    .line 3318
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3321
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3322
    .local v9, "newSSIDsList":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "value$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3323
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3325
    .end local v11    # "value":Ljava/lang/String;
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 3246
    return-void
.end method

.method public getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5513
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v4

    .line 5515
    .local v4, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    const-string/jumbo v9, "WifiPolicyService"

    const-string/jumbo v10, "getAllSsidBlacklist"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5517
    if-nez v4, :cond_0

    .line 5518
    return-object v1

    .line 5520
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 5522
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "uid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5523
    .local v6, "uid":Ljava/lang/Integer;
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 5524
    .local v5, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string/jumbo v10, "BLACKLIST"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5525
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5526
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidBlacklist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5527
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5531
    .end local v0    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    .end local v5    # "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "uid":Ljava/lang/Integer;
    :cond_2
    return-object v1
.end method

.method public getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5537
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v4

    .line 5539
    .local v4, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    const-string/jumbo v9, "WifiPolicyService"

    const-string/jumbo v10, "getAllSsidWhitelist"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5541
    if-nez v4, :cond_0

    .line 5542
    return-object v1

    .line 5544
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 5546
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "uid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5547
    .local v6, "uid":Ljava/lang/Integer;
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 5548
    .local v5, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string/jumbo v10, "WHITELIST"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5549
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5550
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidWhitelist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5551
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5555
    .end local v0    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    .end local v5    # "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "uid":Ljava/lang/Integer;
    :cond_2
    return-object v1
.end method

.method public getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4651
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4653
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v1

    .line 4654
    .local v1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v1, :cond_0

    .line 4655
    return-object v6

    .line 4657
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4658
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4660
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/wifi/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4661
    .local v2, "uid":Ljava/lang/Integer;
    new-instance v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 4662
    .local v5, "wci":Lcom/samsung/android/knox/net/wifi/WifiControlInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4663
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string/jumbo v8, "BLACKLIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 4664
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4667
    .end local v2    # "uid":Ljava/lang/Integer;
    .end local v5    # "wci":Lcom/samsung/android/knox/net/wifi/WifiControlInfo;
    :cond_1
    return-object v0
.end method

.method public getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4864
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4866
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v1

    .line 4867
    .local v1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v1, :cond_0

    .line 4868
    return-object v6

    .line 4870
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4871
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4873
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/wifi/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4874
    .local v2, "uid":Ljava/lang/Integer;
    new-instance v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 4875
    .local v5, "wci":Lcom/samsung/android/knox/net/wifi/WifiControlInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4876
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string/jumbo v8, "WHITELIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 4877
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4880
    .end local v2    # "uid":Ljava/lang/Integer;
    .end local v5    # "wci":Lcom/samsung/android/knox/net/wifi/WifiControlInfo;
    :cond_1
    return-object v0
.end method

.method public getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2739
    const/4 v0, 0x1

    .line 2740
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2741
    const-string/jumbo v6, "allowUserChanges"

    .line 2740
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2743
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2744
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 2745
    move v0, v1

    .line 2749
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2646
    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    .line 2647
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p3

    .line 2649
    :cond_0
    const/4 v0, 0x1

    .line 2650
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2651
    const-string/jumbo v6, "allowUserProfiles"

    .line 2650
    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2652
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2653
    .local v1, "value":Z
    if-nez v1, :cond_1

    .line 2654
    move v0, v1

    .line 2658
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 2659
    const v4, 0x1040915

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2662
    :cond_3
    return v0
.end method

.method public getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2687
    const/4 v0, 0x1

    .line 2688
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2689
    const-string/jumbo v6, "allowAutomaticConnection"

    .line 2688
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2690
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2691
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 2692
    move v0, v1

    .line 2696
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2257
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2258
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2259
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aux$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2260
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2262
    .end local v0    # "aux":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2874
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2875
    const-string/jumbo v6, "minimumRequiredSecurity"

    .line 2874
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2876
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2877
    .local v0, "ret":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2878
    .local v1, "value":I
    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v4

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 2879
    move v0, v1

    goto :goto_0

    .line 2882
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method public getNetworkAnonymousIdValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1574
    const-string/jumbo v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCaCertification(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1506
    const-string/jumbo v1, "ca_cert"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1508
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    const-string/jumbo v1, "keystore://CACERT_"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1510
    :cond_0
    return-object v0

    .line 1512
    :cond_1
    return-object v2
.end method

.method public getNetworkClientCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1522
    const-string/jumbo v1, "client_cert"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1524
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    const-string/jumbo v1, "keystore://USRCERT_"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1526
    :cond_0
    return-object v0

    .line 1528
    :cond_1
    return-object v2
.end method

.method public getNetworkDHCPEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2342
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2344
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2345
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2346
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2348
    :cond_1
    return v1
.end method

.method public getNetworkEAPType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1483
    const-string/jumbo v0, "eap"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkGateway(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2440
    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1567
    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2432
    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkKeystoreEngineId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 5489
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5491
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5492
    return v3

    .line 5495
    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5497
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 5498
    return v3

    .line 5500
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v1

    .line 5501
    .local v1, "engine_id_str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5502
    const/4 v2, 0x1

    return v2

    .line 5503
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5504
    const/4 v2, 0x2

    return v2

    .line 5506
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public getNetworkLinkSecurity(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 945
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1247
    .local v0, "callingUid":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1248
    return-object v3

    .line 1250
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1251
    .local v1, "enterprise":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1252
    const-string/jumbo v2, "*"

    return-object v2

    .line 1254
    :cond_1
    return-object v3
.end method

.method public getNetworkPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1556
    const-string/jumbo v1, "password"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1558
    const-string/jumbo v1, "*"

    return-object v1

    .line 1560
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkPhase2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1492
    const-string/jumbo v1, "phase2"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1493
    .local v0, "phase2":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1494
    const-string/jumbo v1, "auth="

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1496
    :cond_0
    return-object v2
.end method

.method public getNetworkPrimaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2448
    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1538
    const-string/jumbo v1, "key_id"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1540
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    const-string/jumbo v1, "keystore://USRPKEY_"

    .line 1542
    const-string/jumbo v2, ""

    .line 1541
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1544
    :cond_0
    const-string/jumbo v1, "USRPKEY_"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1546
    :cond_1
    return-object v2
.end method

.method public getNetworkProxyEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5105
    return v2

    .line 5107
    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5108
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 5109
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v3, v4, :cond_1

    .line 5110
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_2

    .line 5109
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 5110
    goto :goto_0

    .line 5112
    :cond_3
    return v2
.end method

.method public getNetworkProxyHostName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5174
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5177
    return-object v8

    .line 5180
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    .line 5181
    const-string/jumbo v4, "adminUid"

    aput-object v4, v0, v6

    const-string/jumbo v4, "networkSSID"

    aput-object v4, v0, v7

    .line 5183
    .local v0, "col":[Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 5184
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 5186
    .local v3, "val":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    .line 5187
    const-string/jumbo v4, "networProxyName"

    aput-object v4, v2, v6

    .line 5189
    .local v2, "retCol":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5190
    const-string/jumbo v5, "WIFI_CONF"

    .line 5189
    invoke-virtual {v4, v5, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5192
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 5193
    :cond_1
    return-object v8

    .line 5195
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networProxyName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNetworkProxyPort(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5257
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5260
    return v6

    .line 5263
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    .line 5264
    const-string/jumbo v4, "adminUid"

    aput-object v4, v0, v6

    const-string/jumbo v4, "networkSSID"

    aput-object v4, v0, v7

    .line 5266
    .local v0, "col":[Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 5267
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 5269
    .local v3, "val":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    .line 5270
    const-string/jumbo v4, "networkProxyPort"

    aput-object v4, v2, v6

    .line 5272
    .local v2, "retCol":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5273
    const-string/jumbo v5, "WIFI_CONF"

    .line 5272
    invoke-virtual {v4, v5, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5275
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 5276
    :cond_1
    return v6

    .line 5278
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkProxyPort"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4
.end method

.method public getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 627
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 630
    const-string/jumbo v4, "networkSSID"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 632
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 633
    const-string/jumbo v5, "WIFI_CONF"

    .line 632
    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 634
    .local v1, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 635
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    :cond_0
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2456
    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2464
    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1166
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1175
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1184
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1193
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1016
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1019
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1021
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2954
    const/4 v0, 0x0

    .line 2955
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2956
    const-string/jumbo v6, "passwordHidden"

    .line 2955
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2958
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "ret":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2959
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 2960
    move v0, v1

    .local v0, "ret":Z
    goto :goto_0

    .line 2963
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2789
    const/4 v0, 0x1

    .line 2790
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2791
    const-string/jumbo v6, "promptCredentials"

    .line 2790
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2793
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2794
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 2795
    move v0, v1

    .line 2799
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public getUrlsFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5457
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5459
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5460
    return-object v11

    .line 5463
    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    .line 5464
    const-string/jumbo v7, "adminUid"

    aput-object v7, v1, v9

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v1, v10

    .line 5466
    .local v1, "col":[Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    .line 5467
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 5469
    .local v6, "val":[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    .line 5470
    const-string/jumbo v7, "networkProxyExclList"

    aput-object v7, v5, v9

    .line 5472
    .local v5, "retCol":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5473
    const-string/jumbo v8, "WIFI_CONF"

    .line 5472
    invoke-virtual {v7, v8, v1, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5474
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5475
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_2

    .line 5476
    :cond_1
    return-object v4

    .line 5479
    :cond_2
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkProxyExclList"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5480
    .local v3, "exclusionList":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5481
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5482
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5484
    .end local v0    # "array":[Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4241
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4246
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4246
    return-object v2

    .line 4247
    :catchall_0
    move-exception v2

    .line 4248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4247
    throw v2
.end method

.method public getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1969
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1970
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1972
    .local v0, "adminUid":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1973
    const/4 v10, 0x0

    return-object v10

    .line 1976
    :cond_0
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    .line 1977
    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v2, v11

    const-string/jumbo v10, "networkSSID"

    const/4 v11, 0x1

    aput-object v10, v2, v11

    .line 1979
    .local v2, "col":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    .line 1980
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 1982
    .local v9, "val":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1983
    const-string/jumbo v11, "WIFI_CONF"

    const/4 v12, 0x0

    .line 1982
    invoke-virtual {v10, v11, v2, v9, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1986
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1d

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-eqz v10, :cond_1d

    .line 1987
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1991
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "networkEngineID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1992
    .local v5, "engineid":Ljava/lang/Integer;
    new-instance v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_0
    invoke-direct {v7, v10}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(I)V

    .line 1994
    .local v7, "ret":Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    const-string/jumbo v10, "networkClientCertification"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1995
    const-string/jumbo v10, "networkClientCertification"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, "certificateAlias":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1999
    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2000
    .local v8, "storageName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2001
    new-instance v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    .end local v7    # "ret":Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    invoke-direct {v7, v8}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(Ljava/lang/String;)V

    .line 2004
    .restart local v7    # "ret":Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 2014
    .end local v1    # "certificateAlias":Ljava/lang/String;
    .end local v8    # "storageName":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v10, "networkSSID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2015
    const-string/jumbo v10, "networkSSID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 2017
    :cond_2
    const-string/jumbo v10, "networkPSK"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2018
    const-string/jumbo v10, "networkPSK"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 2020
    :cond_3
    const-string/jumbo v10, "networkPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2021
    const-string/jumbo v10, "networkPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    .line 2023
    :cond_4
    const-string/jumbo v10, "networkWEPKey1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2024
    const-string/jumbo v10, "networkWEPKey1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 2026
    :cond_5
    const-string/jumbo v10, "networkWEPKey2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2027
    const-string/jumbo v10, "networkWEPKey2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 2029
    :cond_6
    const-string/jumbo v10, "networkWEPKey3"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2030
    const-string/jumbo v10, "networkWEPKey3"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 2032
    :cond_7
    const-string/jumbo v10, "networkWEPKey4"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2033
    const-string/jumbo v10, "networkWEPKey4"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 2035
    :cond_8
    const-string/jumbo v10, "networkWEPKeyId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2036
    const-string/jumbo v10, "networkWEPKeyId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 2038
    :cond_9
    const-string/jumbo v10, "networkIdentity"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2039
    const-string/jumbo v10, "networkIdentity"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 2041
    :cond_a
    const-string/jumbo v10, "networkAnonymousId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2042
    const-string/jumbo v10, "networkAnonymousId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 2044
    :cond_b
    const-string/jumbo v10, "networkPhase1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2045
    const-string/jumbo v10, "networkPhase1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    .line 2047
    :cond_c
    const-string/jumbo v10, "networkPhase2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2048
    const-string/jumbo v10, "networkPhase2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 2050
    :cond_d
    const-string/jumbo v10, "networkCaCertificate"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2051
    const-string/jumbo v10, "networkCaCertificate"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 2052
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 2053
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string/jumbo v11, "keystore://CACERT_"

    .line 2054
    const-string/jumbo v12, ""

    .line 2053
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 2057
    :cond_e
    const-string/jumbo v10, "networkPrivateKey"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2058
    const-string/jumbo v10, "networkPrivateKey"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 2059
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 2061
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v11, "keystore://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 2062
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v11, "keystore://USRPKEY_"

    .line 2063
    const-string/jumbo v12, ""

    .line 2062
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 2073
    :cond_f
    :goto_2
    sget-object v10, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 2074
    const-string/jumbo v10, "networkStaticIpEnabled"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2075
    const-string/jumbo v10, "networkStaticIpEnabled"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    .line 2077
    :cond_10
    const-string/jumbo v10, "networkStaticIp"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2078
    const-string/jumbo v10, "networkStaticIp"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 2080
    :cond_11
    const-string/jumbo v10, "networkStaticGateway"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2081
    const-string/jumbo v10, "networkStaticGateway"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 2083
    :cond_12
    const-string/jumbo v10, "networkStaticPrimaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2084
    const-string/jumbo v10, "networkStaticPrimaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 2086
    :cond_13
    const-string/jumbo v10, "networkStaticSecondaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2087
    const-string/jumbo v10, "networkStaticSecondaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 2089
    :cond_14
    const-string/jumbo v10, "networkStaticSubnetMask"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 2090
    const-string/jumbo v10, "networkStaticSubnetMask"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 2092
    :cond_15
    const-string/jumbo v10, "networkProxyState"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2093
    const-string/jumbo v10, "networkProxyState"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 2095
    :cond_16
    const-string/jumbo v10, "networProxyName"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2096
    const-string/jumbo v10, "networProxyName"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 2098
    :cond_17
    const-string/jumbo v10, "networkProxyPort"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2099
    const-string/jumbo v10, "networkProxyPort"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    .line 2101
    :cond_18
    const-string/jumbo v10, "networkProxyExclList"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 2102
    const-string/jumbo v10, "networkProxyExclList"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2103
    .local v6, "exclList":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 2105
    .end local v6    # "exclList":Ljava/lang/String;
    :cond_19
    const-string/jumbo v10, "networkProxyUsername"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 2106
    const-string/jumbo v10, "networkProxyUsername"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    .line 2108
    :cond_1a
    const-string/jumbo v10, "networkProxyPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2109
    const-string/jumbo v10, "networkProxyPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    .line 2111
    :cond_1b
    const-string/jumbo v10, "networkProxyPacUrl"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2112
    const-string/jumbo v10, "networkProxyPacUrl"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 2114
    :cond_1c
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 2115
    return-object v7

    .line 1989
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "engineid":Ljava/lang/Integer;
    .end local v7    # "ret":Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    :cond_1d
    const/4 v10, 0x0

    return-object v10

    .line 1992
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "engineid":Ljava/lang/Integer;
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2007
    .restart local v1    # "certificateAlias":Ljava/lang/String;
    .restart local v7    # "ret":Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    :cond_1f
    if-eqz v1, :cond_1

    .line 2008
    const-string/jumbo v10, "keystore://USRCERT_"

    .line 2009
    const-string/jumbo v11, ""

    .line 2008
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    goto/16 :goto_1

    .line 2064
    .end local v1    # "certificateAlias":Ljava/lang/String;
    :cond_20
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 2066
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 2069
    :cond_21
    iget-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v11, "USRPKEY_"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public getWifiSsidRestrictionList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5049
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5050
    if-nez p2, :cond_0

    .line 5051
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string/jumbo v2, "BLACKLIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 5053
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string/jumbo v2, "WHITELIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 5056
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3237
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 3238
    .local v0, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 2273
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2274
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v0

    .line 2275
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 2276
    const v1, 0x1040912

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2279
    :cond_0
    return v0

    .line 2273
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 2912
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v0

    .line 2913
    .local v0, "ret":Z
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2914
    const v1, 0x1040914

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2917
    :cond_0
    return v0
.end method

.method public isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4365
    const/4 v0, 0x1

    .line 4366
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 4367
    const-string/jumbo v6, "allowOpenWifi"

    .line 4366
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4368
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4369
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 4370
    move v0, v1

    .line 4374
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2585
    const/4 v0, 0x1

    .line 2586
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2587
    const-string/jumbo v6, "allowWifi"

    .line 2586
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2589
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2590
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 2591
    move v0, v1

    .line 2607
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    if-nez v0, :cond_2

    .line 2608
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "isWifiAllowed() : Wifi is not allowed by MDM. "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_2
    return v0
.end method

.method public isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4298
    const/4 v0, 0x1

    .line 4299
    .local v0, "ret":Z
    sget-boolean v4, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    if-eqz v4, :cond_0

    .line 4300
    return v0

    .line 4301
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 4302
    const-string/jumbo v6, "allowWifiApSettingModification"

    .line 4301
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4303
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4304
    .local v1, "value":Z
    if-nez v1, :cond_1

    .line 4305
    move v0, v1

    .line 4309
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_2
    return v0
.end method

.method public isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4933
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4934
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v0

    return v0
.end method

.method public isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 5032
    const/4 v0, 0x1

    .line 5033
    .local v0, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 5034
    const-string/jumbo v6, "allowWifiStateChanges"

    .line 5033
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5036
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5037
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 5038
    move v0, v1

    .line 5042
    .end local v0    # "ret":Z
    .end local v1    # "value":Z
    :cond_1
    if-nez v0, :cond_2

    .line 5043
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "isWifiStateChangeAllowed() : Changing wifi state is not allowed by MDM. "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5045
    :cond_2
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 5672
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 356
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 361
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 362
    const/4 v2, 0x0

    .line 361
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 364
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 365
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 366
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    .line 360
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 370
    return-void
.end method

.method public removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2214
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2216
    if-nez p2, :cond_0

    .line 2217
    return v3

    .line 2219
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 2222
    const-string/jumbo v0, "BLOCKED_NETWORKS"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2224
    const/4 v9, 0x1

    .line 2225
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2227
    .local v10, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2231
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 2233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Admin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2234
    const-string/jumbo v2, " has allowed access to Wifi SSID: "

    .line 2233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2234
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2232
    const/4 v0, 0x5

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2236
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 2239
    .local v12, "userId":I
    if-eqz v9, :cond_3

    if-nez v12, :cond_3

    .line 2240
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2242
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v0, "Wifi"

    const-string/jumbo v1, "removeBlockedNetwork"

    invoke-virtual {v8, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const-string/jumbo v0, "WifiPolicyService"

    const-string/jumbo v1, "addBlockedNremoveBlockedNetworketwork calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_1
    return v9

    .line 2228
    .end local v12    # "userId":I
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_0

    .line 2244
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 2245
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeUrlFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 5360
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5362
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5363
    :cond_0
    const/4 v14, 0x0

    return v14

    .line 5366
    :cond_1
    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/String;

    .line 5367
    const-string/jumbo v14, "adminUid"

    const/4 v15, 0x0

    aput-object v14, v2, v15

    const-string/jumbo v14, "networkSSID"

    const/4 v15, 0x1

    aput-object v14, v2, v15

    .line 5369
    .local v2, "col":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v11, v14, [Ljava/lang/String;

    .line 5370
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v11, v15

    .line 5372
    .local v11, "val":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v10, v14, [Ljava/lang/String;

    .line 5373
    const-string/jumbo v14, "networkProxyExclList"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 5374
    const-string/jumbo v14, "networkManualProxyEnabled"

    const/4 v15, 0x1

    aput-object v14, v10, v15

    .line 5375
    const-string/jumbo v14, "networkProxyState"

    const/4 v15, 0x2

    aput-object v14, v10, v15

    .line 5377
    .local v10, "retCol":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5378
    const-string/jumbo v15, "WIFI_CONF"

    .line 5377
    invoke-virtual {v14, v15, v2, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 5379
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_3

    .line 5380
    :cond_2
    const/4 v14, 0x0

    return v14

    .line 5383
    :cond_3
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkProxyExclList"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5384
    .local v8, "previousList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5385
    const/4 v14, 0x0

    return v14

    .line 5386
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5387
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, ","

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5388
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5390
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 5391
    const/4 v14, 0x0

    return v14

    .line 5393
    :cond_5
    const-string/jumbo v7, ""

    .line 5394
    .local v7, "newExclusionList":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "value$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5395
    .local v12, "value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 5396
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5400
    .end local v12    # "value":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    .line 5401
    .local v9, "ret":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5402
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "networkProxyExclList"

    invoke-virtual {v4, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "WIFI_CONF"

    invoke-virtual {v14, v15, v2, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 5406
    .local v9, "ret":Z
    if-eqz v9, :cond_9

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkManualProxyEnabled"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    .line 5407
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkProxyState"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 5408
    :cond_8
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 5409
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5411
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    return v9
.end method

.method public removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4540
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4541
    const/4 v14, 0x1

    .line 4543
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4544
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4546
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4547
    :cond_0
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "removeWifiSsidFromBlackList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4548
    const/4 v2, 0x0

    return v2

    .line 4551
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v14    # "result":Z
    .local v16, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4552
    .local v15, "s":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    .line 4553
    const-string/jumbo v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string/jumbo v2, "WIFI_SSID"

    const/4 v3, 0x1

    aput-object v2, v9, v3

    .line 4554
    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const/4 v3, 0x2

    aput-object v2, v9, v3

    .line 4556
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4557
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v18, v3

    const/4 v2, 0x1

    aput-object v15, v18, v2

    const-string/jumbo v2, "BLACKLIST"

    const/4 v3, 0x2

    aput-object v2, v18, v3

    .line 4559
    .local v18, "values":[Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 4560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4561
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4560
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    .line 4562
    .local v14, "result":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 4563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4566
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4567
    const-string/jumbo v3, " has removed SSID "

    .line 4566
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4567
    const-string/jumbo v3, " from the restriction blacklist."

    .line 4566
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4567
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4565
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4569
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4559
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 4568
    .restart local v12    # "psToken":J
    .restart local v14    # "result":Z
    :catchall_0
    move-exception v2

    .line 4569
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4568
    throw v2

    .line 4573
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    .end local v15    # "s":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4574
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4575
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 4576
    .local v17, "userId":I
    if-eqz v14, :cond_5

    if-nez v17, :cond_5

    .line 4578
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "removeWifiSsidFromBlackList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4583
    :cond_5
    :goto_2
    return v14

    .line 4579
    :catch_0
    move-exception v10

    .line 4580
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4754
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4755
    const/4 v14, 0x1

    .line 4757
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4759
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4760
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 4763
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v14    # "result":Z
    .local v16, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4764
    .local v15, "s":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    .line 4765
    const-string/jumbo v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string/jumbo v2, "WIFI_SSID"

    const/4 v3, 0x1

    aput-object v2, v9, v3

    .line 4766
    const-string/jumbo v2, "WIFI_LIST_TYPE"

    const/4 v3, 0x2

    aput-object v2, v9, v3

    .line 4768
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4769
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v18, v3

    const/4 v2, 0x1

    aput-object v15, v18, v2

    const-string/jumbo v2, "WHITELIST"

    const/4 v3, 0x2

    aput-object v2, v18, v3

    .line 4771
    .local v18, "values":[Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 4772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4773
    const-string/jumbo v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 4772
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    .line 4774
    .local v14, "result":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 4775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4778
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4779
    const-string/jumbo v3, " has removed SSID "

    .line 4778
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4779
    const-string/jumbo v3, " from the restriction whitelist."

    .line 4778
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4779
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4777
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4781
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4771
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 4780
    .restart local v12    # "psToken":J
    .restart local v14    # "result":Z
    :catchall_0
    move-exception v2

    .line 4781
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4780
    throw v2

    .line 4785
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v12    # "psToken":J
    .end local v14    # "result":Z
    .end local v15    # "s":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4786
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4787
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 4788
    .local v17, "userId":I
    if-eqz v14, :cond_5

    if-nez v17, :cond_5

    .line 4790
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "removeWifiSsidFromWhiteList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4795
    :cond_5
    :goto_2
    return v14

    .line 4791
    :catch_0
    move-exception v10

    .line 4792
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;
    .locals 11
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3814
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    .line 3816
    const/4 v3, 0x0

    .line 3817
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    const/16 v7, 0x8

    new-array v5, v7, [Ljava/lang/String;

    .line 3818
    const-string/jumbo v7, "networkProxyState"

    aput-object v7, v5, v9

    .line 3819
    const-string/jumbo v7, "networkManualProxyEnabled"

    aput-object v7, v5, v10

    .line 3820
    const-string/jumbo v7, "networProxyName"

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 3821
    const-string/jumbo v7, "networkProxyPort"

    const/4 v8, 0x3

    aput-object v7, v5, v8

    .line 3822
    const-string/jumbo v7, "networkProxyExclList"

    const/4 v8, 0x4

    aput-object v7, v5, v8

    .line 3823
    const-string/jumbo v7, "networkProxyPacUrl"

    const/4 v8, 0x5

    aput-object v7, v5, v8

    .line 3824
    const-string/jumbo v7, "networkProxyUsername"

    const/4 v8, 0x6

    aput-object v7, v5, v8

    .line 3825
    const-string/jumbo v7, "networkProxyPassword"

    const/4 v8, 0x7

    aput-object v7, v5, v8

    .line 3827
    .local v5, "returnColums":[Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3828
    .local v6, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkSSID"

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3831
    const-string/jumbo v8, "WIFI_CONF"

    .line 3830
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 3832
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 3834
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_1

    .line 3835
    :cond_0
    return-object v3

    .line 3837
    :cond_1
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3840
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkProxyState"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 3843
    .local v4, "proxyState":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_7

    .line 3845
    :cond_2
    const-string/jumbo v7, "networkManualProxyEnabled"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3846
    .local v2, "proxyEnabled":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 3847
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3850
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 3851
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .line 3869
    .end local v2    # "proxyEnabled":Ljava/lang/Integer;
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_4
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_6

    .line 3870
    const-string/jumbo v7, "networkProxyUsername"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3871
    const-string/jumbo v7, "networkProxyUsername"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    .line 3873
    :cond_5
    const-string/jumbo v7, "networkProxyPassword"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3874
    const-string/jumbo v7, "networkProxyPassword"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    .line 3878
    :cond_6
    return-object v3

    .line 3855
    .restart local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 3859
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    .line 3862
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    .line 3855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 1916
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    .line 1918
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1920
    .local v1, "authConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    const/4 v4, 0x0

    .line 1921
    .local v4, "credentials":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1939
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;

    move-result-object v5

    .line 1940
    .local v5, "enterpriseProxy":Landroid/net/ProxyInfo;
    if-eqz v5, :cond_1

    .line 1941
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v11

    .line 1942
    .local v11, "username":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 1944
    .local v8, "password":Ljava/lang/String;
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1950
    .end local v4    # "credentials":Ljava/lang/String;
    .end local v5    # "enterpriseProxy":Landroid/net/ProxyInfo;
    .end local v8    # "password":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v4

    .line 1922
    .restart local v4    # "credentials":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "credentials":Ljava/lang/String;
    .local v3, "config$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/AuthConfig;

    .line 1923
    .local v2, "config":Lcom/samsung/android/knox/net/AuthConfig;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 1924
    .local v6, "hostDatabase":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v9

    .line 1926
    .local v9, "portDatabase":I
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v10

    .line 1927
    .local v10, "userDatabase":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 1929
    .local v7, "passDatabase":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v0, p3

    if-ne v9, v0, :cond_4

    .line 1930
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "credentials":Ljava/lang/String;
    goto :goto_2

    .line 1932
    .end local v4    # "credentials":Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1933
    sget v12, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v9, v12, :cond_3

    .line 1934
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "credentials":Ljava/lang/String;
    goto :goto_3

    .line 1941
    .end local v2    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v6    # "hostDatabase":Ljava/lang/String;
    .end local v7    # "passDatabase":Ljava/lang/String;
    .end local v9    # "portDatabase":I
    .end local v10    # "userDatabase":Ljava/lang/String;
    .local v4, "credentials":Ljava/lang/String;
    .restart local v5    # "enterpriseProxy":Landroid/net/ProxyInfo;
    :cond_5
    const-string/jumbo v11, ""

    .restart local v11    # "username":Ljava/lang/String;
    goto/16 :goto_0

    .line 1942
    :cond_6
    const-string/jumbo v8, ""

    .restart local v8    # "password":Ljava/lang/String;
    goto :goto_1

    .line 1945
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "credentials":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2710
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2711
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2712
    const-string/jumbo v7, "allowUserChanges"

    .line 2711
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2715
    .local v2, "ret":Z
    const-string/jumbo v4, "ALLOW_USER_CHANGES"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2717
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2718
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2719
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2721
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "setAllowUserPolicyChanges"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2722
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setAllowUserPolicyChanges calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2723
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2724
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2616
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 2619
    .local v4, "userId":I
    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    .line 2620
    return v6

    .line 2623
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "WIFI"

    .line 2624
    const-string/jumbo v8, "allowUserProfiles"

    .line 2623
    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2627
    .local v2, "ret":Z
    const-string/jumbo v5, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2629
    const-string/jumbo v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowUserProfiles : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    .line 2632
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2634
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v3, 0x0

    .line 2635
    .local v3, "showMsg":Z
    :try_start_0
    const-string/jumbo v5, "Wifi"

    const-string/jumbo v6, "setAllowUserProfiles"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2636
    const-string/jumbo v5, "WifiPolicyService"

    const-string/jumbo v6, "setAllowUserProfiles calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "showMsg":Z
    :cond_1
    :goto_0
    return v2

    .line 2637
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "showMsg":Z
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2667
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2668
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2669
    const-string/jumbo v7, "allowAutomaticConnection"

    .line 2668
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2670
    .local v2, "ret":Z
    const-string/jumbo v4, "ALLOW_AUTOMATIC_CONNECTION"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2672
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2673
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2674
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2676
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "setAutomaticConnectionToWifi"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2677
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setAutomaticConnectionToWifi calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2678
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2679
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "secType"    # I

    .prologue
    .line 2804
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2807
    if-ltz p2, :cond_0

    const/16 v18, 0x1e

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 2809
    :cond_0
    const-string/jumbo v18, "WifiPolicyService"

    const-string/jumbo v19, "security level not supported"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    const/16 v18, 0x0

    return v18

    .line 2808
    :cond_1
    sget-object v18, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v18, v18, p2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2814
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 2817
    .local v8, "lastSec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    const-string/jumbo v20, "WIFI"

    .line 2818
    const-string/jumbo v21, "minimumRequiredSecurity"

    .line 2817
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    .line 2821
    .local v12, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "WIFI"

    .line 2822
    const-string/jumbo v20, "minimumRequiredSecurity"

    .line 2821
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 2824
    .local v17, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 2825
    .local v11, "newSec":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "value$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2826
    .local v13, "value":I
    invoke-static {v13}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v18

    invoke-static {v11}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 2827
    move v11, v13

    goto :goto_0

    .line 2831
    .end local v13    # "value":I
    :cond_3
    const-string/jumbo v18, "MINIMUM_SECURITY_LEVEL"

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2839
    .local v14, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 2841
    .local v9, "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v9, :cond_6

    .line 2842
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "config$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2843
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2844
    .local v10, "netId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 2845
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 2846
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    .line 2848
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v18

    if-nez v18, :cond_4

    .line 2850
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_1

    .line 2855
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "config$iterator":Ljava/util/Iterator;
    .end local v9    # "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v10    # "netId":I
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    return v12
.end method

.method public setNetworkAnonymousIdValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1412
    const-string/jumbo v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1452
    const-string/jumbo v0, "ca_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1453
    .local v7, "ret":Z
    if-eqz v7, :cond_0

    .line 1454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1457
    .local v8, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has set Enterprise Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1459
    const-string/jumbo v1, " Certificate Authority to "

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1460
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1456
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1465
    .end local v8    # "psToken":J
    :cond_0
    return v7

    .line 1461
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    .line 1462
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1461
    throw v0
.end method

.method public setNetworkClientCertification(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1430
    const-string/jumbo v0, "client_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1431
    .local v7, "ret":Z
    if-eqz v7, :cond_0

    .line 1432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1435
    .local v8, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has set Enterprise Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1437
    const-string/jumbo v1, " Client Certification to "

    .line 1436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1438
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1434
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    .end local v8    # "psToken":J
    :cond_0
    return v7

    .line 1439
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    .line 1440
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1439
    throw v0
.end method

.method public setNetworkDHCPEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 2325
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0

    .line 2327
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2328
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2330
    const/4 v2, 0x0

    .line 2331
    .local v2, "ret":Z
    if-nez v1, :cond_0

    return v2

    .line 2333
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 2334
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 2335
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2338
    :cond_1
    return v2
.end method

.method public setNetworkGateway(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2436
    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1403
    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2428
    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 870
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 871
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 873
    .local v11, "callingUid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 875
    .local v12, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    .line 877
    .local v15, "previousSecurityLevel":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 879
    const/16 v18, 0x0

    .line 880
    .local v18, "ret":Z
    if-nez v12, :cond_0

    return v18

    .line 882
    :cond_0
    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    .line 884
    .local v13, "currentSecurityLevel":I
    const/4 v4, -0x1

    if-eq v15, v4, :cond_1

    .line 885
    const/4 v4, -0x1

    if-ne v13, v4, :cond_2

    .line 886
    :cond_1
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "security level not supported"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v4, 0x0

    return v4

    .line 890
    :cond_2
    const/16 v18, 0x1

    .line 894
    if-eq v15, v13, :cond_4

    .line 895
    const/4 v4, 0x5

    if-lt v15, v4, :cond_3

    .line 896
    const/4 v4, 0x5

    if-ge v13, v4, :cond_4

    .line 897
    :cond_3
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "security level changed - removing previous network configuration"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v18

    .line 899
    .local v18, "ret":Z
    const/4 v4, -0x1

    iput v4, v12, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 902
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    .end local v18    # "ret":Z
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int v18, v18, v4

    .line 908
    .restart local v18    # "ret":Z
    if-eqz v18, :cond_7

    .line 914
    const-string/jumbo v4, "NONE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 915
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v14, v4, :cond_6

    .line 916
    iget-object v4, v12, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v14

    if-eqz v4, :cond_5

    .line 917
    iget-object v4, v12, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, v14

    .line 915
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 921
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 924
    const-string/jumbo v4, "ENTERPRISE_SSIDS"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 925
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 928
    .local v16, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "WifiPolicy"

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has set Enterprise Network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 930
    const-string/jumbo v5, " security to "

    .line 929
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 931
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 927
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    .end local v16    # "psToken":J
    :cond_7
    return v18

    .line 932
    .restart local v16    # "psToken":J
    :catchall_0
    move-exception v4

    .line 933
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    throw v4
.end method

.method public setNetworkPSK(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1223
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1224
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1226
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1227
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1229
    const/4 v2, 0x0

    .line 1230
    .local v2, "ret":Z
    if-nez v1, :cond_0

    return v2

    .line 1232
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1233
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 1234
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1237
    :cond_1
    return v2
.end method

.method public setNetworkPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1393
    const-string/jumbo v0, "WifiPolicyService"

    const-string/jumbo v1, " >>> setNetworkPassword "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string/jumbo v0, "password"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPhase2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1421
    const-string/jumbo v0, "phase2"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrimaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2444
    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1474
    const-string/jumbo v0, "key_id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkProxyEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 5079
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5080
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5082
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5083
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5086
    const/4 v2, 0x0

    .line 5087
    .local v2, "ret":Z
    if-nez v1, :cond_1

    return v2

    .line 5084
    .end local v2    # "ret":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 5089
    .restart local v2    # "ret":Z
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 5091
    .local v2, "ret":Z
    if-eqz v2, :cond_2

    .line 5094
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5095
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5098
    :cond_2
    return v2
.end method

.method public setNetworkProxyHostName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5142
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5143
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5145
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5146
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5148
    const/4 v4, 0x0

    .line 5149
    .local v4, "ret":Z
    if-nez v2, :cond_0

    return v4

    .line 5151
    :cond_0
    new-array v1, v9, [Ljava/lang/String;

    .line 5152
    const-string/jumbo v6, "adminUid"

    aput-object v6, v1, v7

    const-string/jumbo v6, "networkSSID"

    aput-object v6, v1, v8

    .line 5155
    .local v1, "col":[Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    .line 5156
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 5160
    .local v5, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5161
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "networProxyName"

    invoke-virtual {v3, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5162
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5165
    .local v4, "ret":Z
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    .line 5166
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5169
    :cond_1
    return v4
.end method

.method public setNetworkProxyPort(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5225
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5226
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5228
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5229
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5231
    const/4 v4, 0x0

    .line 5232
    .local v4, "ret":Z
    if-nez v2, :cond_0

    return v4

    .line 5234
    :cond_0
    new-array v1, v9, [Ljava/lang/String;

    .line 5235
    const-string/jumbo v6, "adminUid"

    aput-object v6, v1, v7

    const-string/jumbo v6, "networkSSID"

    aput-object v6, v1, v8

    .line 5238
    .local v1, "col":[Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    .line 5239
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 5243
    .local v5, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5244
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "networkProxyPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5245
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5248
    .local v4, "ret":Z
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    .line 5249
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5252
    :cond_1
    return v4
.end method

.method public setNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "isCCM"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 582
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    return v4

    .line 586
    :cond_1
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 589
    .local v7, "callingUid":I
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 590
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    return v3

    .line 595
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    return v4

    .line 599
    :cond_3
    invoke-direct {p0, v7, p2, p3, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 601
    const/4 v9, 0x0

    .line 602
    .local v9, "ret":Z
    if-nez v8, :cond_4

    return v9

    .line 604
    :cond_4
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    .line 605
    .local v9, "ret":Z
    if-eqz v9, :cond_5

    .line 606
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I

    .line 609
    const-string/jumbo v0, "ENTERPRISE_SSIDS"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 610
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 611
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 614
    .local v10, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has set Enterprise Network SSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    if-eqz p3, :cond_6

    const-string/jumbo v0, " with CCM."

    .line 615
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 613
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    .end local v6    # "userId":I
    .end local v10    # "psToken":J
    :cond_5
    return v9

    .line 616
    .restart local v6    # "userId":I
    .restart local v10    # "psToken":J
    :cond_6
    :try_start_1
    const-string/jumbo v0, "."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    .line 619
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    throw v0
.end method

.method public setNetworkSecondaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2452
    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2460
    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1109
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1119
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1129
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1139
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "keyId"    # I

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 975
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 977
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 978
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 980
    const/4 v2, 0x0

    .line 981
    .local v2, "ret":Z
    if-nez v1, :cond_0

    return v2

    .line 983
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 984
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 985
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 988
    :cond_1
    return v2
.end method

.method public setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 2929
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2931
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2933
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2934
    const-string/jumbo v7, "passwordHidden"

    .line 2933
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2935
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2936
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2938
    :try_start_0
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "setPasswordHidden"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2939
    const-string/jumbo v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    :cond_0
    :goto_0
    return v2

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2763
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2764
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2765
    const-string/jumbo v7, "promptCredentials"

    .line 2764
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2768
    .local v2, "ret":Z
    const-string/jumbo v4, "PROMPT_CREDENTIALS_ENABLED"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2769
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2770
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2771
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2773
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "setPromptCredentialsEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2774
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setPromptCredentialsEnabled calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2775
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 2478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2479
    const/4 v8, 0x1

    .line 2480
    .local v8, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2482
    .local v10, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v3, "WIFI"

    .line 2483
    const-string/jumbo v4, "allowWifi"

    .line 2482
    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2484
    .local v8, "success":Z
    if-eqz v8, :cond_0

    .line 2486
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Admin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2487
    const-string/jumbo v2, " has changed Wifi enabled to "

    .line 2486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2487
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2485
    const/4 v0, 0x5

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2491
    :cond_0
    const-string/jumbo v0, "WIFI_ALLOWED"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2492
    invoke-virtual {p0, p1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v7

    .line 2493
    .local v7, "isAllowed":Z
    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    .line 2494
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2498
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2500
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 2501
    .local v9, "userId":I
    if-eqz v8, :cond_1

    if-nez v9, :cond_1

    .line 2502
    invoke-direct {p0, v9, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 2505
    :cond_1
    return v8

    .line 2496
    .end local v9    # "userId":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2516
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2518
    new-instance v12, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2520
    .local v12, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2521
    const/4 v4, 0x0

    return v4

    .line 2523
    :cond_0
    const/4 v13, 0x1

    .line 2524
    .local v13, "ret":Z
    if-nez p2, :cond_2

    .line 2525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_1

    .line 2526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2527
    const-string/jumbo v7, "allowWifi"

    .line 2526
    move/from16 v0, p2

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 2528
    .local v13, "ret":Z
    const-string/jumbo v4, "WifiPolicyService"

    const-string/jumbo v5, "setWifiAllowed : mWifiManager = null"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    return v13

    .line 2531
    .local v13, "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2532
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v13

    .line 2533
    .local v13, "ret":Z
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2536
    .end local v13    # "ret":Z
    .end local v16    # "token":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "WIFI"

    .line 2537
    const-string/jumbo v7, "allowWifi"

    .line 2536
    move/from16 v0, p2

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v13, v4

    .line 2539
    .restart local v13    # "ret":Z
    const-string/jumbo v4, "WIFI_ALLOWED"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2541
    if-eqz v13, :cond_3

    .line 2542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2545
    .local v14, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "WifiPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2546
    const-string/jumbo v5, " has changed Wifi allowed to "

    .line 2545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2546
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2544
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2548
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    .end local v14    # "psToken":J
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 2552
    .local v18, "userId":I
    if-eqz v13, :cond_6

    if-nez v18, :cond_6

    .line 2557
    const/16 v22, 0x1

    .line 2558
    .local v22, "wifiPolicyStatus":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "WIFI"

    .line 2559
    const-string/jumbo v6, "allowWifi"

    .line 2558
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 2561
    .local v21, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "value$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 2562
    .local v19, "value":Z
    if-nez v19, :cond_4

    .line 2563
    move/from16 v22, v19

    .line 2567
    .end local v19    # "value":Z
    .end local v22    # "wifiPolicyStatus":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 2568
    const-string/jumbo v4, "Wifi"

    const-string/jumbo v5, "setWifiAllowed"

    move/from16 v0, v22

    invoke-virtual {v12, v4, v5, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2569
    const-string/jumbo v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2574
    .end local v20    # "value$iterator":Ljava/util/Iterator;
    .end local v21    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_6
    :goto_0
    return v13

    .line 2547
    .end local v18    # "userId":I
    .restart local v14    # "psToken":J
    :catchall_0
    move-exception v4

    .line 2548
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2547
    throw v4

    .line 2570
    .end local v14    # "psToken":J
    .restart local v18    # "userId":I
    :catch_0
    move-exception v11

    .line 2571
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "securityType"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 4135
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4137
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 4138
    :cond_0
    const-string/jumbo v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SSID("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") is null or empty or more than 32 characters"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    const/4 v8, 0x0

    return v8

    .line 4137
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_0

    .line 4143
    const-string/jumbo v8, "Open"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4150
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "Open"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4151
    const-string/jumbo v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Security Type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    const/4 v8, 0x0

    return v8

    .line 4144
    :cond_3
    const-string/jumbo v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Security Type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    const/4 v8, 0x0

    return v8

    .line 4157
    :cond_4
    const-string/jumbo v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4158
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-ge v8, v9, :cond_6

    .line 4159
    :cond_5
    const-string/jumbo v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Password("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4160
    const-string/jumbo v10, ") is null or empty or less than 8 characters for WPA PSK security type"

    .line 4159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    const/4 v8, 0x0

    return v8

    .line 4163
    :cond_6
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4166
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4167
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4168
    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 4169
    const-string/jumbo v8, ""

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4170
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 4171
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    .line 4173
    const-string/jumbo v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4174
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 4175
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 4176
    iput-object p4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4184
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4186
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4187
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_8

    .line 4188
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4189
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 4200
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4201
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4189
    return v8

    .line 4181
    .end local v6    # "token":J
    :cond_7
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 4196
    .restart local v6    # "token":J
    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    .line 4198
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v10, "com.android.settings"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4200
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4201
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4203
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 4204
    .local v5, "userId":I
    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    .line 4205
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4206
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4207
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4208
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4209
    invoke-interface {v3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4211
    :try_start_2
    const-string/jumbo v8, "Wifi"

    const-string/jumbo v9, "setWifiApSetting"

    invoke-virtual {v2, v8, v9, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 4212
    const-string/jumbo v8, "WifiPolicyService"

    const-string/jumbo v9, "setWifiApSetting calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4217
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :goto_1
    return v4

    .line 4199
    .end local v4    # "result":Z
    .end local v5    # "userId":I
    :catchall_0
    move-exception v8

    .line 4200
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4201
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4199
    throw v8

    .line 4213
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "result":Z
    .restart local v5    # "userId":I
    :catch_0
    move-exception v1

    .line 4214
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 30
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    .prologue
    .line 1623
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1624
    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1626
    .local v10, "callingUid":I
    if-nez p2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1627
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 1630
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v17, 0x1

    .line 1631
    .local v17, "isCCM":Z
    :goto_0
    if-eqz v17, :cond_2

    .line 1633
    :try_start_0
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "checking if admin has ccm enabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    .line 1634
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v16

    .line 1636
    .local v16, "iccm":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    if-eqz v16, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    .line 1646
    .end local v16    # "iccm":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/16 v19, 0x1

    .line 1647
    .local v19, "isUCM":Z
    :goto_1
    if-eqz v19, :cond_3

    .line 1648
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1649
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiProfile : UCMEngine, modify the alias to URI type"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1651
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1661
    :cond_3
    :goto_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1662
    const/4 v2, 0x0

    return v2

    .line 1630
    .end local v17    # "isCCM":Z
    .end local v19    # "isUCM":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 1637
    .restart local v16    # "iccm":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .restart local v17    # "isCCM":Z
    :cond_5
    :try_start_1
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "ccm service not initialized or ccm not enabled for calling admin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1638
    const/4 v2, 0x0

    return v2

    .line 1640
    .end local v16    # "iccm":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :catch_0
    move-exception v15

    .line 1641
    .local v15, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed taking IClientCertificateManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const/4 v2, 0x0

    return v2

    .line 1646
    .end local v15    # "ex":Landroid/os/RemoteException;
    :cond_6
    const/16 v19, 0x0

    goto :goto_1

    .line 1652
    .restart local v19    # "isUCM":Z
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1653
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_2

    .line 1656
    :cond_8
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "enforceUCMPermission failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const/4 v2, 0x0

    return v2

    .line 1665
    :cond_9
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    .line 1667
    .local v18, "isEnterprise":Z
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 1668
    .local v14, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v18, :cond_a

    iget-object v2, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1669
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "network belongs to another admin - cannot edit it"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const/4 v2, 0x0

    return v2

    .line 1673
    :cond_a
    const/16 v26, 0x0

    .line 1674
    .local v26, "shouldRemove":Z
    const/16 v27, 0x0

    .line 1677
    .local v27, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1678
    const/16 v26, 0x1

    .line 1682
    :cond_b
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v2, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1683
    .local v27, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v27, :cond_c

    const/4 v2, 0x0

    return v2

    .line 1685
    :cond_c
    if-eqz v27, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1686
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1688
    :cond_d
    if-eqz v27, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1689
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1691
    :cond_e
    if-eqz v27, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1692
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1694
    :cond_f
    if-eqz v27, :cond_10

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1695
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1697
    :cond_10
    if-eqz v27, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 1698
    move-object/from16 v0, p2

    iget v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1700
    :cond_11
    if-eqz v27, :cond_12

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1701
    const-string/jumbo v2, "password"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1703
    :cond_12
    if-eqz v27, :cond_13

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1704
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1706
    :cond_13
    if-eqz v27, :cond_14

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1707
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1709
    :cond_14
    if-eqz v27, :cond_15

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1710
    const-string/jumbo v2, "ca_cert"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1713
    :cond_15
    if-eqz v27, :cond_30

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1714
    const-string/jumbo v2, "client_cert"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1718
    :cond_16
    :goto_3
    if-eqz v27, :cond_17

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1719
    const-string/jumbo v2, "phase1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1721
    :cond_17
    if-eqz v27, :cond_18

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1722
    const-string/jumbo v2, "phase2"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1724
    :cond_18
    if-eqz v27, :cond_19

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1725
    const-string/jumbo v2, "identity"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1727
    :cond_19
    if-eqz v27, :cond_1a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1728
    const-string/jumbo v2, "anonymous_identity"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1730
    :cond_1a
    if-eqz v27, :cond_1b

    .line 1731
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1733
    :cond_1b
    if-eqz v27, :cond_1c

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1734
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticIp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1736
    :cond_1c
    if-eqz v27, :cond_1d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1737
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticGateway"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1739
    :cond_1d
    if-eqz v27, :cond_1e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1740
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticPrimaryDns"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1742
    :cond_1e
    if-eqz v27, :cond_1f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1743
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticSecondaryDns"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1745
    :cond_1f
    if-eqz v27, :cond_20

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1746
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticSubnetMask"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1748
    :cond_20
    if-eqz v27, :cond_21

    .line 1749
    move-object/from16 v0, p2

    iget v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1751
    :cond_21
    if-eqz v27, :cond_22

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1752
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1755
    :cond_22
    if-eqz v27, :cond_23

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v2, v3, :cond_23

    .line 1756
    move-object/from16 v0, p2

    iget v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1758
    :cond_23
    if-eqz v27, :cond_24

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    if-eqz v2, :cond_24

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1765
    :cond_24
    :goto_5
    if-eqz v27, :cond_25

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1766
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1768
    :cond_25
    if-eqz v27, :cond_26

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1769
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1771
    :cond_26
    if-eqz v27, :cond_27

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v2, :cond_27

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1789
    :cond_27
    if-eqz v27, :cond_28

    .line 1790
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 1792
    :cond_28
    if-eqz v27, :cond_29

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1793
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1796
    :cond_29
    const/16 v23, 0x1

    .line 1797
    .local v23, "ret":Z
    if-eqz v27, :cond_38

    .line 1798
    if-eqz v26, :cond_2a

    .line 1800
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v23

    .line 1804
    .end local v23    # "ret":Z
    :cond_2a
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1805
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 1808
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    and-int v23, v23, v2

    .line 1809
    .local v23, "ret":Z
    const/16 v21, -0x1

    .line 1810
    .local v21, "networkId":I
    if-eqz v23, :cond_2e

    .line 1811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches()V

    .line 1812
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I

    move-result v21

    .line 1813
    const-string/jumbo v2, "ENTERPRISE_SSIDS"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 1815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1817
    .local v24, "psToken":J
    :try_start_2
    const-string/jumbo v9, ""

    .local v9, "caCertificate":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 1818
    .local v11, "clientCertificate":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 1819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " CA certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1820
    :cond_2c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 1821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Client credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1823
    :cond_2d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    .line 1824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has set a new wifi profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1825
    const-string/jumbo v3, "SSID: "

    .line 1824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1825
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1825
    const-string/jumbo v3, " Security type: "

    .line 1824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1826
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1827
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1822
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1829
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1833
    .end local v9    # "caCertificate":Ljava/lang/String;
    .end local v11    # "clientCertificate":Ljava/lang/String;
    .end local v24    # "psToken":J
    :cond_2e
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_2f

    .line 1834
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v2

    .line 1833
    if-eqz v2, :cond_2f

    .line 1835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1837
    .local v28, "token":J
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1839
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    .end local v21    # "networkId":I
    .end local v23    # "ret":Z
    .end local v28    # "token":J
    :cond_2f
    :goto_6
    return v23

    .line 1715
    :cond_30
    if-eqz v27, :cond_16

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1716
    const-string/jumbo v2, "key_id"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    goto/16 :goto_3

    .line 1731
    :cond_31
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1760
    :cond_32
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1761
    .local v22, "proxyBypassArray":[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "proxyBypassArray":[Ljava/lang/String;
    check-cast v22, [Ljava/lang/String;

    .line 1763
    .restart local v22    # "proxyBypassArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    goto/16 :goto_5

    .line 1772
    .end local v22    # "proxyBypassArray":[Ljava/lang/String;
    :cond_33
    const/16 v20, 0x1

    .line 1773
    .local v20, "isValidAuth":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "config$iterator":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/net/AuthConfig;

    .line 1774
    .local v12, "config":Lcom/samsung/android/knox/net/AuthConfig;
    if-eqz v12, :cond_35

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/AuthConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1775
    :cond_35
    const/16 v20, 0x0

    .line 1780
    .end local v12    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    :cond_36
    if-eqz v20, :cond_37

    .line 1781
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1783
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 1782
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1784
    const/4 v2, 0x0

    return v2

    .line 1787
    :cond_37
    const/4 v2, 0x0

    return v2

    .line 1828
    .end local v13    # "config$iterator":Ljava/util/Iterator;
    .end local v20    # "isValidAuth":Z
    .restart local v21    # "networkId":I
    .restart local v23    # "ret":Z
    .restart local v24    # "psToken":J
    :catchall_0
    move-exception v2

    .line 1829
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1828
    throw v2

    .line 1838
    .end local v24    # "psToken":J
    .restart local v28    # "token":J
    :catchall_1
    move-exception v2

    .line 1839
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    throw v2

    .line 1843
    .end local v21    # "networkId":I
    .end local v28    # "token":J
    .local v23, "ret":Z
    :cond_38
    const/16 v23, 0x0

    goto/16 :goto_6
.end method

.method public setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4993
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "WIFI"

    .line 4995
    const-string/jumbo v5, "allowWifiStateChanges"

    .line 4994
    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 4998
    .local v14, "ret":Z
    const-string/jumbo v2, "ALLOW_STATE_CHANGES"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 5000
    if-eqz v14, :cond_0

    .line 5001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5004
    .local v12, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5005
    const-string/jumbo v3, " has changed Wifi state change allowed to "

    .line 5004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5005
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 5003
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5007
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5010
    .end local v12    # "psToken":J
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 5011
    .local v15, "userId":I
    if-eqz v14, :cond_1

    if-nez v15, :cond_1

    .line 5012
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v11

    .line 5013
    .local v11, "isAllowed":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    .line 5014
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 5016
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v2, "Wifi"

    const-string/jumbo v3, "setWifiStateChangeAllowed"

    invoke-virtual {v10, v2, v3, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5017
    const-string/jumbo v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiStateChangeAllowed calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5022
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "isAllowed":Z
    :cond_1
    :goto_0
    return v14

    .line 5006
    .end local v15    # "userId":I
    .restart local v12    # "psToken":J
    :catchall_0
    move-exception v2

    .line 5007
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5006
    throw v2

    .line 5018
    .end local v12    # "psToken":J
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "isAllowed":Z
    .restart local v15    # "userId":I
    :catch_0
    move-exception v9

    .line 5019
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 349
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 351
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 352
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    .line 347
    return-void
.end method
