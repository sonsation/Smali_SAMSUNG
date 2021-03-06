.class public final Landroid/hardware/display/SemDlnaDevice;
.super Ljava/lang/Object;
.source "SemDlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemDlnaDevice$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/SemDlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_ERROR:I = 0x2

.field public static final STATE_NOT_CONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemDlnaDevice"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_VIDEO:I


# instance fields
.field private final mDlnaType:I

.field private final mIpAddress:Ljava/lang/String;

.field private final mIsSwitchingDevice:Z

.field private final mMacAddressFromARP:Ljava/lang/String;

.field private final mNICType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private final mP2pMacAddress:Ljava/lang/String;

.field private final mURI:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemDlnaDevice;

    sput-object v0, Landroid/hardware/display/SemDlnaDevice;->EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

    .line 79
    new-instance v0, Landroid/hardware/display/SemDlnaDevice$1;

    invoke-direct {v0}, Landroid/hardware/display/SemDlnaDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "p2pMacAddress"    # Ljava/lang/String;
    .param p4, "macAddressFromARP"    # Ljava/lang/String;
    .param p5, "deviceNICType"    # Ljava/lang/String;
    .param p6, "uid"    # Ljava/lang/String;
    .param p7, "dlnaType"    # I
    .param p8, "isSwitchingDevice"    # Z
    .param p9, "uri"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "SemDlnaDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDlnaDevice name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ipAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", p2pMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", macAddressFromARP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", deviceNICType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dlnaType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p2, :cond_0

    .line 116
    const-string/jumbo v0, "SemDlnaDevice"

    const-string/jumbo v1, "SemDlnaDevice deviceIpAddress must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceIpAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    const-string/jumbo v0, "SemDlnaDevice"

    const-string/jumbo v1, "SemDlnaDevice deviceName must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    if-nez p6, :cond_2

    .line 124
    const-string/jumbo v0, "SemDlnaDevice"

    const-string/jumbo v1, "SemDlnaDevice uid must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    iput-object p1, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    .line 129
    if-eqz p3, :cond_5

    .end local p3    # "p2pMacAddress":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    :cond_4
    if-eqz p4, :cond_7

    .end local p4    # "macAddressFromARP":Ljava/lang/String;
    :goto_1
    iput-object p4, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    .line 138
    :goto_2
    if-eqz p5, :cond_8

    .end local p5    # "deviceNICType":Ljava/lang/String;
    :goto_3
    iput-object p5, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    .line 140
    iput p7, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 141
    iput-boolean p8, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    .line 142
    iput-object p9, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    .line 113
    return-void

    .line 129
    .restart local p3    # "p2pMacAddress":Ljava/lang/String;
    .restart local p4    # "macAddressFromARP":Ljava/lang/String;
    .restart local p5    # "deviceNICType":Ljava/lang/String;
    :cond_5
    const-string/jumbo p3, ""

    goto :goto_0

    .line 132
    .end local p3    # "p2pMacAddress":Ljava/lang/String;
    :cond_6
    invoke-static {p2}, Landroid/hardware/display/SemDlnaDevice;->getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "SemDlnaDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mac address from arp table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    :cond_7
    const-string/jumbo p4, ""

    goto :goto_1

    .line 138
    .end local p4    # "macAddressFromARP":Ljava/lang/String;
    :cond_8
    const-string/jumbo p5, ""

    goto :goto_3
.end method

.method public static getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    const-string/jumbo v6, ""

    return-object v6

    .line 233
    :cond_0
    const/4 v0, 0x0

    .line 234
    .local v0, "br":Ljava/io/BufferedReader;
    const-string/jumbo v6, "/"

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 236
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v7, "/proc/net/arp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 239
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 256
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 259
    :cond_2
    const-string/jumbo v6, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v1, :cond_3

    .line 265
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    :cond_3
    :goto_0
    return-object v6

    .line 243
    :cond_4
    :try_start_3
    const-string/jumbo v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "splitted":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    const/4 v6, 0x3

    aget-object v4, v5, v6

    .line 247
    .local v4, "mac":Ljava/lang/String;
    const-string/jumbo v6, "..:..:..:..:..:.."

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 249
    if-eqz v1, :cond_5

    .line 250
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :cond_5
    if-eqz v1, :cond_6

    .line 265
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    :cond_6
    :goto_1
    return-object v4

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SemDlnaDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "splitted":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 267
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SemDlnaDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 261
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string/jumbo v6, "SemDlnaDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getMacAddrFromArpTable Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    if-eqz v0, :cond_7

    .line 265
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 271
    :cond_7
    :goto_3
    const-string/jumbo v6, ""

    return-object v6

    .line 266
    :catch_3
    move-exception v2

    .line 267
    const-string/jumbo v6, "SemDlnaDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 263
    :goto_4
    if-eqz v0, :cond_8

    .line 265
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 262
    :cond_8
    :goto_5
    throw v6

    .line 266
    :catch_4
    move-exception v2

    .line 267
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SemDlnaDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 260
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/SemDlnaDevice;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemDlnaDevice;

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 277
    instance-of v0, p1, Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_0

    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDlnaDevice;->equals(Landroid/hardware/display/SemDlnaDevice;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDlnaType()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddressFromArp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSwitchingDevice()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", p2p mac : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string/jumbo v2, ", mac from arp: "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string/jumbo v2, ", net type: "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    const-string/jumbo v2, ", dlnaType : "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    iget v2, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    const-string/jumbo v2, ", isSwitchingDevice : "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    iget-boolean v2, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 300
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-boolean v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
