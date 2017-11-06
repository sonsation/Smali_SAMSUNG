.class public Lcom/samsung/android/app/music/common/model/purchase/Voucher;
.super Ljava/lang/Object;
.source "Voucher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Voucher"

.field public static final VOUCHER_CUTYPE_COMM:Ljava/lang/String; = "COMM"

.field public static final VOUCHER_CUTYPE_OFF:Ljava/lang/String; = "OFF"

.field public static final VOUCHER_READ:I = 0x0

.field public static final VOUCHER_STATUS_ACTIVE:Ljava/lang/String; = "01"

.field public static final VOUCHER_STATUS_EXPIRED:Ljava/lang/String; = "03"

.field public static final VOUCHER_STATUS_USED:Ljava/lang/String; = "02"

.field public static final VOUCHER_TYPE_BILLING:Ljava/lang/String; = "01"

.field public static final VOUCHER_TYPE_REDEEM:Ljava/lang/String; = "02"

.field public static final VOUCHER_UNREAD:I = 0x1


# instance fields
.field cuTypeCode:Ljava/lang/String;

.field expiryDate:Ljava/lang/String;

.field expiryDateLocal:Ljava/lang/String;

.field periodType:Ljava/lang/String;

.field periodValue:Ljava/lang/String;

.field pricingTypeCode:Ljava/lang/String;

.field productId:Ljava/lang/String;

.field promotionNotice:Ljava/lang/String;

.field read:I

.field startDate:Ljava/lang/String;

.field startDateLocal:Ljava/lang/String;

.field statusCode:Ljava/lang/String;

.field voucherCode:Ljava/lang/String;

.field voucherDesc:Ljava/lang/String;

.field voucherId:I

.field voucherTitle:Ljava/lang/String;

.field voucherType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/Voucher$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDate:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodType:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->productId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->read:I

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getCuTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDateLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodType:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->read:I

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherId:I

    return v0
.end method

.method public getVoucherTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->read:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRead()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->read:I

    .line 179
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "voucherId"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getVoucherId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string/jumbo v1, "voucherCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getVoucherCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "voucherTitle"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getVoucherTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "voucherDesc"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getVoucherDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "startDate"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "expiryDate"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "periodType"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getPeriodType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "periodValue"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getPeriodValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "voucherType"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getVoucherType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "statusCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "productId"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "pricingTypeCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getPricingTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "cuTypeCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getCuTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "promotionNotice"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getPromotionNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "startDatelong"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string/jumbo v1, "startDateLocal"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "expiryDateLocal"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voucher code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", product Id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " voucher - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
