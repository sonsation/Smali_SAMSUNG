.class Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;
.super Ljava/lang/Object;
.source "AppUpdateDialog.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "AppUpdateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismissed : FragmentManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->access$000(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->access$000(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AppUpdateDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onDisplayed()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
