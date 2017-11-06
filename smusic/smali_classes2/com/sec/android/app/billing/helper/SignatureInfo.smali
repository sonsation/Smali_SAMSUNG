.class public Lcom/sec/android/app/billing/helper/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public baseString:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/sec/android/app/billing/helper/SignatureInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/SignatureInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/SignatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/SignatureInfo;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 24
    new-instance v0, Lcom/sec/android/app/billing/helper/SignatureInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/SignatureInfo;-><init>()V

    .line 25
    .local v0, "signatureInfo":Lcom/sec/android/app/billing/helper/SignatureInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/SignatureInfo;->baseString:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/SignatureInfo;->signature:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/SignatureInfo;->timeStamp:Ljava/lang/String;

    .line 28
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->baseString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->timeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    return-void
.end method
