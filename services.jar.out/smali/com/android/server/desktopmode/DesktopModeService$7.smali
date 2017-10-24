.class Lcom/android/server/desktopmode/DesktopModeService$7;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V
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
    .line 741
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    .line 743
    return-void
.end method
