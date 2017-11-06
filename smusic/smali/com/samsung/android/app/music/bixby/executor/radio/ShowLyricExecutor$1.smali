.class Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor$1;
.super Ljava/lang/Object;
.source "ShowLyricExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->executeCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinished()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;)V

    .line 66
    return-void
.end method
