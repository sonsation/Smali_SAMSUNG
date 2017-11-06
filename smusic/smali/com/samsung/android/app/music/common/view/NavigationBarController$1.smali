.class Lcom/samsung/android/app/music/common/view/NavigationBarController$1;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/view/NavigationBarController;->onStartCalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/NavigationBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/view/NavigationBarController;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedSettings(ZZ)V
    .locals 3
    .param p1, "settingEnabled"    # Z
    .param p2, "pinEnabled"    # Z

    .prologue
    .line 45
    const-string v0, "SMUSIC-Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange settingEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pinEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$000(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$000(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;-><init>(Lcom/samsung/android/app/music/common/view/NavigationBarController$1;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
