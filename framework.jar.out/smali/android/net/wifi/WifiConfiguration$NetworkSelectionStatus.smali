.class public Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatus"
.end annotation


# static fields
.field private static final CONNECT_CHOICE_EXISTS:I = 0x1

.field private static final CONNECT_CHOICE_NOT_EXISTS:I = -0x1

.field public static final DISABLED_ASSOCIATION_REJECTION:I = 0x2

.field public static final DISABLED_AUTHENTICATION_FAILURE:I = 0x3

.field public static final DISABLED_AUTHENTICATION_NO_CREDENTIALS:I = 0x7

.field public static final DISABLED_BAD_LINK:I = 0x1

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0x9

.field public static final DISABLED_CAPTIVE_PORTAL:I = 0xb

.field public static final DISABLED_DHCP_FAILURE:I = 0x4

.field public static final DISABLED_DNS_FAILURE:I = 0x5

.field public static final DISABLED_NO_INTERNET:I = 0x8

.field public static final DISABLED_POOR_LINK:I = 0xc

.field public static final DISABLED_TLS_VERSION_MISMATCH:I = 0x6

.field public static final DISABLED_UNSTABLE_AP:I = 0xa

.field public static final INVALID_NETWORK_SELECTION_DISABLE_TIMESTAMP:J = -0x1L

.field public static final NETWORK_SELECTION_DISABLED_MAX:I = 0xd

.field public static final NETWORK_SELECTION_ENABLE:I = 0x0

.field public static final NETWORK_SELECTION_ENABLED:I = 0x0

.field public static final NETWORK_SELECTION_PERMANENTLY_DISABLED:I = 0x2

.field public static final NETWORK_SELECTION_STATUS_MAX:I = 0x3

.field public static final NETWORK_SELECTION_TEMPORARY_DISABLED:I = 0x1

.field private static final QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

.field private static final QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;


# instance fields
.field private mCandidate:Landroid/net/wifi/ScanResult;

.field private mCandidateScore:I

.field private mConnectChoice:Ljava/lang/String;

.field private mConnectChoiceTimestamp:J

.field private mHasEverConnected:Z

.field private mNetworkSeclectionDisableCounter:[I

.field private mNetworkSelectionBSSID:Ljava/lang/String;

.field private mNetworkSelectionDisableReason:I

.field private mSeenInLastQualifiedNetworkSelection:Z

.field private mStatus:I

.field private mTemporarilyDisabledTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1264
    new-array v0, v5, [Ljava/lang/String;

    .line 1265
    const-string/jumbo v1, "NETWORK_SELECTION_ENABLED"

    aput-object v1, v0, v2

    .line 1266
    const-string/jumbo v1, "NETWORK_SELECTION_TEMPORARY_DISABLED"

    aput-object v1, v0, v3

    .line 1267
    const-string/jumbo v1, "NETWORK_SELECTION_PERMANENTLY_DISABLED"

    aput-object v1, v0, v4

    .line 1264
    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    .line 1333
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 1334
    const-string/jumbo v1, "NETWORK_SELECTION_ENABLE"

    aput-object v1, v0, v2

    .line 1335
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_BAD_LINK"

    aput-object v1, v0, v3

    .line 1336
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION "

    aput-object v1, v0, v4

    .line 1337
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    aput-object v1, v0, v5

    .line 1338
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1339
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_DNS_FAILURE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1340
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_TLS_VERSION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1341
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1342
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_NO_INTERNET"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1343
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1344
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_UNSTABLE_AP"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1345
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_CAPTIVE_PORTAL"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1346
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_POOR_LINK"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1333
    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    .line 1239
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 1384
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 1401
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    .line 1533
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 1531
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    return-void
.end method

.method public static getNetworkDisableReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 1541
    if-ltz p0, :cond_0

    const/16 v0, 0xd

    if-ge p0, v0, :cond_0

    .line 1542
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1544
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearDisableReasonCounter()V
    .locals 2

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1696
    return-void
.end method

.method public clearDisableReasonCounter(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v1, 0x0

    .line 1686
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 1687
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput v1, v0, p1

    .line 1685
    return-void

    .line 1689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .prologue
    .line 1722
    iget v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 1723
    iget v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 1724
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 1726
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 1727
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v2, v2, v0

    .line 1726
    aput v2, v1, v0

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1729
    :cond_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 1730
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 1731
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1733
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1721
    return-void
.end method

.method public getCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getCandidateScore()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    return v0
.end method

.method public getConnectChoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectChoiceTimestamp()J
    .locals 2

    .prologue
    .line 1503
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    return-wide v0
.end method

.method public getDisableReasonCounter(I)I
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1645
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 1646
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v0, v0, p1

    return v0

    .line 1648
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisableTime()J
    .locals 2

    .prologue
    .line 1635
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-wide v0
.end method

.method public getHasEverConnected()Z
    .locals 1

    .prologue
    .line 1528
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return v0
.end method

.method public getNetworkDisableReasonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1552
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNetworkSelectionBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionDisableReason()I
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return v0
.end method

.method public getNetworkSelectionStatus()I
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    return v0
.end method

.method public getNetworkStatusString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1520
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSeenInLastQualifiedNetworkSelection()Z
    .locals 1

    .prologue
    .line 1447
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    return v0
.end method

.method public incrementDisableReasonCounter(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1672
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 1673
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1671
    return-void

    .line 1675
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDisabledByReason(I)Z
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1619
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1566
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNetworkPermanentlyDisabled()Z
    .locals 2

    .prologue
    .line 1580
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkTemporaryDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1573
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1758
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v3, 0xd

    if-ge v0, v3, :cond_0

    .line 1760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableReasonCounter(II)V

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1763
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1765
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1771
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1755
    return-void

    .line 1768
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1769
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1771
    goto :goto_2
.end method

.method public setCandidate(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "scanCandidate"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1454
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    .line 1453
    return-void
.end method

.method public setCandidateScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 1471
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    .line 1470
    return-void
.end method

.method public setConnectChoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "newConnectChoice"    # Ljava/lang/String;

    .prologue
    .line 1495
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    .line 1494
    return-void
.end method

.method public setConnectChoiceTimestamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 1512
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    .line 1511
    return-void
.end method

.method public setDisableReasonCounter(II)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "value"    # I

    .prologue
    .line 1659
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 1660
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput p2, v0, p1

    .line 1658
    return-void

    .line 1662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisableTime(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 1627
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 1626
    return-void
.end method

.method public setHasEverConnected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1524
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 1523
    return-void
.end method

.method public setNetworkSelectionBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1718
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 1717
    return-void
.end method

.method public setNetworkSelectionDisableReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1605
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 1606
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 1604
    return-void

    .line 1608
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkSelectionStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1588
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1589
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 1587
    :cond_0
    return-void
.end method

.method public setSeenInLastQualifiedNetworkSelection(Z)V
    .locals 0
    .param p1, "seen"    # Z

    .prologue
    .line 1438
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    .line 1437
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 1737
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    .line 1741
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1743
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1744
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1746
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1752
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    return-void

    .line 1750
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1752
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
