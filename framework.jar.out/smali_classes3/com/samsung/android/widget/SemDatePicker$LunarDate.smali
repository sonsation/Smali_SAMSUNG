.class public Lcom/samsung/android/widget/SemDatePicker$LunarDate;
.super Ljava/lang/Object;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarDate"
.end annotation


# instance fields
.field public day:I

.field public isLeapMonth:Z

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2436
    const/16 v0, 0x76c

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2437
    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2438
    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2435
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeap"    # Z

    .prologue
    .line 2442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2443
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2444
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2445
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2446
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2442
    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeap"    # Z

    .prologue
    .line 2450
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2451
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2452
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2453
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2449
    return-void
.end method
