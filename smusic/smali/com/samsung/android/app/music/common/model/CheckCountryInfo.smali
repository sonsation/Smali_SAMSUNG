.class public Lcom/samsung/android/app/music/common/model/CheckCountryInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "CheckCountryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/CheckCountryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected countryCode:Ljava/lang/String;

.field private mExtraHttpServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_ext_server"
    .end annotation
.end field

.field private mHttpProxyServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_proxy_server"
    .end annotation
.end field

.field private mModHttpServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mod_http_server"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/CheckCountryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraHttpServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->mExtraHttpServer:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxyServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->mHttpProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getModHttpServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->mModHttpServer:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setHttpProxyServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpProxyServer"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->mHttpProxyServer:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    return-void
.end method
