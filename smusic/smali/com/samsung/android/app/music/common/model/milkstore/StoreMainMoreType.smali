.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
.super Ljava/lang/Object;
.source "StoreMainMoreType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field displayGroup:Ljava/lang/String;

.field displayId:Ljava/lang/String;

.field displayOrder:I

.field displayTitle:Ljava/lang/String;

.field displayType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayOrder:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayOrder:I

    return v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayGroup"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayOrder:I

    .line 101
    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayTitle"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
