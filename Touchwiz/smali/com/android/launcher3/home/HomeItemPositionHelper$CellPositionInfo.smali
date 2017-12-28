.class Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
.super Ljava/lang/Object;
.source "HomeItemPositionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeItemPositionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellPositionInfo"
.end annotation


# instance fields
.field screenId:J

.field spanX:I

.field spanY:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(JIIII)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    .line 124
    iput v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    .line 127
    iput-wide p1, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->screenId:J

    .line 128
    iput p3, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    .line 129
    iput p4, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    .line 130
    iput p5, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    .line 131
    iput p6, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    .line 132
    return-void
.end method
