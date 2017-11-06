.class Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;
.super Ljava/lang/Object;
.source "InclusiveDelayButton.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->access$002(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;Z)Z

    .line 30
    return-void
.end method
