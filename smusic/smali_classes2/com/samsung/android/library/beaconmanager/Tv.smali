.class public Lcom/samsung/android/library/beaconmanager/Tv;
.super Ljava/lang/Object;
.source "Tv.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Tv"

.field private static final UNKNOWN_MAC:Ljava/lang/String; = "00:00:00:00:00:00"


# instance fields
.field private apBssid:Ljava/lang/String;

.field private apConnected:I

.field private apSsid:Ljava/lang/String;

.field private bleMac:Ljava/lang/String;

.field private btMac:Ljava/lang/String;

.field private channelNumber:I

.field private devType:I

.field private ethMac:Ljava/lang/String;

.field private mAvailSvc:B

.field private modelName:Ljava/lang/String;

.field private p2pAvailable:I

.field private p2pMac:Ljava/lang/String;

.field private status:I

.field private support4K:I

.field private supportedService:I

.field private wfdSinkAvailable:I

.field private wfdSrcAvailable:I

.field private wifiMac:Ljava/lang/String;

.field private wiredConnected:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/library/beaconmanager/Tv$1;

    invoke-direct {v0}, Lcom/samsung/android/library/beaconmanager/Tv$1;-><init>()V

    sput-object v0, Lcom/samsung/android/library/beaconmanager/Tv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    .line 45
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 46
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 47
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 48
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 49
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 50
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    .line 51
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 60
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 61
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 62
    iput-byte v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    .line 66
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 4
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "btMac"    # Ljava/lang/String;
    .param p3, "bleMac"    # Ljava/lang/String;
    .param p4, "p2pMac"    # Ljava/lang/String;
    .param p5, "wifiMac"    # Ljava/lang/String;
    .param p6, "ethMac"    # Ljava/lang/String;
    .param p7, "apSsid"    # Ljava/lang/String;
    .param p8, "apBssid"    # Ljava/lang/String;
    .param p9, "supportedService"    # I
    .param p10, "array"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    .line 45
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 46
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 47
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 48
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 49
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 50
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    .line 51
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 60
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 61
    iput v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 62
    iput-byte v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    .line 70
    iput v3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    .line 71
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 79
    iput p9, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "channelNumber":I
    if-eqz p10, :cond_0

    array-length v1, p10

    if-ne v1, v3, :cond_0

    .line 82
    aget v0, p10, v2

    .line 84
    :cond_0
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 85
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    return p1
.end method

.method static synthetic access$1002(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    return p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    return p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/library/beaconmanager/Tv;B)B
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # B

    .prologue
    .line 10
    iput-byte p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/Tv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 348
    instance-of v3, p1, Lcom/samsung/android/library/beaconmanager/Tv;

    if-nez v3, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 351
    check-cast v0, Lcom/samsung/android/library/beaconmanager/Tv;

    .line 353
    .local v0, "src":Lcom/samsung/android/library/beaconmanager/Tv;
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 354
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 357
    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 362
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 365
    goto/16 :goto_0

    .line 369
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 370
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 373
    goto/16 :goto_0

    .line 377
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 378
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 379
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 381
    goto/16 :goto_0

    .line 385
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 389
    goto/16 :goto_0
.end method

.method public get4KAvailableStatus()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    return v0
.end method

.method public getAPConStatus()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    return v0
.end method

.method public getApBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getApSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailSvc()B
    .locals 1

    .prologue
    .line 121
    iget-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    return v0
.end method

.method public getBleMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    return-object v0
.end method

.method public getBtMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return v0
.end method

.method public getDevType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    return v0
.end method

.method public getEthMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getP2PAvailableStatus()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    return v0
.end method

.method public getP2pMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    return-object v0
.end method

.method public getProductYear()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget v3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 135
    .local v0, "isBleState":Z
    :goto_0
    if-nez v0, :cond_3

    .line 136
    const-string v1, "Tv"

    const-string v3, "Invalid Product Year. beacause AvailSvc is unknown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 140
    :cond_1
    :goto_1
    return v1

    .end local v0    # "isBleState":Z
    :cond_2
    move v0, v2

    .line 133
    goto :goto_0

    .line 140
    .restart local v0    # "isBleState":Z
    :cond_3
    iget-byte v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    return v0
.end method

.method public getSupportedService()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    return v0
.end method

.method public getWfdSinkAvailableStatus()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    return v0
.end method

.method public getWfdSrcAvailableStatus()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    return v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public getWiredNetworkStatus()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 397
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 398
    .local v0, "it":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public isSupportedService(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidTvStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 252
    sparse-switch p1, :sswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 260
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public setApBssid(Ljava/lang/String;)V
    .locals 1
    .param p1, "apBssid"    # Ljava/lang/String;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setApSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apSsid"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setAvailSvc(B)Z
    .locals 3
    .param p1, "status"    # B

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 153
    iput-byte p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    .line 154
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 155
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 156
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 157
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 158
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 159
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_5

    :goto_5
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    .line 160
    return v2

    :cond_0
    move v0, v2

    .line 154
    goto :goto_0

    :cond_1
    move v0, v2

    .line 155
    goto :goto_1

    :cond_2
    move v0, v2

    .line 156
    goto :goto_2

    :cond_3
    move v0, v2

    .line 157
    goto :goto_3

    :cond_4
    move v0, v2

    .line 158
    goto :goto_4

    :cond_5
    move v1, v2

    .line 159
    goto :goto_5
.end method

.method public setBleMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "bleMac"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setBtMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "btMac"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setChannelNumber(I)V
    .locals 0
    .param p1, "channelNumber"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 93
    return-void
.end method

.method public setDevType(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 96
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 97
    :cond_0
    const-string v0, "Tv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDevType invalid type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 100
    :cond_1
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEthMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "ethMac"    # Ljava/lang/String;

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setP2pMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "p2pMac"    # Ljava/lang/String;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/Tv;->isValidTvStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportedService(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 114
    return-void
.end method

.method public setWifiMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "wifiMac"    # Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Model Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", BT MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", BLE MAC: "

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", P2P MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", WIFI MAC: "

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", ETH MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", connected AP SSID: "

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", connected AP BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", device Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", AP Connected: "

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", P2P Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Mirroring Sink Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Mirroring Source Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",Wired Network Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", 4K TV?(1:Avail 2:UnAvail): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", AvailSvc : "

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", supportedService: "

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", P2P channelNumber: "

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/library/beaconmanager/Tv;

    .prologue
    .line 402
    if-eqz p1, :cond_7

    .line 403
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 404
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 405
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 406
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 407
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 409
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 419
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 422
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 425
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 428
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 430
    :cond_6
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    .line 431
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 432
    iget-byte v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    iput-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    .line 433
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 434
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 437
    :cond_7
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 304
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 323
    return-void
.end method
