.class Lcom/android/launcher3/util/logging/SALogging$7;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f090177

    const v10, 0x7f090176

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 385
    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 386
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v5

    .line 387
    .local v5, "stageMode":I
    const/4 v3, 0x0

    .line 388
    .local v3, "screenID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 389
    .local v0, "eventID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 390
    .local v1, "itemType":I
    const-string v6, ""

    .line 391
    .local v6, "title":Ljava/lang/String;
    if-ne v5, v8, :cond_4

    .line 392
    const v7, 0x7f0901bf

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    .line 394
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    const/4 v1, 0x1

    .line 423
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    new-instance v8, Lcom/android/launcher3/util/logging/SALogging$QOAction;

    invoke-direct {v8, v6, v1}, Lcom/android/launcher3/util/logging/SALogging$QOAction;-><init>(Ljava/lang/String;I)V

    iput-object v8, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    .line 424
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 425
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v3, v0, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    return-void

    .line 396
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_3

    .line 397
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    const/16 v1, 0x10

    goto :goto_0

    .line 399
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 400
    const v7, 0x7f090178

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    const/16 v1, 0x11

    goto :goto_0

    .line 403
    :cond_4
    if-ne v5, v9, :cond_6

    .line 404
    const v7, 0x7f0901b1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 405
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_5

    .line 406
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    const/4 v1, 0x1

    goto :goto_0

    .line 408
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_0

    .line 409
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    const/16 v1, 0x10

    goto :goto_0

    .line 412
    :cond_6
    const/4 v7, 0x5

    if-ne v5, v7, :cond_0

    .line 413
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    .line 414
    .local v4, "secondTopStage":I
    const/4 v1, 0x1

    .line 415
    if-ne v4, v8, :cond_8

    .line 416
    const v7, 0x7f0901b7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    :cond_7
    :goto_1
    const v7, 0x7f09013a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_8
    if-ne v4, v9, :cond_7

    .line 418
    const v7, 0x7f0901ab

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
