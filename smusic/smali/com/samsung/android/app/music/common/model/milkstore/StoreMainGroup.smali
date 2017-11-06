.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
.super Ljava/lang/Object;
.source "StoreMainGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation
.end field

.field categoryGenreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation
.end field

.field contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation
.end field

.field displayGroup:Ljava/lang/String;

.field displayId:Ljava/lang/String;

.field displayOrder:I

.field displayTitle:Ljava/lang/String;

.field displayType:Ljava/lang/String;

.field displayUpdDate:Ljava/lang/String;

.field private mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field private mUpdateDate:Ljava/util/Date;

.field moreTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayOrder:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBannerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    return-object v0
.end method

.method public getContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayUpdDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method

.method public getMoreTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayOrder:I

    return v0
.end method

.method public getUpdateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->mUpdateDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBannerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    .line 154
    return-void
.end method

.method public setCategoryGenreList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "categoryGenreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setContentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayGroup"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayTitle"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayType"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setDisplayUpdDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayUpdDate"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)V
    .locals 0
    .param p1, "groupType"    # Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 182
    return-void
.end method

.method public setMoreTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    .line 162
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayOrder:I

    .line 130
    return-void
.end method

.method public setUpdateDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "updateDate"    # Ljava/util/Date;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->mUpdateDate:Ljava/util/Date;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    return-void
.end method
