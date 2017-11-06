.class public Lcom/samsung/android/app/music/common/model/share/SnsInfo;
.super Ljava/lang/Object;
.source "SnsInfo.java"


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppLabel:Ljava/lang/String;

.field public mAppPackageName:Ljava/lang/String;

.field public mRecentTime:J

.field public mShareItem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "shareItem"    # I
    .param p2, "appIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "appLabel"    # Ljava/lang/String;
    .param p5, "activityInfo"    # Ljava/lang/String;
    .param p6, "recentTime"    # J

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mShareItem:I

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppLabel:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    .line 28
    iput-wide p6, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 32
    if-ne p0, p1, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 41
    :goto_0
    return v1

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    if-nez v1, :cond_1

    .line 37
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 41
    .local v0, "rhs":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
