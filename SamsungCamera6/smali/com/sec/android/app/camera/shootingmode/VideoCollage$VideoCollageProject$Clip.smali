.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Clip"
.end annotation


# instance fields
.field private mDuration:I

.field private mPath:Ljava/lang/String;

.field private mRotate:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getDurationInMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->delete()Z

    move-result v0

    return v0
.end method

.method private delete()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "VideoCollageProject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to delete file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDurationInMs()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    return v0
.end method

.method private getDurationInSecond()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private getRotation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method
