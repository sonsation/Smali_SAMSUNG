.class Lcom/android/launcher3/util/logging/SALogging$18;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->updatePageLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$18;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1063
    sget-object v1, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1064
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$18;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v2, 0x7f0901df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$18;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1066
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$18;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v2, 0x7f0901db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$18;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    .line 1067
    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v3

    .line 1066
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1069
    return-void
.end method
