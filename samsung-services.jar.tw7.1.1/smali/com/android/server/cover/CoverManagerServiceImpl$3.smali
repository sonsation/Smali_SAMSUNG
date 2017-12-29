.class Lcom/android/server/cover/CoverManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverManagerServiceImpl;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 131
    return-void
.end method
