.class Lcom/android/launcher3/util/logging/SALogging$25;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$statusID:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$25;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$statusID:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1347
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$25;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$statusID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "changedStatusID":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs.sa"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1349
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1350
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$value:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1351
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1352
    return-void
.end method
