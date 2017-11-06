.class public Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "SearchResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fromBixby:Ljava/lang/String;

.field private isRecommendKeywordSearch:Ljava/lang/String;

.field private recommendKeyword:Ljava/lang/String;

.field private searchList:Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->totalCount:I

    .line 27
    const-class v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getRecommendKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->totalCount:I

    return v0
.end method

.method public isBixbyCall()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isRecommendSearch()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setIsBixbyCall(Ljava/lang/String;)V
    .locals 0
    .param p1, "bixbycall"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setIsRecommendSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendSeach"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
