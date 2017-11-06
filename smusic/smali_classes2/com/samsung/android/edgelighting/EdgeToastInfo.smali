.class public Lcom/samsung/android/edgelighting/EdgeToastInfo;
.super Ljava/lang/Object;
.source "EdgeToastInfo.java"


# static fields
.field public static final TOAST_DEFALUT_TYPE:I = 0x1

.field public static final TOAST_PROGRESS_TYPE:I


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mText:[Ljava/lang/String;

.field private mToastDuration:J

.field private mType:I

.field private mViewIcon:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTickerText()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mText:[Ljava/lang/String;

    return-object v0
.end method

.method public getToastDuration()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mToastDuration:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mType:I

    return v0
.end method

.method public getViewIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mViewIcon:Landroid/view/View;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 36
    return-void
.end method

.method public setTickerText([Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # [Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mText:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setToastDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mToastDuration:J

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mType:I

    .line 44
    return-void
.end method

.method public setViewIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/edgelighting/EdgeToastInfo;->mViewIcon:Landroid/view/View;

    .line 28
    return-void
.end method
