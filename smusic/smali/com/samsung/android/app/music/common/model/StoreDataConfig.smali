.class public Lcom/samsung/android/app/music/common/model/StoreDataConfig;
.super Ljava/lang/Object;
.source "StoreDataConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/StoreDataConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private copyRight:Ljava/lang/String;

.field private musicMembersPrebody:Ljava/lang/String;

.field private purchasePopupText:Ljava/lang/String;

.field private videoAdDefaultCp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/samsung/android/app/music/common/model/StoreDataConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/StoreDataConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->copyRight:Ljava/lang/String;

    return-object v0
.end method

.method public getMembersPrebody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->musicMembersPrebody:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasePopupText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->purchasePopupText:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdDefaultCp()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/common/model/StoreDataConfig;->videoAdDefaultCp:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    return-void
.end method
