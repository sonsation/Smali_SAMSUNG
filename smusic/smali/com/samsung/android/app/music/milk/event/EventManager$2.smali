.class Lcom/samsung/android/app/music/milk/event/EventManager$2;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventManager;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/EventManager;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->access$100(Lcom/samsung/android/app/music/milk/event/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventManager;->access$102(Lcom/samsung/android/app/music/milk/event/EventManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->access$100(Lcom/samsung/android/app/music/milk/event/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/EventManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
