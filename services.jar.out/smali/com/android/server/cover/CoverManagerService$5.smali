.class Lcom/android/server/cover/CoverManagerService$5;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 205
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string/jumbo v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DesktopModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "DesktopModeChanged endabled, send open cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/server/cover/CoverManagerService;->-wrap0(Lcom/android/server/cover/CoverManagerService;ZZ)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get4(Lcom/android/server/cover/CoverManagerService;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 198
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "DesktopModeChanged, update cover state after disable dekstop mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get4(Lcom/android/server/cover/CoverManagerService;)Z

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/android/server/cover/CoverManagerService;->-wrap0(Lcom/android/server/cover/CoverManagerService;ZZ)V

    goto :goto_0
.end method
