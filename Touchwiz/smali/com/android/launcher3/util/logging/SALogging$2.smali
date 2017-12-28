.class Lcom/android/launcher3/util/logging/SALogging$2;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f09016b

    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f09016c

    .line 239
    const-string v5, ""

    .line 240
    .local v5, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 241
    .local v2, "screenID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 242
    .local v0, "eventID":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 243
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    .line 244
    .local v4, "stageMode":I
    if-ne v4, v9, :cond_6

    .line 245
    const v6, 0x7f0901bf

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_4

    .line 247
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$300(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 248
    sget-object v6, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 249
    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 287
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 290
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v6, v2, v0, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_2
    return-void

    .line 252
    :cond_3
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v6, :cond_5

    .line 256
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 258
    :cond_5
    const v6, 0x7f09016d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_6
    if-ne v4, v10, :cond_8

    .line 261
    const v6, 0x7f0901b1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    .line 263
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$300(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 264
    sget-object v6, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 265
    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 266
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_7
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_8
    const/4 v6, 0x5

    if-ne v4, v6, :cond_0

    .line 272
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$300(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 273
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 274
    .local v3, "secondTopStage":I
    if-ne v3, v9, :cond_a

    .line 275
    const v6, 0x7f0901b7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_9
    :goto_1
    sget-object v6, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 280
    invoke-static {v6}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 281
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_a
    if-ne v3, v10, :cond_9

    .line 277
    const v6, 0x7f0901ab

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 283
    :cond_b
    const v6, 0x7f090139

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
