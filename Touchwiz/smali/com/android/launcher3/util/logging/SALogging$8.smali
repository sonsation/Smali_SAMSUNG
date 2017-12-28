.class Lcom/android/launcher3/util/logging/SALogging$8;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isMultiSelect:Z

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f09018f

    .line 435
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 436
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    .line 437
    .local v1, "stageMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 438
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09012f

    .line 443
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 446
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    if-eqz v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09011b

    .line 451
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
