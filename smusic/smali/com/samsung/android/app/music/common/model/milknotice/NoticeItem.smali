.class public Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "NoticeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private menuNoticeDate:Ljava/lang/String;

.field private menuNoticeId:Ljava/lang/String;

.field private menuNoticeTitle:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeTitle:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeDate:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->url:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMenuNoticeDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuNoticeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeId:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuNoticeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->menuNoticeDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
