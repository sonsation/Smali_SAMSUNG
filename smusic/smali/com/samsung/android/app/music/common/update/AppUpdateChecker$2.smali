.class Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;
.super Ljava/lang/Object;
.source "AppUpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->showAppUpdatePopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$300(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;->val$force:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    .line 130
    :cond_0
    return-void
.end method
