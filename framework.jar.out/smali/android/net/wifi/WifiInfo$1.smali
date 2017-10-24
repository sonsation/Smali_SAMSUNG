.class final Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 937
    new-instance v1, Landroid/net/wifi/WifiInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 938
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_0

    .line 944
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 948
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiSsid;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set7(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    .line 950
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set4(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set5(Landroid/net/wifi/WifiInfo;Z)Z

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set1(Landroid/net/wifi/WifiInfo;Z)Z

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->score:I

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 962
    sget-object v2, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set6(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 967
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheckConfirmedOnThisConnection(Z)V

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setManualConnection(Z)V

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set3(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setDefaultAp(Z)V

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_c

    move v2, v3

    :goto_b
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setVerifiedPassword(Z)V

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_d

    move v2, v3

    :goto_c
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_d
    iput-boolean v2, v1, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    :goto_e
    iput-boolean v3, v1, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 995
    return-object v1

    :cond_2
    move v2, v4

    .line 952
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 953
    goto/16 :goto_2

    .line 964
    :cond_4
    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set6(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    goto/16 :goto_3

    :cond_5
    move v2, v4

    .line 967
    goto/16 :goto_4

    :cond_6
    move v2, v4

    .line 970
    goto :goto_5

    :cond_7
    move v2, v4

    .line 973
    goto :goto_6

    :cond_8
    move v2, v4

    .line 976
    goto :goto_7

    :cond_9
    move v2, v4

    .line 979
    goto :goto_8

    :cond_a
    move v2, v4

    .line 984
    goto :goto_9

    :cond_b
    move v2, v4

    .line 986
    goto :goto_a

    :cond_c
    move v2, v4

    .line 988
    goto :goto_b

    :cond_d
    move v2, v4

    .line 991
    goto :goto_c

    :cond_e
    move v2, v4

    .line 993
    goto :goto_d

    :cond_f
    move v3, v4

    .line 994
    goto :goto_e

    .line 945
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto/16 :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 999
    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method
