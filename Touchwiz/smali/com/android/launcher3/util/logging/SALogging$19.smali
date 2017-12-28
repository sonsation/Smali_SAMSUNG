.class Lcom/android/launcher3/util/logging/SALogging$19;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$backPressed:Z

.field final synthetic val$homePressed:Z

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$backPressed:Z

    iput-boolean p4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$homePressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f09018a

    const v7, 0x7f09013e

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1084
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1085
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 1086
    .local v3, "stageMode":I
    iget-boolean v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$backPressed:Z

    if-eqz v4, :cond_1

    const-string v0, "1"

    .line 1087
    .local v0, "detail":Ljava/lang/String;
    :goto_0
    if-ne v3, v5, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901c1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1089
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1088
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_0
    :goto_1
    return-void

    .line 1086
    .end local v0    # "detail":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$homePressed:Z

    if-eqz v4, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v0, "3"

    goto :goto_0

    .line 1090
    .restart local v0    # "detail":Ljava/lang/String;
    :cond_3
    if-ne v3, v6, :cond_4

    .line 1091
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901b4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1092
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1091
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1093
    :cond_4
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1094
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    .line 1095
    .local v2, "secondStageMode":I
    if-ne v2, v6, :cond_5

    .line 1096
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901ad

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1097
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1096
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1098
    :cond_5
    if-ne v2, v5, :cond_0

    .line 1099
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901b9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1100
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1099
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
