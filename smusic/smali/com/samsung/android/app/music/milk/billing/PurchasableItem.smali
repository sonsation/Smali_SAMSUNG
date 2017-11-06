.class public abstract Lcom/samsung/android/app/music/milk/billing/PurchasableItem;
.super Ljava/lang/Object;
.source "PurchasableItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mOptional1:Ljava/lang/String;

.field private mOptional2:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional1:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional2:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static toString(Lcom/samsung/android/app/music/milk/billing/PurchasableItem;)Ljava/lang/String;
    .locals 3
    .param p0, "item"    # Lcom/samsung/android/app/music/milk/billing/PurchasableItem;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "title - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  product id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "msg":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getOptional1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional1:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional2:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public setOptional1(Ljava/lang/String;)V
    .locals 0
    .param p1, "optional1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional1:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setOptional2(Ljava/lang/String;)V
    .locals 0
    .param p1, "optional2"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional2:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/PurchasableItem;->mOptional2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
