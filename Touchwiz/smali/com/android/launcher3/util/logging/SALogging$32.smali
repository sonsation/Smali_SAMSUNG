.class Lcom/android/launcher3/util/logging/SALogging$32;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$activity:Lcom/android/launcher3/Launcher;

.field final synthetic val$option:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v14, 0x7f090167

    const v13, 0x7f090166

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1488
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    if-nez v7, :cond_1

    .line 1489
    const-string v7, "Launcher.SALogging"

    const-string v8, "mQOInfo object is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1493
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    iget v8, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1494
    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1493
    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->getStringByLocale(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, "optionName":Ljava/lang/String;
    iget v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$option:I

    const v8, 0x7f0900a8

    if-ne v7, v8, :cond_2

    .line 1496
    const-string v2, "Add to secure folder"

    .line 1498
    :cond_2
    move-object v0, v2

    .line 1499
    .local v0, "detail":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v6

    .line 1500
    .local v6, "stageMode":I
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    .line 1501
    .local v5, "secondTopStageMode":I
    const/4 v4, 0x0

    .line 1502
    .local v4, "screenID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1503
    .local v1, "eventID":Ljava/lang/String;
    if-ne v6, v10, :cond_5

    .line 1504
    const v7, 0x7f0901c0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1514
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    iget v7, v7, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mItemType:I

    sparse-switch v7, :sswitch_data_0

    .line 1537
    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 1540
    if-eqz v0, :cond_b

    .line 1541
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :cond_5
    if-ne v6, v11, :cond_6

    .line 1506
    const v7, 0x7f0901b3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1507
    :cond_6
    if-ne v6, v12, :cond_3

    .line 1508
    if-ne v5, v10, :cond_7

    .line 1509
    const v7, 0x7f0901b8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1510
    :cond_7
    if-ne v5, v11, :cond_3

    .line 1511
    const v7, 0x7f0901ac

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1516
    :sswitch_0
    if-ne v6, v10, :cond_8

    .line 1517
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1518
    :cond_8
    if-ne v6, v11, :cond_9

    .line 1519
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1520
    :cond_9
    if-ne v6, v12, :cond_4

    .line 1521
    const v7, 0x7f09013c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1525
    :sswitch_1
    if-ne v6, v10, :cond_a

    .line 1526
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1527
    :cond_a
    if-ne v6, v11, :cond_4

    .line 1528
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1532
    :sswitch_2
    if-ne v6, v10, :cond_4

    .line 1533
    const v7, 0x7f090168

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1543
    :cond_b
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$32;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1514
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
