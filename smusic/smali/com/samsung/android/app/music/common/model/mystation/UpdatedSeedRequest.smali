.class public Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;
.super Ljava/lang/Object;
.source "UpdatedSeedRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEED_ADD:Ljava/lang/String; = "add"

.field public static final SEED_DEL:Ljava/lang/String; = "delete"


# instance fields
.field private seedId:Ljava/lang/String;

.field private seedName:Ljava/lang/String;

.field private seedType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->type:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "edittype"    # Ljava/lang/String;
    .param p2, "seedtype"    # Ljava/lang/String;
    .param p3, "seedID"    # Ljava/lang/String;
    .param p4, "seedTitle"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->type:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedType:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedId:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getSeedEditType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedSeedRequest;->seedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
