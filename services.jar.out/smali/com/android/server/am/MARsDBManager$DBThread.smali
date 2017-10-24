.class Lcom/android/server/am/MARsDBManager$DBThread;
.super Ljava/lang/Thread;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$DBThread;->this$0:Lcom/android/server/am/MARsDBManager;

    .line 317
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 316
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 321
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$DBThread;->this$0:Lcom/android/server/am/MARsDBManager;

    new-instance v1, Lcom/android/server/am/MARsDBManager$DBHandler;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager$DBThread;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;-><init>(Lcom/android/server/am/MARsDBManager;)V

    invoke-static {v0, v1}, Lcom/android/server/am/MARsDBManager;->-set0(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;

    .line 322
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 319
    return-void
.end method
