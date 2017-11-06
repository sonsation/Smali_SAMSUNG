.class public Lcom/samsung/android/app/music/common/model/purchase/VoucherList;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "VoucherList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VoucherList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Voucher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/VoucherList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->list:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Voucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 51
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/content/ContentValues;

    .line 52
    .local v1, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 53
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/purchase/Voucher;

    .line 54
    .local v2, "voucher":Lcom/samsung/android/app/music/common/model/purchase/Voucher;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/Voucher;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .end local v2    # "voucher":Lcom/samsung/android/app/music/common/model/purchase/Voucher;
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 27
    return-void
.end method
