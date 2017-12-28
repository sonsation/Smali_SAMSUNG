.class Lcom/android/launcher3/util/logging/SALogging$35;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertGesturePointOnTrayChange(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$end:I

.field final synthetic val$level:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$35;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput p2, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$start:I

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$end:I

    iput p4, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1580
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1581
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$start:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "detail":Ljava/lang/String;
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$35;->val$level:I

    if-nez v3, :cond_0

    .line 1584
    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1588
    .local v1, "eventId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const v4, 0x7f0901bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    return-void

    .line 1586
    .end local v1    # "eventId":Ljava/lang/String;
    :cond_0
    const v3, 0x7f09014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "eventId":Ljava/lang/String;
    goto :goto_0
.end method
