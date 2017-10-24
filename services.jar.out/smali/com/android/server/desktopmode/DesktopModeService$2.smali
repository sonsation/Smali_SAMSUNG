.class Lcom/android/server/desktopmode/DesktopModeService$2;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 184
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 186
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 198
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 192
    return-void
.end method
