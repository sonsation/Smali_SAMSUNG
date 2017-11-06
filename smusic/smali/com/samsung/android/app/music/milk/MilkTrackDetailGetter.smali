.class public final Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;
.super Ljava/lang/Object;
.source "MilkTrackDetailGetter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTempListener:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

.field private mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private onUpdated()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTempListener:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTempListener:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;->onUpdated(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTempListener:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled >> id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rsp - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 85
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 68
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 82
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->onUpdated()V

    goto :goto_0

    .line 70
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    if-eqz v0, :cond_0

    .line 71
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackId:Ljava/lang/String;

    goto :goto_1

    .line 74
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackId:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled>> rspData is not instance of TrackDetailResponse!!. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x2b5d
        :pswitch_0
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public requestTrackDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 40
    if-eqz p3, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;->onUpdated(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTempListener:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->onUpdated()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTrackDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 28
    if-nez p2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->mTrackId:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method
