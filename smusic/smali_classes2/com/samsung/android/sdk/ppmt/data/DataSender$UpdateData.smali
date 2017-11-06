.class public Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
.super Ljava/lang/Object;
.source "DataSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/data/DataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mKey:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mValue:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string p2, ""

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    const-string p2, ""

    .line 53
    :cond_1
    if-nez p3, :cond_2

    .line 54
    const-string p3, ""

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mValue:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mType:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
