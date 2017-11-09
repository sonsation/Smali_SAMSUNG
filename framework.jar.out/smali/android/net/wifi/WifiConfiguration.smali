.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$1;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$SamsungFlag;,
        Landroid/net/wifi/WifiConfiguration$SemOperationMode;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$Visibility;
    }
.end annotation


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field private static final BACKUP_VERSION:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_NO_INTERNET:I = 0xc

.field public static final DISABLED_POOR_CONNECTIVITY:I = 0xb

.field public static final DISABLED_SPECIAL_SSID_FOR_MALICIOUS_HOTSPOT:I = 0x11

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final HOME_NETWORK_RSSI_BOOST:I = 0x5

.field public static final HS20CREDID:Ljava/lang/String; = "HS20CredId"

.field public static final HS20FullyQualifiedDomainName:Ljava/lang/String; = "HS20FQDN"

.field public static final HS20OPERATORNAME:Ljava/lang/String; = "HS20OperatorName"

.field public static final HS20VENUENAME:Ljava/lang/String; = "HS20VenueName"

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static final ISHS20AP:Ljava/lang/String; = "isHS20AP"

.field public static final ISHS20HOME:Ljava/lang/String; = "isHS20Home"

.field public static final IsScannedHS20VarName:Ljava/lang/String; = "scanned_hs20"

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final UNKNOWN_UID:I = -0x1

.field public static final USER_APPROVED:I = 0x1

.field public static final USER_BANNED:I = 0x2

.field public static final USER_PENDING:I = 0x3

.field public static final USER_UNSPECIFIED:I = 0x0

.field public static final WAPI_ASCII_PASSWORD:I = 0x0

.field public static final WAPI_HEX_PASSWORD:I = 0x1

.field public static final authenticatedVarName:Ljava/lang/String; = "authenticated"

.field public static final autoReonnectVarName:Ljava/lang/String; = "autojoin"

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final captivePortalVarName:Ljava/lang/String; = "captive_portal"

.field public static final expirationVarName:Ljava/lang/String; = "expiration"

.field public static final frequencyVarName:Ljava/lang/String; = "frequency"

.field public static final hessidVarName:Ljava/lang/String; = "hessid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final isUsableInternetVarName:Ljava/lang/String; = "usable_internet"

.field public static final isVendorSpecSsidVarName:Ljava/lang/String; = "vendor_spec_ssid"

.field public static final isWeChatApVarName:Ljava/lang/String; = "isWeChatAp"

.field public static final loginUrlVarName:Ljava/lang/String; = "login_url"

.field public static final modeVarName:Ljava/lang/String; = "mode"

.field public static final nextTargetRssiVarName:Ljava/lang/String; = "sns_next_target_rssi"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final sharedApVarName:Ljava/lang/String; = "shared"

.field public static final skipInternetCheckVarName:Ljava/lang/String; = "skip_internet_check"

.field public static final specialSsidVarName:Ljava/lang/String; = "s_ssid"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final verifiedPasswordVarName:Ljava/lang/String; = "verified_password"

.field public static final wapiAsCertVarName:Ljava/lang/String; = "wapi_as_cert"

.field public static final wapiCertIndexVarName:Ljava/lang/String; = "cert_index"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "psk_key_type"

.field public static final wapiUserCertVarName:Ljava/lang/String; = "wapi_user_cert"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public HESSID:Ljava/lang/String;

.field public HS20CredId:I

.field public HS20OpURL:Ljava/lang/String;

.field public HS20OperatorName:Ljava/lang/String;

.field public HS20VenueName:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public apIsolate:I

.field public autoReconnect:I

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public disableReason:I

.field public disabledTime:J

.field public dtimInterval:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public expiration:Ljava/lang/String;

.field public hiddenSSID:Z

.field public inRecoverArea:Z

.field public isAuthenticated:Z

.field public isCaptivePortal:Z

.field public isHS20AP:I

.field public isHS20Home:I

.field public isScannedHS20AP:I

.field public isSharedAp:Z

.field public isSpecialSsid:Z

.field public isUsableInternet:Z

.field public isVendorSpecificSsid:Z

.field public isVerifiedPassword:Z

.field public isWeChatAp:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastConnectionFailure:J

.field public lastDisconnected:J

.field public lastFailure:Ljava/lang/String;

.field public lastRoamingFailure:J

.field public lastRoamingFailureReason:I

.field public lastUpdateName:Ljava/lang/String;

.field public lastUpdateUid:I

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loginUrl:Ljava/lang/String;

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private final mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private mPasspointManagementObjectTree:Ljava/lang/String;

.field public macaddrAcl:I

.field public maxclient:I

.field public meteredHint:Z

.field public networkId:I

.field public nextTargetRssi:I

.field public noInternetAccessExpected:Z

.field public notInRangeTime:J

.field public numAssociation:I

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I

.field public numScorerOverrideAndSwitchedNetwork:I

.field public numTicksAtBadRSSI:I

.field public numTicksAtLowRSSI:I

.field public numTicksAtNotHighRSSI:I

.field public numUserTriggeredJoinAttempts:I

.field public numUserTriggeredWifiDisableBadRSSI:I

.field public numUserTriggeredWifiDisableLowRSSI:I

.field public numUserTriggeredWifiDisableNotHighRSSI:I

.field public peerWifiConfiguration:Ljava/lang/String;

.field public poorBSSID:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public providerFriendlyName:Ljava/lang/String;

.field public recoverableRSSI:I

.field public requirePMF:Z

.field public roamingConsortiumIds:[J

.field public roamingFailureBlackListTimeMilli:J

.field public samsungSpecificFlags:Ljava/util/BitSet;

.field public selfAdded:Z

.field public semAutoWifiScore:I

.field public semChannel:I

.field public semCreationTime:J

.field public semFrequency:I

.field public semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

.field public semUpdateTime:J

.field public shared:Z

.field public skipInternetCheck:I

.field public status:I

.field public txPowerMode:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public useExternalScores:Z

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public vendorIE:I

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wapiAsCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I

.field public wpsStatus:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "wep_key0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wep_key1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wep_key2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wep_key3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 828
    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1007
    sput v3, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    .line 1009
    sput v4, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    .line 2857
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    .line 2856
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 433
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 709
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 815
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 1016
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1779
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1799
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1800
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1801
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1802
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1803
    new-array v1, v4, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1804
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1805
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1806
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1807
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1808
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1809
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1810
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1811
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1812
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1814
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 1813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1816
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1817
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1818
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 1819
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1820
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 1821
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 1822
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1823
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1824
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1825
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1826
    iput-boolean v7, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 1827
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 1831
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 1834
    sget-object v1, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    .line 1835
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    .line 1838
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    .line 1839
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 1840
    const/16 v1, 0xa

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1841
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 1842
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 1843
    iput v7, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 1844
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 1847
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1848
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 1849
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1850
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 1853
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    .line 1854
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    .line 1855
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    .line 1856
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    .line 1857
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    .line 1858
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 1859
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    .line 1860
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    .line 1863
    const/16 v1, -0xc8

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 1864
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 1865
    iput-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 1866
    iput-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 1867
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 1870
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 1871
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 1872
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    .line 1875
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 1878
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    .line 1881
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    .line 1885
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    .line 1886
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    .line 1887
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    .line 1890
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    .line 1893
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 1895
    iput v7, p0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    .line 1896
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    .line 1897
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    .line 1798
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 433
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 709
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 815
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 1016
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1779
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2550
    if-eqz p1, :cond_3

    .line 2551
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2552
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2553
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2554
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2555
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2556
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 2557
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 2558
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 2559
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2561
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 2562
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 2563
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 2565
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 2566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2567
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 2566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2570
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2571
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2572
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2573
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2574
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2575
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2576
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2577
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2578
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2580
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 2582
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 2584
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 2585
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2586
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2587
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2589
    :cond_1
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 2590
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 2591
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2592
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2593
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 2594
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 2595
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v1, :cond_2

    .line 2596
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 2599
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 2600
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 2601
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 2602
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2603
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2604
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 2605
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 2606
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2608
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 2609
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 2610
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 2611
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 2612
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    .line 2613
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 2614
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 2615
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 2616
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 2617
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 2618
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 2619
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 2620
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 2621
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 2622
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 2623
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 2624
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 2625
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 2626
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 2627
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 2628
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 2629
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 2633
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 2636
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 2637
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 2638
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 2639
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 2640
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 2642
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    .line 2643
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    .line 2646
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    .line 2647
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 2648
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2649
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 2650
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 2651
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 2652
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 2655
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    .line 2656
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    .line 2657
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    .line 2658
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    .line 2659
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    .line 2660
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 2661
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    .line 2662
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    .line 2665
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 2666
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 2667
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 2668
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 2669
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 2672
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 2673
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 2674
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    .line 2677
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 2680
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    .line 2683
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    .line 2686
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    .line 2687
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    .line 2688
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    .line 2691
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    .line 2694
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 2696
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    .line 2697
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    .line 2698
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    .line 2700
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    .line 2701
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    .line 2549
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static getWifiConfigFromBackup(Ljava/io/DataInputStream;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3034
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3035
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 3036
    .local v1, "version":I
    if-lt v1, v3, :cond_0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 3037
    :cond_0
    new-instance v2, Landroid/util/BackupUtils$BadVersionException;

    const-string/jumbo v3, "Unknown Backup Serialization Version"

    invoke-direct {v2, v3}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3040
    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 3042
    :cond_2
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3043
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3044
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 3045
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3046
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 3047
    return-object v0
.end method

.method private isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2369
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 2370
    return v1

    .line 2372
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 2373
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 2374
    return v1

    .line 2376
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2377
    return v1

    .line 2380
    :cond_2
    return v2
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 2348
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2350
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 2351
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2352
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2355
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2344
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userApprovedAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "userApproved"    # I

    .prologue
    .line 2291
    packed-switch p0, :pswitch_data_0

    .line 2299
    const-string/jumbo v0, "INVALID"

    return-object v0

    .line 2293
    :pswitch_0
    const-string/jumbo v0, "USER_APPROVED"

    return-object v0

    .line 2295
    :pswitch_1
    const-string/jumbo v0, "USER_BANNED"

    return-object v0

    .line 2297
    :pswitch_2
    const-string/jumbo v0, "USER_UNSPECIFIED"

    return-object v0

    .line 2291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 2359
    const/4 v0, -0x1

    .line 2361
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2364
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2358
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 7
    .param p1, "allowCached"    # Z

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2425
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2426
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 2458
    .local v0, "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2427
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2429
    .restart local v0    # "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_0

    .line 2430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2433
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2453
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_3

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2456
    :cond_3
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 2435
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 2437
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 2439
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 2441
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2442
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 2441
    if-eqz v1, :cond_9

    .line 2443
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 2444
    .end local v0    # "key":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 2446
    .end local v0    # "key":Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 2448
    .end local v0    # "key":Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_c

    .line 2449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 2451
    .end local v0    # "key":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2535
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 2385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v0

    return v0
.end method

.method public getAuthType(Z)I
    .locals 6
    .param p1, "verifyConfig"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2390
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2393
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2394
    return v1

    .line 2391
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "More than one auth type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2395
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2396
    return v4

    .line 2397
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2398
    return v2

    .line 2399
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2400
    return v3

    .line 2401
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2402
    const/16 v0, 0x8

    return v0

    .line 2403
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2404
    const/16 v0, 0x9

    return v0

    .line 2405
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2406
    const/16 v0, 0xa

    return v0

    .line 2407
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2408
    return v5

    .line 2410
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3016
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3017
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3019
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3020
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 3021
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3022
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3023
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 3024
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3025
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 2510
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .prologue
    .line 2470
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 2312
    const/4 v1, 0x0

    .line 2316
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2317
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-nez v3, :cond_1

    .line 2318
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2320
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2321
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 2323
    .end local v1    # "keyMgmt":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2324
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 2326
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2330
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2331
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2334
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2335
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_6

    .line 2336
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2335
    :cond_6
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2334
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 2270
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    .line 2271
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2272
    .local v0, "length":I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2273
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2280
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2281
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2283
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2282
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 2284
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2286
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v2
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 976
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnterprise()Z
    .locals 2

    .prologue
    .line 1931
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1932
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 1931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1915
    if-eqz p1, :cond_0

    .line 1916
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1919
    const/4 v0, 0x1

    return v0

    .line 1923
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPasspoint()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1904
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1905
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_0

    .line 1907
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public semGetHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 2519
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2524
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 2523
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .prologue
    .line 2495
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 2494
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .prologue
    .line 2475
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 2474
    return-void
.end method

.method public setPasspointManagementObjectTree(Ljava/lang/String;)V
    .locals 0
    .param p1, "passpointManagementObjectTree"    # Ljava/lang/String;

    .prologue
    .line 2540
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    .line 2539
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2529
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 2530
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 2528
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .prologue
    .line 2505
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 2504
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 2485
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2484
    return-void
.end method

.method public setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 0
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 912
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 911
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 1937
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1938
    .local v18, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 1939
    const-string/jumbo v20, "* "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    :cond_0
    :goto_0
    const-string/jumbo v20, "ID: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " SSID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1944
    const-string/jumbo v21, " PROVIDER-NAME: "

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1945
    const-string/jumbo v21, " BSSID: "

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1945
    const-string/jumbo v21, " FQDN: "

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1946
    const-string/jumbo v21, " PRIO: "

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1946
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v21, v0

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1947
    const-string/jumbo v21, " HIDDEN: "

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1947
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v21, v0

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1948
    const/16 v21, 0xa

    .line 1943
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1951
    const-string/jumbo v20, " NetworkSelectionStatus "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v20

    if-lez v20, :cond_3

    .line 1954
    const-string/jumbo v20, " mNetworkSelectionDisableReason "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    const/4 v8, 0x0

    .line 1958
    .local v8, "index":I
    :goto_1
    const/16 v20, 0xd

    .line 1957
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v20

    if-eqz v20, :cond_1

    .line 1960
    invoke-static {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1961
    const-string/jumbo v21, " counter:"

    .line 1960
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v21

    .line 1960
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1962
    const-string/jumbo v21, "\n"

    .line 1960
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1940
    .end local v8    # "index":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1941
    const-string/jumbo v20, "- DSBLE "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1966
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 1967
    const-string/jumbo v20, " connect choice: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    const-string/jumbo v20, " connect choice set time: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1971
    :cond_4
    const-string/jumbo v20, " hasEverConnected: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v21

    .line 1971
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1972
    const-string/jumbo v21, "\n"

    .line 1971
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 1974
    const-string/jumbo v20, " disableReason "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 1977
    const-string/jumbo v20, " numAssociation "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 1980
    const-string/jumbo v20, " numNoInternetAccessReports "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1984
    const-string/jumbo v20, "update "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    .line 1987
    const-string/jumbo v20, "update millis="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1990
    const-string/jumbo v20, "creation "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_b

    .line 1993
    const-string/jumbo v20, "creation millis="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    const-string/jumbo v20, " didSelfAdd"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const-string/jumbo v20, " selfAdded"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    const-string/jumbo v20, " validatedInternetAccess"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const-string/jumbo v20, " ephemeral"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const-string/jumbo v20, " meteredHint"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const-string/jumbo v20, " useExternalScores"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    .line 2002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v20, v0

    .line 2001
    if-nez v20, :cond_12

    .line 2002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    move/from16 v20, v0

    .line 2001
    if-nez v20, :cond_12

    .line 2002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    move/from16 v20, v0

    .line 2001
    if-eqz v20, :cond_13

    .line 2003
    :cond_12
    const-string/jumbo v20, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    :cond_13
    const-string/jumbo v20, " KeyMgmt:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_16

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 2008
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    sget-object v20, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_15

    .line 2010
    sget-object v20, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v20, v20, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    :cond_14
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2012
    :cond_15
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2016
    :cond_16
    const-string/jumbo v20, " Protocols:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_19

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 2019
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    sget-object v20, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_18

    .line 2021
    sget-object v20, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v20, v20, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    :cond_17
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2023
    :cond_18
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2027
    :cond_19
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2028
    const-string/jumbo v20, " AuthAlgorithms:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_1c

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 2031
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    sget-object v20, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_1b

    .line 2033
    sget-object v20, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v20, v20, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_1a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2035
    :cond_1b
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 2039
    :cond_1c
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2040
    const-string/jumbo v20, " PairwiseCiphers:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    const/16 v17, 0x0

    .local v17, "pc":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 2043
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    sget-object v20, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    .line 2045
    sget-object v20, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v20, v20, v17

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    :cond_1d
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 2047
    :cond_1e
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2051
    :cond_1f
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2052
    const-string/jumbo v20, " GroupCiphers:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    const/4 v5, 0x0

    .local v5, "gc":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_22

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 2055
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    sget-object v20, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v5, v0, :cond_21

    .line 2057
    sget-object v20, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v20, v20, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    :cond_20
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 2059
    :cond_21
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 2063
    :cond_22
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " PSK: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_23

    .line 2065
    const/16 v20, 0x2a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2067
    :cond_23
    const-string/jumbo v20, "\nEnterprise config:\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2070
    const-string/jumbo v20, "IP config:\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_24

    .line 2074
    const-string/jumbo v20, " networkSelectionBSSID="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v21

    .line 2074
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2078
    .local v14, "now_ms":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_25

    .line 2080
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    sub-long v6, v14, v20

    .line 2082
    .local v6, "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gtz v20, :cond_2d

    .line 2083
    const-string/jumbo v20, " blackListed since <incorrect>"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    .end local v6    # "diff":J
    :cond_25
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v20, v0

    if-eqz v20, :cond_26

    const-string/jumbo v20, " cuid="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2089
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_27

    const-string/jumbo v20, " cname="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v20, v0

    if-eqz v20, :cond_28

    const-string/jumbo v20, " luid="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2091
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_29

    const-string/jumbo v20, " lname="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    :cond_29
    const-string/jumbo v20, " lcuid="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2093
    const-string/jumbo v20, " userApproved="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string/jumbo v20, " noInternetAccessExpected="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2095
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2a

    .line 2098
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2099
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v20, v0

    sub-long v6, v14, v20

    .line 2100
    .restart local v6    # "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gtz v20, :cond_2e

    .line 2101
    const-string/jumbo v20, "lastConnected since <incorrect>"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    .end local v6    # "diff":J
    :cond_2a
    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2b

    .line 2107
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2108
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v20, v0

    sub-long v6, v14, v20

    .line 2109
    .restart local v6    # "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gtz v20, :cond_2f

    .line 2110
    const-string/jumbo v20, "lastConnectionFailure since <incorrect> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    .end local v6    # "diff":J
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2c

    .line 2117
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2118
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v20, v0

    sub-long v6, v14, v20

    .line 2119
    .restart local v6    # "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gtz v20, :cond_30

    .line 2120
    const-string/jumbo v20, "lastRoamingFailure since <incorrect> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    .end local v6    # "diff":J
    :cond_2c
    :goto_f
    const-string/jumbo v20, "roamingFailureBlackListTimeMilli: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2127
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 2126
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_31

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "key$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_31

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2131
    .local v10, "key":Ljava/lang/String;
    const-string/jumbo v20, " linked: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 2085
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "key$iterator":Ljava/util/Iterator;
    .restart local v6    # "diff":J
    :cond_2d
    const-string/jumbo v20, " blackListed: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "sec "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2103
    :cond_2e
    const-string/jumbo v20, "lastConnected: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "sec "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2112
    :cond_2f
    const-string/jumbo v20, "lastConnectionFailure: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    const-string/jumbo v20, "sec "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 2122
    :cond_30
    const-string/jumbo v20, "lastRoamingFailure: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    const-string/jumbo v20, "sec "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 2135
    .end local v6    # "diff":J
    :cond_31
    const-string/jumbo v20, "triggeredLow: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2136
    const-string/jumbo v20, " triggeredBad: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2137
    const-string/jumbo v20, " triggeredNotHigh: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2138
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2139
    const-string/jumbo v20, "ticksLow: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2140
    const-string/jumbo v20, " ticksBad: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2141
    const-string/jumbo v20, " ticksNotHigh: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2142
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2143
    const-string/jumbo v20, "triggeredJoin: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2144
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2147
    const-string/jumbo v20, "samsungSpecificFlags:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    const/16 v19, 0x0

    .local v19, "sf":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_34

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_32

    .line 2150
    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    sget-object v20, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_33

    .line 2152
    sget-object v20, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    aget-object v20, v20, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    :cond_32
    :goto_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    .line 2154
    :cond_33
    const-string/jumbo v20, "??"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 2159
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_35

    .line 2160
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2161
    const-string/jumbo v20, " WapiAsCert: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_36

    .line 2164
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2165
    const-string/jumbo v20, " WapiUserCert: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_37

    .line 2168
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2169
    const-string/jumbo v20, " WapiCertIndex: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2171
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    .line 2172
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2173
    const-string/jumbo v20, " WapiPskType: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2177
    :cond_38
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2178
    const-string/jumbo v20, "recoverableRSSI: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2179
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2180
    const-string/jumbo v20, "inRecoverArea: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2181
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2182
    const-string/jumbo v20, "disabledTime: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2183
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2184
    const-string/jumbo v20, "notInRangeTime: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2186
    .local v16, "pBssid":Ljava/lang/String;
    if-eqz v16, :cond_39

    .line 2187
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2188
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v12

    .line 2189
    .local v12, "length":I
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v12, v0, :cond_39

    .line 2190
    const-string/jumbo v20, "poorBSSID: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    .end local v12    # "length":I
    :cond_39
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2195
    const-string/jumbo v20, "isCaptivePortal: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2196
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2197
    const-string/jumbo v20, "isAuthenticated: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2198
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2199
    const-string/jumbo v20, "loginUrl: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    const-string/jumbo v20, "isUsableInternet: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2208
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2209
    const-string/jumbo v20, "skipInternetCheck: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2212
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2213
    const-string/jumbo v20, "nextTargetRssi: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2217
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    const-string/jumbo v20, "isSharedAp: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2219
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2220
    const-string/jumbo v20, "expiration: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    const-string/jumbo v20, "isVerifiedPassword: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2226
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2227
    const-string/jumbo v20, "isSpecialSsid: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2230
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2231
    const-string/jumbo v20, " HESSID: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2232
    const-string/jumbo v21, " isHS20AP: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2232
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2233
    const-string/jumbo v21, " isHS20Home: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2233
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    move/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2234
    const-string/jumbo v21, " HS20CredId: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    move/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2235
    const-string/jumbo v21, " HS20OperatorName: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2236
    const-string/jumbo v21, " HS20VenueName: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2237
    const-string/jumbo v21, " HS20OpURL: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2238
    const-string/jumbo v21, " isScannedHS20AP: "

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2238
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    move/from16 v21, v0

    .line 2231
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2243
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2244
    const-string/jumbo v20, "semMode:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2246
    const-string/jumbo v20, "semFrequency:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2249
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2250
    const-string/jumbo v20, "isVendorAp : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2254
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2255
    const-string/jumbo v20, "autoReconnect: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2258
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2259
    const-string/jumbo v20, "isWeChatAp : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2262
    const/16 v20, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2263
    const-string/jumbo v20, "semAutoWifiScore: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2265
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2709
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2711
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;)V

    .line 2713
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2714
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2715
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2717
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2718
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2719
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2720
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_0

    aget-wide v0, v6, v3

    .line 2721
    .local v0, "roamingConsortiumId":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2720
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2723
    .end local v0    # "roamingConsortiumId":J
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2724
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v7, v6

    move v3, v5

    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v6, v3

    .line 2725
    .local v2, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2724
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2727
    .end local v2    # "wepKey":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2729
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2733
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2734
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2735
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2736
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2737
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2739
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2741
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2742
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2743
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2744
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2748
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v3, :cond_a

    move v3, v4

    :goto_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2754
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2755
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2756
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2757
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2759
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2760
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2762
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2763
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eqz v3, :cond_c

    move v3, v4

    :goto_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2778
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2781
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->semMode:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2782
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2790
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2792
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2796
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2797
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    :cond_2
    :goto_c
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2806
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2807
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2808
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2809
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2810
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2811
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2812
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->isScannedHS20AP:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2815
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2816
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    if-eqz v3, :cond_e

    move v3, v4

    :goto_d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2817
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2818
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2819
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2822
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v3, :cond_f

    move v3, v4

    :goto_e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    if-eqz v3, :cond_10

    move v3, v4

    :goto_f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2824
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2827
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-eqz v3, :cond_11

    move v3, v4

    :goto_10
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v3, :cond_12

    move v3, v4

    :goto_11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2837
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2838
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    if-eqz v3, :cond_13

    move v3, v4

    :goto_12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-eqz v3, :cond_14

    move v3, v4

    :goto_13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v3, :cond_15

    move v3, v4

    :goto_14
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2847
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    if-eqz v3, :cond_16

    :goto_15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    iget-wide v4, p0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2851
    iget-wide v4, p0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2708
    return-void

    :cond_3
    move v3, v5

    .line 2729
    goto/16 :goto_2

    :cond_4
    move v3, v5

    .line 2730
    goto/16 :goto_3

    :cond_5
    move v3, v5

    .line 2744
    goto/16 :goto_4

    :cond_6
    move v3, v5

    .line 2745
    goto/16 :goto_5

    :cond_7
    move v3, v5

    .line 2746
    goto/16 :goto_6

    :cond_8
    move v3, v5

    .line 2747
    goto/16 :goto_7

    :cond_9
    move v3, v5

    .line 2748
    goto/16 :goto_8

    :cond_a
    move v3, v5

    .line 2749
    goto/16 :goto_9

    :cond_b
    move v3, v5

    .line 2771
    goto/16 :goto_a

    :cond_c
    move v3, v5

    .line 2772
    goto/16 :goto_b

    .line 2798
    :cond_d
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2799
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2800
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2801
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    :cond_e
    move v3, v5

    .line 2816
    goto/16 :goto_d

    :cond_f
    move v3, v5

    .line 2822
    goto/16 :goto_e

    :cond_10
    move v3, v5

    .line 2823
    goto/16 :goto_f

    :cond_11
    move v3, v5

    .line 2827
    goto/16 :goto_10

    :cond_12
    move v3, v5

    .line 2836
    goto/16 :goto_11

    :cond_13
    move v3, v5

    .line 2838
    goto :goto_12

    :cond_14
    move v3, v5

    .line 2841
    goto :goto_13

    :cond_15
    move v3, v5

    .line 2844
    goto :goto_14

    :cond_16
    move v4, v5

    .line 2847
    goto :goto_15
.end method
