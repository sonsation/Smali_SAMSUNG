.class Lcom/android/launcher3/gamehome/GameHomeManager$3;
.super Landroid/database/ContentObserver;
.source "GameHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/gamehome/GameHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/gamehome/GameHomeManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$3;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 310
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game home setting provider changed : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager$3;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    .line 312
    return-void
.end method
