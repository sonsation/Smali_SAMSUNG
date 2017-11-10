.class public Lcom/sec/android/app/camera/util/ImageStoringInfo;
.super Ljava/lang/Object;
.source "ImageStoringInfo.java"


# instance fields
.field private mDateTaken:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mFileName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDateTaken:J

    return-void
.end method


# virtual methods
.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDateTaken:J

    return-wide v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTaken(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDateTaken:J

    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ImageStoringInfo;->mFileName:Ljava/lang/String;

    return-void
.end method
