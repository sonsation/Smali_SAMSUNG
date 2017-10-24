.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

.field public static final ENABLE_DISC_BUTTON_APNLIST:Z

.field public static final ENABLE_MENU_AUTOJOIN:Z

.field public static final ENABLE_WECHAT_WIFI:Z

.field public static final SUPPORT_WAPI:Z

.field public static mMenutreeCode:Ljava/lang/String;


# instance fields
.field private bssid:Ljava/lang/String;

.field private frequency:I

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsActiveStateChanged:Z

.field public mIsDcm:Z

.field public mIsGigaAp:Z

.field public mIsGigaIcon:Z

.field private mIsLevelChanged:Z

.field private mIsUpdated:Z

.field private mIsWeChatAp:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPreviousSummary:Ljava/lang/String;

.field private mRssi:I

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSecFlags:Ljava/util/BitSet;

.field private mSeen:J

.field private mStoreName:Ljava/lang/String;

.field private mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "CscFeature_Wifi_SupportWapi"

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    .line 102
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "CscFeature_Wifi_EnableDiscButtonApnList"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_DISC_BUTTON_APNLIST:Z

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_MENU_AUTOJOIN:Z

    .line 108
    const-string/jumbo v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    .line 108
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 157
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 161
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 182
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 183
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    .line 186
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsDcm:Z

    .line 193
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 234
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 235
    invoke-direct {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    .line 233
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 157
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 161
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 182
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 183
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    .line 186
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsDcm:Z

    .line 193
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPreviousSummary:Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 239
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 238
    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 6
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1278
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v4, "WPA-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1279
    .local v1, "wpa":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v4, "WPA2-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1280
    .local v2, "wpa2":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v4, "FT/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1281
    .local v0, "ft":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1282
    const/4 v3, 0x3

    return v3

    .line 1283
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1284
    const/4 v3, 0x5

    return v3

    .line 1285
    :cond_1
    if-eqz v2, :cond_2

    .line 1286
    const/4 v3, 0x2

    return v3

    .line 1287
    :cond_2
    if-eqz v1, :cond_3

    .line 1288
    const/4 v3, 0x1

    return v3

    .line 1289
    :cond_3
    if-eqz v0, :cond_4

    .line 1290
    const/4 v3, 0x4

    return v3

    .line 1292
    :cond_4
    const-string/jumbo v3, "SettingsLib.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v3, 0x0

    return v3
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1562
    const-string/jumbo v1, ""

    .line 1565
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1566
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1567
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1576
    :cond_0
    :goto_0
    return-object v1

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1427
    sget-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x4

    return v0

    .line 1430
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    const/4 v0, 0x5

    return v0

    .line 1434
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    const/4 v0, 0x1

    return v0

    .line 1437
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1436
    if-eqz v0, :cond_3

    .line 1438
    const/4 v0, 0x2

    return v0

    .line 1439
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1441
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1439
    if-eqz v0, :cond_5

    .line 1442
    :cond_4
    const/4 v0, 0x3

    return v0

    .line 1444
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1449
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1450
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1449
    if-eqz v2, :cond_1

    .line 1451
    :cond_0
    return v4

    .line 1453
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1454
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1453
    if-nez v2, :cond_2

    .line 1455
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1453
    if-nez v2, :cond_2

    .line 1456
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1453
    if-eqz v2, :cond_3

    .line 1457
    :cond_2
    return v5

    .line 1459
    :cond_3
    sget-boolean v2, Lcom/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_5

    .line 1460
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1461
    const/4 v0, 0x4

    return v0

    .line 1463
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1464
    const/4 v0, 0x5

    return v0

    .line 1467
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    :goto_0
    return v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 22
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 661
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v13, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 665
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 667
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 666
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_0
    :goto_0
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 778
    :cond_1
    :goto_1
    sget v18, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v18, :cond_16

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 782
    const-string/jumbo v18, " f="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_2
    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getVisibilityStatus(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 801
    :cond_3
    :goto_2
    if-eqz p1, :cond_16

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    .line 804
    .local v12, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v7, 0x0

    .line 805
    .local v7, "index":I
    :goto_3
    const/16 v18, 0xd

    .line 804
    move/from16 v0, v18

    if-ge v7, v0, :cond_16

    .line 807
    invoke-virtual {v12, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v18

    if-eqz v18, :cond_4

    .line 808
    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 809
    const-string/jumbo v19, "="

    .line 808
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 810
    invoke-virtual {v12, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v19

    .line 808
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 668
    .end local v7    # "index":I
    .end local v12    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v18

    if-nez v18, :cond_7

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    .line 671
    .restart local v12    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v18, "SettingsLib.AccessPoint"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getSettingsSummary: ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", getNetworkSelectionDisableReason "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 698
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 699
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 698
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 675
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 678
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_failed_to_obtain_IP:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 681
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 684
    :pswitch_4
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 687
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 691
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 695
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 703
    .end local v12    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 704
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 703
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 706
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v18

    .line 708
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLandroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 709
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 720
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 752
    :cond_b
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 754
    .local v6, "format":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 722
    .end local v6    # "format":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    .line 723
    .restart local v12    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 735
    :pswitch_8
    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 726
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 729
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_failed_to_obtain_IP:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 732
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 738
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 742
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 746
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 749
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_disabled_captive_portal:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 755
    .end local v12    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 758
    :cond_f
    if-eqz p1, :cond_0

    .line 759
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 761
    :cond_10
    const-string/jumbo v18, "DCM"

    sget-object v19, Lcom/android/settingslib/wifi/AccessPoint;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 769
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 773
    :cond_12
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 786
    :cond_13
    const-string/jumbo v18, " ("

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_15

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 789
    .local v14, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v18

    sub-long v18, v14, v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 790
    .local v4, "diff":J
    const-wide/16 v18, 0x3c

    rem-long v16, v4, v18

    .line 791
    .local v16, "sec":J
    const-wide/16 v18, 0x3c

    div-long v18, v4, v18

    const-wide/16 v20, 0x3c

    rem-long v10, v18, v20

    .line 792
    .local v10, "min":J
    const-wide/16 v18, 0x3c

    div-long v18, v10, v18

    const-wide/16 v20, 0x3c

    rem-long v8, v18, v20

    .line 793
    .local v8, "hour":J
    const-string/jumbo v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_14

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "h "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_14
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "m "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "s "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .end local v4    # "diff":J
    .end local v8    # "hour":J
    .end local v10    # "min":J
    .end local v14    # "now":J
    .end local v16    # "sec":J
    :cond_15
    const-string/jumbo v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 815
    :cond_16
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 672
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 723
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_7
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static getSnsCurrentMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1503
    const/4 v2, -0x1

    .line 1504
    .local v2, "ret":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1505
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 1506
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1507
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12f

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1508
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 1512
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return v2
.end method

.method private static getSnsEverQualityTested(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1515
    const/4 v2, 0x0

    .line 1516
    .local v2, "ret":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1517
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    .line 1518
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1519
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x130

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1520
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 1521
    if-ne v2, v5, :cond_0

    .line 1522
    return v5

    .line 1524
    :cond_0
    return v4

    .line 1528
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return v4
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLandroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v1

    move-object v5, p3

    .line 1256
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v1

    .line 1270
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;
    .param p5, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1187
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    if-nez p1, :cond_1

    .line 1188
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1190
    sget v11, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, "format":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v11, v12

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1192
    .end local v3    # "format":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 1194
    sget v11, Lcom/android/settingslib/R$string;->connected_via_wfa:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1200
    :cond_1
    const-string/jumbo v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1199
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1201
    .local v1, "cm":Landroid/net/ConnectivityManager;
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 1203
    const-string/jumbo v11, "wifi"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1202
    invoke-static {v11}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v10

    .line 1207
    .local v10, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v10}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1211
    :goto_0
    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 1213
    .local v8, "nc":Landroid/net/NetworkCapabilities;
    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSnsCurrentMode(Landroid/content/Context;)I

    move-result v7

    .line 1214
    .local v7, "mWWSMCurrentMode":I
    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSnsEverQualityTested(Landroid/content/Context;)Z

    move-result v6

    .line 1215
    .local v6, "mEverQualityTested":Z
    if-eqz v8, :cond_2

    const/16 v11, 0x10

    invoke-virtual {v8, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1232
    .end local v6    # "mEverQualityTested":Z
    .end local v7    # "mWWSMCurrentMode":I
    .end local v8    # "nc":Landroid/net/NetworkCapabilities;
    .end local v10    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    if-nez p2, :cond_9

    .line 1233
    const-string/jumbo v11, "SettingsLib.AccessPoint"

    const-string/jumbo v12, "state is null, returning empty summary"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string/jumbo v11, ""

    return-object v11

    .line 1208
    .restart local v10    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v9, 0x0

    .local v9, "nw":Landroid/net/Network;
    goto :goto_0

    .line 1216
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v9    # "nw":Landroid/net/Network;
    .restart local v6    # "mEverQualityTested":Z
    .restart local v7    # "mWWSMCurrentMode":I
    .restart local v8    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    if-eqz v6, :cond_8

    .line 1217
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    iget-boolean v11, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p5

    iget-boolean v11, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    if-eqz v11, :cond_5

    .line 1220
    :cond_4
    const/4 v11, 0x1

    if-ne v7, v11, :cond_6

    .line 1221
    sget v11, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1219
    :cond_5
    sget v11, Lcom/android/settingslib/R$string;->wifi_sign_in_to_the_network:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1222
    :cond_6
    const/4 v11, 0x2

    if-eq v7, v11, :cond_7

    const/4 v11, 0x3

    if-ne v7, v11, :cond_2

    .line 1223
    :cond_7
    sget v11, Lcom/android/settingslib/R$string;->wifi_reconnecting:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1226
    :cond_8
    const/4 v11, 0x3

    if-gt v7, v11, :cond_2

    .line 1227
    sget v11, Lcom/android/settingslib/R$string;->wifi_connected_checking_quality:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1237
    .end local v6    # "mEverQualityTested":Z
    .end local v7    # "mWWSMCurrentMode":I
    .end local v8    # "nc":Landroid/net/NetworkCapabilities;
    .end local v10    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez p1, :cond_c

    .line 1238
    sget v11, Lcom/android/settingslib/R$array;->wifi_status:I

    .line 1237
    :goto_1
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1240
    .local v4, "formats":[Ljava/lang/String;
    const/4 v5, -0x1

    .line 1241
    .local v5, "index":I
    if-eqz p2, :cond_a

    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v5

    .line 1245
    :cond_a
    if-ltz v5, :cond_b

    array-length v11, v4

    if-lt v5, v11, :cond_d

    .line 1246
    :cond_b
    const-string/jumbo v11, ""

    return-object v11

    .line 1238
    .end local v4    # "formats":[Ljava/lang/String;
    .end local v5    # "index":I
    :cond_c
    sget v11, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    goto :goto_1

    .line 1245
    .restart local v4    # "formats":[Ljava/lang/String;
    .restart local v5    # "index":I
    :cond_d
    aget-object v11, v4, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_b

    .line 1248
    const/4 v11, 0x4

    if-ne v5, v11, :cond_e

    .line 1249
    const/4 v5, 0x2

    .line 1251
    :cond_e
    aget-object v11, v4, v5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private getVisibilityStatus(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 22
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 827
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 829
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 830
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 832
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 834
    .local v6, "now":J
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 837
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :cond_0
    const-string/jumbo v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 840
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string/jumbo v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    const-string/jumbo v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string/jumbo v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string/jumbo v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string/jumbo v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_1
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 849
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 850
    .local v13, "rssi24":I
    const/4 v9, 0x0

    .line 851
    .local v9, "num5":I
    const/4 v8, 0x0

    .line 852
    .local v8, "num24":I
    const/4 v10, 0x0

    .line 853
    .local v10, "numBlackListed":I
    const/4 v4, 0x0

    .line 854
    .local v4, "n24":I
    const/4 v5, 0x0

    .line 855
    .local v5, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    .line 857
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    .local v12, "result$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 859
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 860
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 863
    add-int/lit8 v9, v9, 0x1

    .line 872
    :cond_3
    :goto_1
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 873
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 874
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_4

    .line 875
    iget v14, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 877
    :cond_4
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 878
    if-nez v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    :cond_5
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    if-eqz v2, :cond_6

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string/jumbo v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_6
    const-string/jumbo v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 882
    const-string/jumbo v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    const-string/jumbo v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 864
    :cond_7
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 865
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 868
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 886
    :cond_8
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 887
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 888
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_9

    .line 889
    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 891
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 892
    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    :cond_a
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    if-eqz v2, :cond_b

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string/jumbo v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_b
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 896
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 897
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 902
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    const-string/jumbo v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    if-lez v8, :cond_d

    .line 904
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v4, v0, :cond_f

    .line 906
    if-eqz v15, :cond_d

    .line 907
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_d
    :goto_2
    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    if-lez v9, :cond_e

    .line 918
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_10

    .line 920
    if-eqz v16, :cond_e

    .line 921
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_e
    :goto_3
    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 910
    :cond_f
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    if-eqz v15, :cond_d

    .line 912
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 924
    :cond_10
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    if-eqz v16, :cond_e

    .line 926
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x1

    .line 1040
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 1041
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 1042
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->frequency:I

    .line 1043
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 1044
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 1045
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1046
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 1048
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1049
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 1050
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 1053
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    .line 1054
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "SEC80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 1057
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "SEC21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1039
    :cond_2
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 968
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    .line 967
    if-eq v0, v1, :cond_1

    .line 969
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 970
    :cond_1
    if-eqz p1, :cond_2

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .prologue
    .line 1538
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "salesCode":Ljava/lang/String;
    const-string/jumbo v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1543
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 1548
    const-string/jumbo v1, "CscFeature_Setting_ConfigOpMenuStructure"

    .line 1547
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    .line 1549
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readSalesCode(): menutreeCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    .line 1554
    :cond_1
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    return-object v0

    .line 1544
    :cond_2
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->mMenutreeCode:Ljava/lang/String;

    return-object v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1489
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    const-string/jumbo v1, ""

    return-object v1

    .line 1492
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1493
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1494
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1495
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1497
    :cond_1
    return-object p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1471
    if-ne p0, v0, :cond_0

    .line 1472
    const-string/jumbo v0, "WEP"

    return-object v0

    .line 1473
    :cond_0
    if-ne p0, v1, :cond_4

    .line 1474
    if-ne p1, v0, :cond_1

    .line 1475
    const-string/jumbo v0, "WPA"

    return-object v0

    .line 1476
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1477
    const-string/jumbo v0, "WPA2"

    return-object v0

    .line 1478
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1479
    const-string/jumbo v0, "WPA_WPA2"

    return-object v0

    .line 1481
    :cond_3
    const-string/jumbo v0, "PSK"

    return-object v0

    .line 1482
    :cond_4
    if-ne p0, v2, :cond_5

    .line 1483
    const-string/jumbo v0, "EAP"

    return-object v0

    .line 1485
    :cond_5
    const-string/jumbo v0, "NONE"

    return-object v0
.end method

.method private setInfoIfWeChatAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 466
    sget-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    if-nez v0, :cond_0

    .line 468
    invoke-static {}, Lcom/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 473
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/wifi/WeChatWifiManager;->getStoreNameIfWeChatAp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 479
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInfoIfWeChatAP, this is WeChat AP, ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    const-string/jumbo v2, ""

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    const-string/jumbo v2, " storeName: "

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mStoreName:Ljava/lang/String;

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    .line 465
    :cond_2
    return-void
.end method

.method private setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 1329
    return-object v0

    .line 1331
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "FT/PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "-EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "FT/EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1338
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1341
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WPA-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1344
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_5
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1347
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_6
    return-object v0
.end method

.method private setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 1300
    return-object v0

    .line 1302
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1312
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1315
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1318
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    :cond_6
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1321
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_7
    return-object v0
.end method


# virtual methods
.method public clearConfig()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 379
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 380
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleared configuration nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearNetworkInfoExcept(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    const-string/jumbo v1, "cleared network info too"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    goto :goto_0
.end method

.method public clearUpdateFlag()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 395
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 9
    .param p1, "other"    # Lcom/android/settingslib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const v6, 0x7fffffff

    const/4 v5, -0x1

    .line 246
    const/16 v1, -0x3e7

    .line 247
    .local v1, "netid":I
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 249
    const-string/jumbo v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "compareTo netid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    return v7

    .line 251
    :cond_3
    return v5

    .line 253
    :cond_4
    return v5

    .line 257
    :cond_5
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v6, :cond_6

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-ne v2, v6, :cond_6

    return v5

    .line 258
    :cond_6
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-ne v2, v6, :cond_7

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v6, :cond_7

    return v7

    .line 261
    :cond_7
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_8

    .line 262
    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v2, v5, :cond_8

    return v5

    .line 263
    :cond_8
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v2, v5, :cond_9

    .line 264
    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_9

    return v7

    .line 267
    :cond_9
    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 268
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    .line 267
    sub-int v0, v2, v3

    .line 269
    .local v0, "difference":I
    if-eqz v0, :cond_a

    .line 270
    return v0

    .line 273
    :cond_a
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 278
    instance-of v1, p1, Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return v0

    .line 279
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public generateOpenNetworkConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1006
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 1009
    return-void

    .line 1010
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1011
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    if-eqz v0, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 1005
    :cond_2
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 622
    :cond_0
    return-object v1
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->frequency:I

    return v0
.end method

.method public getLastRssi()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 409
    const/4 v0, -0x1

    return v0

    .line 411
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSeen()J
    .locals 6

    .prologue
    .line 430
    const-wide/16 v2, 0x0

    .line 431
    .local v2, "seen":J
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 432
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 433
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_0

    .line 437
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-wide v2
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 603
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 604
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 605
    const/16 v4, 0x12

    .line 604
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 606
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/lit8 v0, v1, 0x0

    .line 299
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 301
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 302
    return v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 943
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_2

    .line 944
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 945
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 945
    goto :goto_0

    :cond_2
    move v0, v1

    .line 943
    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 949
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 953
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 953
    :cond_0
    return v0
.end method

.method public isOllehGigaAp()Z
    .locals 5

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "is5GHzVsi":Z
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "is5GHzVsi":Z
    .local v2, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 447
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    if-eqz v3, :cond_0

    .line 450
    const/4 v0, 0x1

    .restart local v0    # "is5GHzVsi":Z
    goto :goto_0

    .line 453
    .end local v0    # "is5GHzVsi":Z
    :cond_1
    iget-boolean v0, v1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    .local v0, "is5GHzVsi":Z
    goto :goto_0

    .line 458
    .end local v0    # "is5GHzVsi":Z
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 982
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    return v0
.end method

.method public isWeChatAp()Z
    .locals 1

    .prologue
    .line 462
    sget-boolean v0, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1021
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 1028
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 1029
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->frequency:I

    .line 1030
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 1032
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1033
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1036
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    .line 1020
    return-void

    .line 1025
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v5, :cond_1

    .line 339
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 341
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 342
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v5, :cond_4

    .line 343
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 345
    :cond_4
    const/4 v0, 0x1

    .line 346
    .local v0, "matchedAuthType":Z
    const/4 v1, 0x1

    .line 347
    .local v1, "matchedKeyMgmts":Z
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_5

    .line 348
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v5

    if-ne v4, v5, :cond_7

    const/4 v0, 0x1

    .line 349
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Ljava/util/ArrayList;)Z

    move-result v1

    .line 351
    .end local v1    # "matchedKeyMgmts":Z
    :cond_5
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 352
    iget v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 353
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v4, v5, :cond_8

    .line 351
    :cond_6
    :goto_3
    return v2

    .line 348
    .restart local v1    # "matchedKeyMgmts":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "matchedKeyMgmts":Z
    :cond_8
    move v2, v3

    .line 353
    goto :goto_3

    :cond_9
    move v2, v3

    .line 351
    goto :goto_3
.end method

.method public matches(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "keyMgmts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1382
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1383
    return v4

    .line 1385
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1386
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1387
    return v4

    .line 1390
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 1182
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_3
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "passpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1174
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1176
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1172
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1084
    iget v2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->frequency:I

    .line 1087
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 1093
    .local v1, "oldLevel":I
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSeen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 1099
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    if-eqz v2, :cond_5

    .line 1101
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    if-ge v2, v3, :cond_0

    .line 1102
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1104
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 1106
    sget-boolean v2, Lcom/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->setInfoIfWeChatAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1112
    .local v0, "newLevel":I
    if-lez v0, :cond_6

    if-eq v0, v1, :cond_6

    .line 1113
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    .line 1114
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_2

    .line 1115
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1122
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1123
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 1127
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1131
    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_4

    .line 1132
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1135
    :cond_4
    return v5

    .line 1100
    .end local v0    # "newLevel":I
    :cond_5
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_0

    .line 1118
    .restart local v0    # "newLevel":I
    :cond_6
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    goto :goto_1

    .line 1128
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    goto :goto_2

    .line 1137
    .end local v0    # "newLevel":I
    .end local v1    # "oldLevel":I
    :cond_8
    return v4
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1142
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    .line 1143
    .local v0, "prevActiveState":Z
    const/4 v1, 0x0

    .line 1145
    .local v1, "reorder":Z
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1146
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    .line 1147
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 1148
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x7f

    if-eq v3, v2, :cond_0

    .line 1149
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1151
    :cond_0
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1152
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1153
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1164
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1165
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    .line 1169
    :goto_2
    return v1

    .line 1147
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1156
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 1157
    const/4 v1, 0x1

    .line 1158
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1159
    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1160
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_1

    .line 1161
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_1

    .line 1167
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    goto :goto_2
.end method
