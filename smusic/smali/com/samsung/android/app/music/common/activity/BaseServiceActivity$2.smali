.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$2;
.super Ljava/lang/Object;
.source "BaseServiceActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 258
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnMultiWindowModeChangedListener onMultiWindowModeChanged isInMultiWindowMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->access$100(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)Lcom/samsung/android/app/music/common/view/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->onConfigurationChanged()V

    .line 262
    return-void
.end method
