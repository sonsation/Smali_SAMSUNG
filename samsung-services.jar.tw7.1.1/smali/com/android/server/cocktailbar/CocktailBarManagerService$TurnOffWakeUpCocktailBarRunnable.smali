.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
.super Ljava/lang/Object;
.source "CocktailBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TurnOffWakeUpCocktailBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get0(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    .line 160
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 161
    .local v0, "mPowerManagerInternal":Landroid/os/PowerManagerInternal;
    if-eqz v0, :cond_0

    .line 162
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    .line 158
    :cond_0
    return-void
.end method
