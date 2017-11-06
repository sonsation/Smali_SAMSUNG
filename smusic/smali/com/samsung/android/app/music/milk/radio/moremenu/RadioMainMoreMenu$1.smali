.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;
.super Ljava/lang/Object;
.source "RadioMainMoreMenu.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionBtn()V
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
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const v4, 0x7f0d01d1

    const/4 v3, 0x1

    .line 155
    sub-int v1, p4, p2

    .line 156
    .local v1, "width":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 159
    .local v0, "buttonSizeOn4":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 162
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setHorizontalOffset(I)V

    .line 164
    const-string v2, "RadioMainOptionMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLayoutChange : width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " buttonSizeOn4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->isShowingSpinnerListPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->showSpinnerListPopup(Z)V

    .line 173
    :cond_0
    return-void
.end method
