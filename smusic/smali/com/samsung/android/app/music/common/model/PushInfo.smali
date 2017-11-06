.class public Lcom/samsung/android/app/music/common/model/PushInfo;
.super Ljava/lang/Object;
.source "PushInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/PushInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSH_TYPE_GCM:Ljava/lang/String; = "1"

.field public static final PUSH_TYPE_SPP:Ljava/lang/String; = "0"


# instance fields
.field private pushToken:Ljava/lang/String;

.field private pushType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/app/music/common/model/PushInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/PushInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/PushInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushToken:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pushToken"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushToken:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushToken"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushToken:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PushInfo;->pushType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return-void
.end method
