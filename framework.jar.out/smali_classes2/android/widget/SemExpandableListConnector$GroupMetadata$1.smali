.class final Landroid/widget/SemExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 991
    invoke-static {v1, v2, v3, v4, v5}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 996
    .local v0, "gm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1000
    new-array v0, p1, [Landroid/widget/SemExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 999
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;->newArray(I)[Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method
