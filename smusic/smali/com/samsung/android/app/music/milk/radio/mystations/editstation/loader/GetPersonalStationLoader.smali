.class public Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;
.source "GetPersonalStationLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetPersonalStationLoader"


# instance fields
.field private mStationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceHelper"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p3, "stationId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    .line 21
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;->mStationId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected assertResult(IILjava/lang/Object;)Z
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspData"    # Ljava/lang/Object;

    .prologue
    .line 45
    const/16 v0, 0xd1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelRequest()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->cancelRequest()V

    .line 41
    return-void
.end method

.method protected clear(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 31
    return-void
.end method

.method protected bridge synthetic clear(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;->clear(Lcom/samsung/android/app/music/common/model/Station;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "GetPersonalStationLoader"

    return-object v0
.end method

.method protected getResponseData(Ljava/lang/Object;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 0
    .param p1, "rspData"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    .end local p1    # "rspData":Ljava/lang/Object;
    return-object p1
.end method

.method protected bridge synthetic getResponseData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;->getResponseData(Ljava/lang/Object;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method protected request()I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/loader/GetPersonalStationLoader;->mStationId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPersonalStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
