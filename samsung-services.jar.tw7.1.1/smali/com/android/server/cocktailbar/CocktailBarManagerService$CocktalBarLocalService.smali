.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktalBarLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public getCocktaiBarWakeUpStateFromWindowManager()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap0(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Z

    move-result v0

    return v0
.end method

.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap1(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V

    .line 170
    return-void
.end method

.method public updateCocktailBarStateFromWindowManager(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap2(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V

    .line 185
    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap3(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    .line 180
    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap4(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V

    .line 175
    return-void
.end method
