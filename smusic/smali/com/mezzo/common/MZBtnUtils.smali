.class public Lcom/mezzo/common/MZBtnUtils;
.super Ljava/lang/Object;
.source "MZBtnUtils.java"


# static fields
.field static handler:Landroid/os/Handler;

.field private static isDelayClick:Z

.field static runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mezzo/common/MZBtnUtils;->isDelayClick:Z

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mezzo/common/MZBtnUtils;->handler:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/mezzo/common/MZBtnUtils$1;

    invoke-direct {v0}, Lcom/mezzo/common/MZBtnUtils$1;-><init>()V

    sput-object v0, Lcom/mezzo/common/MZBtnUtils;->runnable:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsDelayClick()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/mezzo/common/MZBtnUtils;->isDelayClick:Z

    return v0
.end method

.method public static setDelayClick()V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/mezzo/common/MZBtnUtils;->getIsDelayClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Z)V

    .line 43
    sget-object v0, Lcom/mezzo/common/MZBtnUtils;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/mezzo/common/MZBtnUtils;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_0
    return-void
.end method

.method public static setDelayClick(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "fun":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/mezzo/common/MZBtnUtils;->getIsDelayClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick()V

    .line 30
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDelayClick(Z)V
    .locals 0
    .param p0, "isDelayClick"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/mezzo/common/MZBtnUtils;->isDelayClick:Z

    .line 38
    return-void
.end method
