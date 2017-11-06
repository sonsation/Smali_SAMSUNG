.class Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;
.super Ljava/lang/Object;
.source "RootingDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->performTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;->this$0:Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    .line 44
    return-void
.end method
