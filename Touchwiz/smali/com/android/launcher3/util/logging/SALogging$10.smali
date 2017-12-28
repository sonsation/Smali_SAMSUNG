.class Lcom/android/launcher3/util/logging/SALogging$10;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V
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
    .line 486
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$10;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$isMultiSelect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f090101

    .line 489
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$launcher:Lcom/android/launcher3/Launcher;

    if-nez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 492
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    .line 493
    .local v1, "stageMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 494
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$isMultiSelect:Z

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 502
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->val$isMultiSelect:Z

    if-eqz v2, :cond_4

    .line 503
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$10;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f0901b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
