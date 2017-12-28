.class Lcom/android/launcher3/util/event/Partition;
.super Ljava/lang/Object;
.source "ScreenDivision.java"


# instance fields
.field mEndIndex:I

.field mRect:Landroid/graphics/Rect;

.field mStartIndex:I


# direct methods
.method constructor <init>(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/android/launcher3/util/event/Partition;->mStartIndex:I

    .line 197
    iput p2, p0, Lcom/android/launcher3/util/event/Partition;->mEndIndex:I

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/Partition;->mRect:Landroid/graphics/Rect;

    .line 199
    return-void
.end method
