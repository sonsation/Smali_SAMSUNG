.class final Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest$1;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 418
    new-instance v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 423
    new-array v0, p1, [Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest$1;->newArray(I)[Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    move-result-object v0

    return-object v0
.end method
