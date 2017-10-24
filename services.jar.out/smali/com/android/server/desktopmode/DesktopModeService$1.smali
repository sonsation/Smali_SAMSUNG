.class Lcom/android/server/desktopmode/DesktopModeService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->pid:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->uid:I

    if-ne p2, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->pid:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->uid:I

    if-ne p2, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 166
    return-void
.end method
