.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
.super Ljava/lang/Object;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionResult"
.end annotation


# instance fields
.field exactMatch:Z

.field position:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 711
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "exact"    # Z

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 705
    iput-boolean p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 706
    return-void
.end method
