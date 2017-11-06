.class public Lcom/samsung/android/app/music/common/model/UserInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/UserInfo$UserStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE:Ljava/lang/String; = "0"

.field public static final ENABLE:Ljava/lang/String; = "1"

.field public static final HAS_PREMIUM_ORDER_HISTORY:Ljava/lang/String; = "1"

.field public static final IS_ADULT_NO:Ljava/lang/String; = "0"

.field public static final IS_ADULT_YES:Ljava/lang/String; = "1"

.field public static final IS_CERTIFIED_EXPIRED:Ljava/lang/String; = "-1"

.field public static final IS_CERTIFIED_NO:Ljava/lang/String; = "0"

.field public static final IS_CERTIFIED_YES:Ljava/lang/String; = "1"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field public downloadableUser:Ljava/lang/String;

.field public drmProductUser:Ljava/lang/String;

.field public hasPremiumOrderHistory:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field public mAdultCertifyYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adultCertifyYn"
    .end annotation
.end field

.field public mAdultYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adultYn"
    .end annotation
.end field

.field private mBirthday:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field public mNewSAUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newUserYn"
    .end annotation
.end field

.field public mOrderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderId"
    .end annotation
.end field

.field public mUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field

.field private mUserStatus:I

.field public streamingUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptionUser"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/model/UserInfo;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/common/model/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 64
    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserId:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultYn:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAccessToken:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mOrderId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mBirthday:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAdultCertifyYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAdult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultYn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "0"

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultYn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsNewSAUser()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSAtoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    return v0
.end method

.method public hasPremiumOrderHistory()Z
    .locals 2

    .prologue
    .line 225
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamingUser()Z
    .locals 2

    .prologue
    .line 221
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refine(Landroid/content/Context;)Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mContext:Landroid/content/Context;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 217
    :goto_0
    return-object p0

    .line 211
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    goto :goto_0

    .line 214
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    goto :goto_0
.end method

.method public setAdultCertifyYn(Ljava/lang/String;)V
    .locals 0
    .param p1, "adultCertifyYn"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mBirthday:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mOrderId:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setSAtoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAccessToken:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setUserStatus(I)V
    .locals 0
    .param p1, "userStatus"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultCode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mUserStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
