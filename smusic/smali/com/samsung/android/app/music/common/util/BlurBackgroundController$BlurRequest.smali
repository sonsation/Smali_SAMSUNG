.class final Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlurRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private baseUri:Landroid/net/Uri;

.field private final requestType:I

.field private final thumbnailId:J

.field private toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;JI)V
    .locals 0
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J
    .param p4, "requestType"    # I

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    .line 406
    iput-wide p2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    .line 407
    iput p4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->requestType:I

    .line 408
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->requestType:I

    .line 414
    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    .line 392
    iget v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->requestType:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    if-ne p0, p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 438
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 441
    check-cast v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .line 443
    .local v0, "that":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 448
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 449
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 450
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRequest{requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->requestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->toString:Ljava/lang/String;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->toString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->baseUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 465
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->thumbnailId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    iget v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->requestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return-void
.end method
