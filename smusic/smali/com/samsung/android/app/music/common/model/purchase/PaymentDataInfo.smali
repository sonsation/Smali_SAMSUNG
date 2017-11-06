.class public Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PaymentDataInfo.java"


# static fields
.field public static final ALREADY_PURCHASED:I = 0x2199

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I


# instance fields
.field private addGiftcardUrl:Ljava/lang/String;

.field private baseString:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private curTime:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private exceptionPaymentMethods:Ljava/lang/String;

.field private getGiftcardUrl:Ljava/lang/String;

.field private notifyUrl:Ljava/lang/String;

.field private paymentType:Ljava/lang/String;

.field private productInfo:Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

.field private reqestUrl:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private storeUrl:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private voucherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->reqestUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->storeUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAddGiftcardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionPaymentMethods()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    return-object v0
.end method

.method public getGetGiftcardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    return-object v0
.end method

.method public getReqestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->reqestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeUrl"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->storeUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setVoucherId(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherId"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->reqestUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->storeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
