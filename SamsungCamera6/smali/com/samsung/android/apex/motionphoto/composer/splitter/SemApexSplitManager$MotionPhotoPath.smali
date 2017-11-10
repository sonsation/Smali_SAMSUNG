.class Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;
.super Ljava/lang/Object;
.source "SemApexSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionPhotoPath"
.end annotation


# instance fields
.field private final mId:J

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mId:J

    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mId:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "[%d : %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->mPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
