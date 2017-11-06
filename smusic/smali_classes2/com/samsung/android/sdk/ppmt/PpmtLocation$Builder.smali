.class public Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;
.super Ljava/lang/Object;
.source "PpmtLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/PpmtLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLatitude:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLongitude:Ljava/lang/String;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mExtra:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/ppmt/PpmtLocation;
    .locals 8

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLongitude:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLatitude:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "location is null. please call setLocation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    .line 110
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtLocation;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp is empty. fill with system current millis. + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/ppmt/PpmtLocation;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLatitude:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLongitude:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mExtra:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/ppmt/PpmtLocation;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcom/samsung/android/sdk/ppmt/PpmtLocation$1;)V

    return-object v1
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-nez p2, :cond_1

    .line 86
    const-string p2, ""

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtLocation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set data : value is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object p0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mExtra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "location is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLatitude:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mLongitude:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setTimestamp(J)Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation$Builder;->mTimestamp:J

    .line 70
    return-object p0
.end method
