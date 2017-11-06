.class public Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "EventWeb.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endDate:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private eventTitle:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private regDate:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventTitle"    # Ljava/lang/String;
    .param p3, "regDate"    # Ljava/lang/String;
    .param p4, "startDate"    # Ljava/lang/String;
    .param p5, "endDate"    # Ljava/lang/String;
    .param p6, "summary"    # Ljava/lang/String;
    .param p7, "linkType"    # Ljava/lang/String;
    .param p8, "linkUrl"    # Ljava/lang/String;
    .param p9, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static createEventInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;
    .locals 10
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "eventTitle"    # Ljava/lang/String;
    .param p2, "regDate"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;
    .param p6, "linkType"    # Ljava/lang/String;
    .param p7, "linkUrl"    # Ljava/lang/String;
    .param p8, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
