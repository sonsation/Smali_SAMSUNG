.class public Lcom/android/launcher3/util/BlurRunnable;
.super Ljava/lang/Object;
.source "BlurRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAmount:F

.field private final mContext:Landroid/content/Context;

.field private final mDest:Landroid/view/Window;

.field private final mDuration:J

.field private final mShow:Z


# direct methods
.method public constructor <init>(ZLandroid/view/Window;FJLandroid/content/Context;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "dest"    # Landroid/view/Window;
    .param p3, "amount"    # F
    .param p4, "duration"    # J
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/android/launcher3/util/BlurRunnable;->mShow:Z

    .line 33
    iput-object p2, p0, Lcom/android/launcher3/util/BlurRunnable;->mDest:Landroid/view/Window;

    .line 34
    iput p3, p0, Lcom/android/launcher3/util/BlurRunnable;->mAmount:F

    .line 35
    iput-wide p4, p0, Lcom/android/launcher3/util/BlurRunnable;->mDuration:J

    .line 36
    iput-object p6, p0, Lcom/android/launcher3/util/BlurRunnable;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/BlurRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/launcher3/util/DvfsUtil;

    iget-object v1, p0, Lcom/android/launcher3/util/BlurRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    .line 43
    iget-boolean v0, p0, Lcom/android/launcher3/util/BlurRunnable;->mShow:Z

    iget-object v1, p0, Lcom/android/launcher3/util/BlurRunnable;->mDest:Landroid/view/Window;

    iget v2, p0, Lcom/android/launcher3/util/BlurRunnable;->mAmount:F

    iget-wide v4, p0, Lcom/android/launcher3/util/BlurRunnable;->mDuration:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 45
    :cond_0
    return-void
.end method
