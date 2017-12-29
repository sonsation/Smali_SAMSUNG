.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 2669
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2673
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-get9(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2674
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-get4(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2675
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    const-string v2, "CocktailBarManagerService"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-set1(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 2677
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-get9(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-get1(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2672
    return-void
.end method
