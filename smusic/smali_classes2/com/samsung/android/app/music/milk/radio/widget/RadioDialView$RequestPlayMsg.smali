.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;
.super Ljava/lang/Object;
.source "RadioDialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestPlayMsg"
.end annotation


# instance fields
.field isMyStation:Z

.field play:Z

.field position:I

.field stationId:Ljava/lang/String;

.field stationType:Ljava/lang/String;

.field trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "stationType"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "isMyStation"    # Z
    .param p6, "play"    # Z

    .prologue
    .line 2581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2582
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->position:I

    .line 2583
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->stationId:Ljava/lang/String;

    .line 2584
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->stationType:Ljava/lang/String;

    .line 2585
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->trackId:Ljava/lang/String;

    .line 2586
    iput-boolean p5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->isMyStation:Z

    .line 2587
    iput-boolean p6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->play:Z

    .line 2588
    return-void
.end method
