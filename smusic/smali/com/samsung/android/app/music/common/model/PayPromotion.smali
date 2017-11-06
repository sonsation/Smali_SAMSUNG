.class public Lcom/samsung/android/app/music/common/model/PayPromotion;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PayPromotion.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/PayPromotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private promotionId:Ljava/lang/String;

.field private promotionName:Ljava/lang/String;

.field private promotionNotice:Ljava/lang/String;

.field private saleType:Ljava/lang/String;

.field private saleValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/model/PayPromotion$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/PayPromotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->imageUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->linkUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionNotice:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleValue:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleType:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleValue()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleValue:I

    return v0
.end method

.method public setPromotionNotice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionNotice"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionNotice:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSaleValue(I)V
    .locals 0
    .param p1, "saleValue"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleValue:I

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->promotionNotice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PayPromotion;->saleType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
