.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;
.super Ljava/lang/Object;
.source "RadioMainLyricMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return v4

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$002(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;J)J

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 90
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;Z)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 100
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$400()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 102
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->launchLyric()V

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
