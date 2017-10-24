.class public final Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field private static sService:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 301
    return-void
.end method

.method public static getService()Lcom/android/server/desktopmode/DesktopModeService;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 316
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 312
    const-string/jumbo v0, "desktopmode"

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    return-void
.end method

.method public onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 324
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap4(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 323
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 338
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 337
    :cond_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 331
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 330
    :cond_0
    return-void
.end method
