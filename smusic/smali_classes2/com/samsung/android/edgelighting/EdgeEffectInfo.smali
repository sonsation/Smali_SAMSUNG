.class public Lcom/samsung/android/edgelighting/EdgeEffectInfo;
.super Ljava/lang/Object;
.source "EdgeEffectInfo.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mEffectColors:[I

.field private mFillFullColor:Z

.field private mInfiniteLighting:Z

.field private mIsBlackBG:Z

.field private mLightingDuration:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRadiusWeight:F

.field private mRotateDuration:J

.field private mShowOnlyToast:Z

.field private mStrokeAlpha:F

.field private mStrokeWidth:F

.field private mText:[Ljava/lang/String;

.field private mToastDuration:J

.field private mToastStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mInfiniteLighting:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mFillFullColor:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mShowOnlyToast:Z

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEffectColors()[I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mEffectColors:[I

    return-object v0
.end method

.method public getFillFullColor()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mFillFullColor:Z

    return v0
.end method

.method public getInfiniteLighting()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mInfiniteLighting:Z

    return v0
.end method

.method public getLightingDuration()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mLightingDuration:J

    return-wide v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRadiusWeight()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mRadiusWeight:F

    return v0
.end method

.method public getRotateDuration()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mRotateDuration:J

    return-wide v0
.end method

.method public getShowOnlyToast()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mShowOnlyToast:Z

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mStrokeAlpha:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mStrokeWidth:F

    return v0
.end method

.method public getTickerText()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mText:[Ljava/lang/String;

    return-object v0
.end method

.method public getToastDuration()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mToastDuration:J

    return-wide v0
.end method

.method public getToastStyle()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mToastStyle:I

    return v0
.end method

.method public getUsingBlackBG()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mIsBlackBG:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method

.method public setEffectColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mEffectColors:[I

    .line 31
    return-void
.end method

.method public setFillFullColor(Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mFillFullColor:Z

    .line 75
    return-void
.end method

.method public setInfiniteLighting(Z)V
    .locals 0
    .param p1, "isInfinte"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mInfiniteLighting:Z

    .line 51
    return-void
.end method

.method public setLightingDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mLightingDuration:J

    .line 59
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 43
    return-void
.end method

.method public setRadiusWeight(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mRadiusWeight:F

    .line 83
    return-void
.end method

.method public setRotateDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mRotateDuration:J

    .line 63
    return-void
.end method

.method public setShowOnlyToast(Z)V
    .locals 0
    .param p1, "isHide"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mShowOnlyToast:Z

    .line 79
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mStrokeAlpha:F

    .line 86
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mStrokeWidth:F

    .line 67
    return-void
.end method

.method public setTickerText([Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # [Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setToastDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mToastDuration:J

    .line 55
    return-void
.end method

.method public setToastStyle(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mToastStyle:I

    .line 71
    return-void
.end method

.method public setUsingBlackBG(Z)V
    .locals 0
    .param p1, "isBlackBG"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->mIsBlackBG:Z

    .line 47
    return-void
.end method
