.class Lcom/android/launcher3/util/logging/SALogging$26;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$detail:Ljava/lang/String;

.field final synthetic val$statusID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$26;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$26;->val$statusID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$26;->val$detail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1361
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$26;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$26;->val$statusID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, "changedStatusID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$26;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$26;->val$detail:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1600(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "changedDetail":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.launcher.prefs.sa"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1364
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1365
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1366
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1367
    return-void
.end method
