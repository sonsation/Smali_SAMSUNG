.class final Lcom/facebook/login/GetTokenLoginMethodHandler$3;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/GetTokenLoginMethodHandler;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/GetTokenLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/GetTokenLoginMethodHandler;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 195
    new-array v0, p1, [Lcom/facebook/login/GetTokenLoginMethodHandler;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;->newArray(I)[Lcom/facebook/login/GetTokenLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
