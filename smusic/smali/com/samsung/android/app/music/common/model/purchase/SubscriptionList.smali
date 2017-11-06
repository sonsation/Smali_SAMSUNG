.class public Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "SubscriptionList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private moreYn:Ljava/lang/String;

.field private subscriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->moreYn:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 56
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 57
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 58
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/Subscription;

    .line 59
    .local v1, "subscription":Lcom/samsung/android/app/music/common/model/purchase/Subscription;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    .end local v1    # "subscription":Lcom/samsung/android/app/music/common/model/purchase/Subscription;
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->moreYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    return-void
.end method
