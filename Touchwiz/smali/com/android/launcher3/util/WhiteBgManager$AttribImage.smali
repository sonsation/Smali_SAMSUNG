.class Lcom/android/launcher3/util/WhiteBgManager$AttribImage;
.super Ljava/lang/Object;
.source "WhiteBgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/WhiteBgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttribImage"
.end annotation


# static fields
.field static sColorFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setup(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteBg"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    const v0, 0x7f0e0012

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    goto :goto_0
.end method
