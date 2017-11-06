.class public Lcom/samsung/android/app/music/common/model/share/ShareItem;
.super Ljava/lang/Object;
.source "ShareItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/share/ShareItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/ShareItem$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->id:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->title:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->subTitle:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->imageUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem;-><init>()V

    .line 15
    .local v0, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iput-object p0, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->id:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->title:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->imageUrl:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem;-><init>()V

    .line 24
    .local v0, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iput-object p0, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->id:Ljava/lang/String;

    .line 25
    iput-object p1, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->title:Ljava/lang/String;

    .line 26
    iput-object p2, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->subTitle:Ljava/lang/String;

    .line 27
    iput-object p3, v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->imageUrl:Ljava/lang/String;

    .line 29
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/share/ShareItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
