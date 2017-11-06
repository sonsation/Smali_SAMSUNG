.class public Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
.super Ljava/lang/Object;
.source "DataSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/data/DataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CumulativeData"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mId:J

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mId:J

    .line 97
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mType:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;

    .line 99
    return-void
.end method
