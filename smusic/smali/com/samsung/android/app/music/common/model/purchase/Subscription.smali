.class public Lcom/samsung/android/app/music/common/model/purchase/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE:Ljava/lang/String; = "0"

.field public static final ENABLE:Ljava/lang/String; = "1"

.field public static final ORDER_STATUS_ACTIVE:Ljava/lang/String; = "02"

.field public static final ORDER_STATUS_CANCEL:Ljava/lang/String; = "03"

.field public static final ORDER_STATUS_DETAIL_ACTIVE:Ljava/lang/String; = "02"

.field public static final ORDER_STATUS_DETAIL_PAUSE:Ljava/lang/String; = "04"

.field public static final ORDER_STATUS_INACTIVE:Ljava/lang/String; = "01"

.field public static final ORDER_TYPE_POS:Ljava/lang/String; = "POS"

.field public static final ORDER_TYPE_SUB:Ljava/lang/String; = "SUB"

.field public static final PAYMENT_METHOD_DEFAULT:Ljava/lang/String; = "00"

.field public static final PAYMENT_METHOD_VOUCHER:Ljava/lang/String; = "01"

.field public static final STREAMING_CODE_0:Ljava/lang/String; = "0"

.field public static final STREAMING_CODE_1:Ljava/lang/String; = "1"


# instance fields
.field private downloadMaxCount:I

.field private drmProduct:Ljava/lang/String;

.field private dueDate:Ljava/lang/String;

.field private dueDateLocal:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private orderStatusDetail:Ljava/lang/String;

.field private orderType:Ljava/lang/String;

.field private paymentMethodCode:Ljava/lang/String;

.field private pricingTypeCode:I

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productTitle:Ljava/lang/String;

.field private purchasedPrice:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private startDateLocal:Ljava/lang/String;

.field private streamingCode:Ljava/lang/String;

.field private usageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/Subscription$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderId:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productId:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productDesc:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->imageUrl:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->pricingTypeCode:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderType:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->purchasedPrice:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDate:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDate:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatus:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->paymentMethodCode:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->usageCount:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->downloadMaxCount:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->streamingCode:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDateLocal:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDateLocal:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->drmProduct:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db_date"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    .line 237
    .local v7, "str_format_ori":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c HH:mm"

    .line 243
    .local v6, "str_format_display":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "fmt_ori":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "fmt_display":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 247
    .local v0, "date_ori":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 257
    .end local v0    # "date_ori":Ljava/util/Date;
    :cond_0
    :goto_1
    return-object v5

    .line 240
    .end local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .end local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    .end local v6    # "str_format_display":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c ahh:mm"

    .restart local v6    # "str_format_display":Ljava/lang/String;
    goto :goto_0

    .line 248
    .restart local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .restart local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 253
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "dates":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object p1, v1, v8

    .line 255
    const-string v8, "-"

    const-string v9, "."

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadMaxCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->downloadMaxCount:I

    return v0
.end method

.method public getDrmProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->drmProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDateLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatusDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->paymentMethodCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingTypeCode()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->pricingTypeCode:I

    return v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->purchasedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->streamingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->usageCount:I

    return v0
.end method

.method public setOrderStatusDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "orderId"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v1, "productId"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v1, "productTitle"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getProductTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "productDesc"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getProductDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "productImgUrl"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getProductImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "pricingTypeCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getPricingTypeCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string/jumbo v1, "orderType"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getOrderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "purchasedPrice"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getPurchasedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "startDate"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "dueDate"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "orderStatus"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "paymentMethodCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getPaymentMethodCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "usageCount"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getUsageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v1, "downloadMaxCount"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getDownloadMaxCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string/jumbo v1, "streamingCode"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getStreamingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "orderStatusDetail"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getOrderStatusDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, "startDateLocal"

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "dueDateLocal"

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "drmProduct"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->getDrmProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "product id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->productDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->pricingTypeCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->purchasedPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->paymentMethodCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->usageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->downloadMaxCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->streamingCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->startDateLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->dueDateLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->drmProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return-void
.end method
