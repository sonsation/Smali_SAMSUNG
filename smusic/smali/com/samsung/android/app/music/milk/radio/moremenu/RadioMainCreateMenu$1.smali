.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;
.super Ljava/lang/Object;
.source "RadioMainCreateMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    goto :goto_0
.end method
