.class public final Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.source "ModeMenuResourceBundle.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDownloaded:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloaded()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDownloaded:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDownloaded(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDownloaded:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-void
.end method
