.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;
.super Ljava/lang/Object;
.source "RadioMainCreateMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->onWorkerFinished(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$600(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$502(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;Z)Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .line 226
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5$1;->this$1:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 229
    :cond_1
    return-void
.end method
