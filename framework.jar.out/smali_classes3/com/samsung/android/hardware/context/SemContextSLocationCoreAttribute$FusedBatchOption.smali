.class Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;
.super Ljava/lang/Object;
.source "SemContextSLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FusedBatchOption"
.end annotation


# instance fields
.field distance_thrs:F

.field flags:I

.field max_power:D

.field period:J

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

.field user_info:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;JIIDF)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;
    .param p2, "period"    # J
    .param p4, "user_info"    # I
    .param p5, "flags"    # I
    .param p6, "max_power"    # D
    .param p8, "distance_thrs"    # F

    .prologue
    .line 559
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->this$0:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-wide p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->period:J

    .line 561
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->user_info:I

    .line 562
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->flags:I

    .line 563
    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->max_power:D

    .line 564
    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    .line 559
    return-void
.end method


# virtual methods
.method isValid()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 568
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 569
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.period is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v4

    .line 572
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->user_info:I

    if-gez v0, :cond_1

    .line 573
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.user_info is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v4

    .line 576
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->flags:I

    if-gez v0, :cond_2

    .line 577
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.flags is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v4

    .line 580
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->max_power:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 581
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.max_power is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v4

    .line 584
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 585
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.distance_thrs is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return v4

    .line 588
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
