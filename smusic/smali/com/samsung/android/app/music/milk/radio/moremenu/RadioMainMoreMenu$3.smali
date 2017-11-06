.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;
.super Ljava/lang/Object;
.source "RadioMainMoreMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$500(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$600(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    goto :goto_0
.end method
